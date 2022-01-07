; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_dmae_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_dmae_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_dmae_chan = type { i32 }
%struct.sh_dmae_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TEND = common dso_local global i32 0, align 4
@CHCR_DE = common dso_local global i32 0, align 4
@CHCR_TE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_dmae_chan*)* @dmae_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmae_start(%struct.sh_dmae_chan* %0) #0 {
  %2 = alloca %struct.sh_dmae_chan*, align 8
  %3 = alloca %struct.sh_dmae_device*, align 8
  %4 = alloca i32, align 4
  store %struct.sh_dmae_chan* %0, %struct.sh_dmae_chan** %2, align 8
  %5 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %2, align 8
  %6 = call %struct.sh_dmae_device* @to_sh_dev(%struct.sh_dmae_chan* %5)
  store %struct.sh_dmae_device* %6, %struct.sh_dmae_device** %3, align 8
  %7 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %2, align 8
  %8 = call i32 @chcr_read(%struct.sh_dmae_chan* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %10 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %2, align 8
  %17 = load i32, i32* @TEND, align 4
  %18 = call i32 @sh_dmae_writel(%struct.sh_dmae_chan* %16, i32 -1, i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* @CHCR_DE, align 4
  %21 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %22 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %20, %23
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @CHCR_TE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @chcr_write(%struct.sh_dmae_chan* %27, i32 %31)
  ret void
}

declare dso_local %struct.sh_dmae_device* @to_sh_dev(%struct.sh_dmae_chan*) #1

declare dso_local i32 @chcr_read(%struct.sh_dmae_chan*) #1

declare dso_local i32 @sh_dmae_writel(%struct.sh_dmae_chan*, i32, i32) #1

declare dso_local i32 @chcr_write(%struct.sh_dmae_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
