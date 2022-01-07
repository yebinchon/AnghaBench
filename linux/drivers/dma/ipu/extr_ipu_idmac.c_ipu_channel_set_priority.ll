; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_ipu_channel_set_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_ipu_channel_set_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu = type { i32 }

@IDMAC_CHA_PRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu*, i32, i32)* @ipu_channel_set_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_channel_set_priority(%struct.ipu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ipu* %0, %struct.ipu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ipu*, %struct.ipu** %4, align 8
  %9 = load i32, i32* @IDMAC_CHA_PRI, align 4
  %10 = call i64 @idmac_read_icreg(%struct.ipu* %8, i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 1, %15
  %17 = load i64, i64* %7, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %7, align 8
  br label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = shl i64 1, %21
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %7, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %19, %13
  %27 = load %struct.ipu*, %struct.ipu** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @IDMAC_CHA_PRI, align 4
  %30 = call i32 @idmac_write_icreg(%struct.ipu* %27, i64 %28, i32 %29)
  %31 = load %struct.ipu*, %struct.ipu** %4, align 8
  %32 = call i32 @dump_idmac_reg(%struct.ipu* %31)
  ret void
}

declare dso_local i64 @idmac_read_icreg(%struct.ipu*, i32) #1

declare dso_local i32 @idmac_write_icreg(%struct.ipu*, i64, i32) #1

declare dso_local i32 @dump_idmac_reg(%struct.ipu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
