; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_sw.c_stv0900_set_max_symbol_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_sw.c_stv0900_set_max_symbol_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32 }

@SFRUP1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0900_internal*, i32, i32, i32)* @stv0900_set_max_symbol_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0900_set_max_symbol_rate(%struct.stv0900_internal* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stv0900_internal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sdiv i32 %10, 100
  %12 = mul nsw i32 105, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 60000000
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 12
  %20 = load i32, i32* %9, align 4
  %21 = sdiv i32 %20, %19
  store i32 %21, i32* %9, align 4
  br label %40

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 6000000
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 %26, 6
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 10
  %30 = load i32, i32* %9, align 4
  %31 = sdiv i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %39

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 9
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 7
  %37 = load i32, i32* %9, align 4
  %38 = sdiv i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %32, %25
  br label %40

40:                                               ; preds = %39, %15
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 32767
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %45 = load i64, i64* @SFRUP1, align 8
  %46 = load i32, i32* %9, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 127
  %49 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %44, i64 %45, i32 %48)
  %50 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %51 = load i64, i64* @SFRUP1, align 8
  %52 = add nsw i64 %51, 1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 255
  %55 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %50, i64 %52, i32 %54)
  br label %64

56:                                               ; preds = %40
  %57 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %58 = load i64, i64* @SFRUP1, align 8
  %59 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %57, i64 %58, i32 127)
  %60 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %61 = load i64, i64* @SFRUP1, align 8
  %62 = add nsw i64 %61, 1
  %63 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %60, i64 %62, i32 255)
  br label %64

64:                                               ; preds = %56, %43
  ret void
}

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
