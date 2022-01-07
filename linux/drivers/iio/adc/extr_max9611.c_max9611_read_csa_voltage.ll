; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max9611.c_max9611_read_csa_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max9611.c_max9611_read_csa_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max9611_dev = type { i32 }

@CONF_SENSE_1x = common dso_local global i32 0, align 4
@CONF_SENSE_4x = common dso_local global i32 0, align 4
@CONF_SENSE_8x = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max9611_dev*, i64*, i32*)* @max9611_read_csa_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9611_read_csa_voltage(%struct.max9611_dev* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max9611_dev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.max9611_dev* %0, %struct.max9611_dev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %12 = load i32, i32* @CONF_SENSE_1x, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @CONF_SENSE_4x, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @CONF_SENSE_8x, align 4
  store i32 %16, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %45, %3
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load %struct.max9611_dev*, %struct.max9611_dev** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i64*, i64** %6, align 8
  %29 = call i32 @max9611_read_single(%struct.max9611_dev* %23, i32 %27, i64* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %51

34:                                               ; preds = %22
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %51

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %17

48:                                               ; preds = %17
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %38, %32
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @max9611_read_single(%struct.max9611_dev*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
