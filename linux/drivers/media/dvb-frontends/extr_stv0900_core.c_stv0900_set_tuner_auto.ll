; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_core.c_stv0900_set_tuner_auto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_core.c_stv0900_set_tuner_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32 }

@TUN_RFFREQ2 = common dso_local global i32 0, align 4
@TUN_RFFREQ1 = common dso_local global i32 0, align 4
@TUN_RFFREQ0 = common dso_local global i32 0, align 4
@TUN_BW = common dso_local global i32 0, align 4
@TNRLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stv0900_set_tuner_auto(%struct.stv0900_internal* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stv0900_internal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = mul nsw i32 %10, 64
  %12 = sdiv i32 %11, 1000
  store i32 %12, i32* %9, align 4
  %13 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %14 = load i32, i32* @TUN_RFFREQ2, align 4
  %15 = load i32, i32* %9, align 4
  %16 = ashr i32 %15, 10
  %17 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %13, i32 %14, i32 %16)
  %18 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %19 = load i32, i32* @TUN_RFFREQ1, align 4
  %20 = load i32, i32* %9, align 4
  %21 = ashr i32 %20, 2
  %22 = and i32 %21, 255
  %23 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %18, i32 %19, i32 %22)
  %24 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %25 = load i32, i32* @TUN_RFFREQ0, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 3
  %28 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %24, i32 %25, i32 %27)
  %29 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %30 = load i32, i32* @TUN_BW, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sdiv i32 %31, 2000000
  %33 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %29, i32 %30, i32 %32)
  %34 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %35 = load i32, i32* @TNRLD, align 4
  %36 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %34, i32 %35, i32 1)
  ret void
}

declare dso_local i32 @stv0900_write_bits(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
