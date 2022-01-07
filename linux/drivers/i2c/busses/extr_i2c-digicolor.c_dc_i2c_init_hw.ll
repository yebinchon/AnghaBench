; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-digicolor.c_dc_i2c_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-digicolor.c_dc_i2c_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_i2c = type { i32, i64, i32, i32 }

@II_CONTROL_LOCAL_RESET = common dso_local global i32 0, align 4
@II_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"can't set bus speed of %u Hz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@II_CLOCKTIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_i2c*)* @dc_i2c_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_i2c_init_hw(%struct.dc_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_i2c*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dc_i2c* %0, %struct.dc_i2c** %3, align 8
  %6 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @clk_get_rate(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* @II_CONTROL_LOCAL_RESET, align 4
  %11 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %12 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @II_CONTROL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writeb_relaxed(i32 %10, i64 %15)
  %17 = call i32 @udelay(i32 100)
  %18 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %19 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @II_CONTROL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writeb_relaxed(i32 0, i64 %22)
  %24 = call i32 @udelay(i32 100)
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %27 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 64, %28
  %30 = call i32 @DIV_ROUND_UP(i64 %25, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ult i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = icmp ugt i32 %34, 255
  br i1 %35, label %36, label %46

36:                                               ; preds = %33, %1
  %37 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %38 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %41 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %55

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = sub i32 %47, 1
  %49 = load %struct.dc_i2c*, %struct.dc_i2c** %3, align 8
  %50 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @II_CLOCKTIME, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writeb_relaxed(i32 %48, i64 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %46, %36
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
