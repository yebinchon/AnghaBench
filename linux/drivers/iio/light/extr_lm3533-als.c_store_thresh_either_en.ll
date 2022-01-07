; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_store_thresh_either_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_store_thresh_either_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.lm3533_als = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LM3533_ALS_FLAG_INT_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_thresh_either_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_thresh_either_en(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.lm3533_als*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %16)
  store %struct.iio_dev* %17, %struct.iio_dev** %10, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %19 = call %struct.lm3533_als* @iio_priv(%struct.iio_dev* %18)
  store %struct.lm3533_als* %19, %struct.lm3533_als** %11, align 8
  %20 = load %struct.lm3533_als*, %struct.lm3533_als** %11, align 8
  %21 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %87

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @kstrtoul(i8* %28, i32 0, i64* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %87

34:                                               ; preds = %27
  %35 = load i32, i32* @LM3533_ALS_FLAG_INT_ENABLED, align 4
  %36 = load %struct.lm3533_als*, %struct.lm3533_als** %11, align 8
  %37 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %36, i32 0, i32 0
  %38 = call i32 @test_bit(i32 %35, i32* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %41
  %45 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %46 = call i32 @lm3533_als_get_zone(%struct.iio_dev* %45, i32* %14)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %5, align 4
  br label %87

51:                                               ; preds = %44
  %52 = load %struct.lm3533_als*, %struct.lm3533_als** %11, align 8
  %53 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %52, i32 0, i32 1
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @atomic_set(i32* %53, i32 %54)
  %56 = load i32, i32* @LM3533_ALS_FLAG_INT_ENABLED, align 4
  %57 = load %struct.lm3533_als*, %struct.lm3533_als** %11, align 8
  %58 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %57, i32 0, i32 0
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %51, %41, %34
  %61 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @lm3533_als_set_int_mode(%struct.iio_dev* %61, i64 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @LM3533_ALS_FLAG_INT_ENABLED, align 4
  %71 = load %struct.lm3533_als*, %struct.lm3533_als** %11, align 8
  %72 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %71, i32 0, i32 0
  %73 = call i32 @clear_bit(i32 %70, i32* %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %5, align 4
  br label %87

76:                                               ; preds = %60
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @LM3533_ALS_FLAG_INT_ENABLED, align 4
  %81 = load %struct.lm3533_als*, %struct.lm3533_als** %11, align 8
  %82 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %81, i32 0, i32 0
  %83 = call i32 @clear_bit(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %79, %76
  %85 = load i64, i64* %9, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %74, %49, %31, %24
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.lm3533_als* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @lm3533_als_get_zone(%struct.iio_dev*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lm3533_als_set_int_mode(%struct.iio_dev*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
