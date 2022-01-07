; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_tp_crc_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_tp_crc_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ms_sensors_tp_crc_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_sensors_tp_crc_valid(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 61440
  %16 = ashr i32 %15, 12
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 4095
  store i32 %25, i32* %23, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %75, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %28, 2
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = urem i32 %32, 2
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = lshr i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  %43 = load i32, i32* %7, align 4
  %44 = xor i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %55

45:                                               ; preds = %31
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = lshr i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 8
  %53 = load i32, i32* %7, align 4
  %54 = xor i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %45, %35
  store i32 8, i32* %6, align 4
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %6, align 4
  %58 = icmp ugt i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 32768
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 %64, 1
  %66 = xor i32 %65, 12288
  store i32 %66, i32* %7, align 4
  br label %70

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = shl i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %63
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %6, align 4
  br label %56

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %26

78:                                               ; preds = %26
  %79 = load i32, i32* %7, align 4
  %80 = ashr i32 %79, 12
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
