; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_set_activity_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_set_activity_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxl372_state = type { i32 }

@adxl372_th_reg_high_addr = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adxl372_state*, i32, i32, i32, i32)* @adxl372_set_activity_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl372_set_activity_threshold(%struct.adxl372_state* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adxl372_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store %struct.adxl372_state* %0, %struct.adxl372_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = udiv i32 %15, 100
  %17 = lshr i32 %16, 3
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %12, align 1
  %19 = load i32, i32* %10, align 4
  %20 = udiv i32 %19, 100
  %21 = shl i32 %20, 5
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, 1
  %24 = or i32 %21, %23
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %24, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %13, align 1
  %28 = load i8*, i8** @adxl372_th_reg_high_addr, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %14, align 1
  %33 = load i8, i8* %12, align 1
  %34 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  store i8 %33, i8* %34, align 1
  %35 = load i8, i8* %13, align 1
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 1
  store i8 %35, i8* %36, align 1
  %37 = load i8, i8* %12, align 1
  %38 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 2
  store i8 %37, i8* %38, align 1
  %39 = load i8, i8* %13, align 1
  %40 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 3
  store i8 %39, i8* %40, align 1
  %41 = load i8, i8* %12, align 1
  %42 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 4
  store i8 %41, i8* %42, align 1
  %43 = load i8, i8* %13, align 1
  %44 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 5
  store i8 %43, i8* %44, align 1
  %45 = load %struct.adxl372_state*, %struct.adxl372_state** %6, align 8
  %46 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8, i8* %14, align 1
  %49 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %50 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %51 = call i32 @ARRAY_SIZE(i8* %50)
  %52 = call i32 @regmap_bulk_write(i32 %47, i8 zeroext %48, i8* %49, i32 %51)
  ret i32 %52
}

declare dso_local i32 @regmap_bulk_write(i32, i8 zeroext, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
