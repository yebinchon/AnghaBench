; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_core.c_stv0900_get_freq_auto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_core.c_stv0900_get_freq_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32 }

@TUN_RFFREQ2 = common dso_local global i32 0, align 4
@TUN_RFFREQ1 = common dso_local global i32 0, align 4
@TUN_RFFREQ0 = common dso_local global i32 0, align 4
@TUN_RFRESTE1 = common dso_local global i32 0, align 4
@TUN_RFRESTE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stv0900_get_freq_auto(%struct.stv0900_internal* %0, i32 %1) #0 {
  %3 = alloca %struct.stv0900_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %8 = load i32, i32* @TUN_RFFREQ2, align 4
  %9 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %7, i32 %8)
  %10 = shl i32 %9, 10
  %11 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %12 = load i32, i32* @TUN_RFFREQ1, align 4
  %13 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %11, i32 %12)
  %14 = shl i32 %13, 2
  %15 = add nsw i32 %10, %14
  %16 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %17 = load i32, i32* @TUN_RFFREQ0, align 4
  %18 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %16, i32 %17)
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 1000
  %22 = sdiv i32 %21, 64
  store i32 %22, i32* %5, align 4
  %23 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %24 = load i32, i32* @TUN_RFRESTE1, align 4
  %25 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %23, i32 %24)
  %26 = ashr i32 %25, 2
  %27 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %28 = load i32, i32* @TUN_RFRESTE0, align 4
  %29 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %27, i32 %28)
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, 1000
  %33 = sdiv i32 %32, 2048
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  ret i32 %36
}

declare dso_local i32 @stv0900_get_bits(%struct.stv0900_internal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
