; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_lm3533_als_get_hysteresis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_lm3533_als_get_hysteresis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.lm3533_als = type { i32 }

@LM3533_ALS_THRESH_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i64*)* @lm3533_als_get_hysteresis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3533_als_get_hysteresis(%struct.iio_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.lm3533_als*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.lm3533_als* @iio_priv(%struct.iio_dev* %12)
  store %struct.lm3533_als* %13, %struct.lm3533_als** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @LM3533_ALS_THRESH_MAX, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %47

20:                                               ; preds = %3
  %21 = load %struct.lm3533_als*, %struct.lm3533_als** %8, align 8
  %22 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @lm3533_als_get_threshold(%struct.iio_dev* %24, i32 %25, i32 0, i64* %9)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %42

30:                                               ; preds = %20
  %31 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @lm3533_als_get_threshold(%struct.iio_dev* %31, i32 %32, i32 1, i64* %10)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %42

37:                                               ; preds = %30
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %36, %29
  %43 = load %struct.lm3533_als*, %struct.lm3533_als** %8, align 8
  %44 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.lm3533_als* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm3533_als_get_threshold(%struct.iio_dev*, i32, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
