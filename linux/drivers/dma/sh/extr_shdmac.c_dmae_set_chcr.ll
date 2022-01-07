; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_dmae_set_chcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_dmae_set_chcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_dmae_chan = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_dmae_chan*, i32)* @dmae_set_chcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmae_set_chcr(%struct.sh_dmae_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_dmae_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.sh_dmae_chan* %0, %struct.sh_dmae_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %7 = call i64 @dmae_is_busy(%struct.sh_dmae_chan* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @calc_xmit_shift(%struct.sh_dmae_chan* %13, i32 %14)
  %16 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %17 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @chcr_write(%struct.sh_dmae_chan* %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %12, %9
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @dmae_is_busy(%struct.sh_dmae_chan*) #1

declare dso_local i32 @calc_xmit_shift(%struct.sh_dmae_chan*, i32) #1

declare dso_local i32 @chcr_write(%struct.sh_dmae_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
