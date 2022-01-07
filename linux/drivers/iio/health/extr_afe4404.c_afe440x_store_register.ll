; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4404.c_afe440x_store_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4404.c_afe440x_store_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.afe4404_data = type { i32* }
%struct.afe440x_attr = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @afe440x_store_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afe440x_store_register(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.afe4404_data*, align 8
  %12 = alloca %struct.afe440x_attr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %17)
  store %struct.iio_dev* %18, %struct.iio_dev** %10, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %20 = call %struct.afe4404_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.afe4404_data* %20, %struct.afe4404_data** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.afe440x_attr* @to_afe440x_attr(%struct.device_attribute* %21)
  store %struct.afe440x_attr* %22, %struct.afe440x_attr** %12, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @iio_str_to_fixpoint(i8* %23, i32 100000, i32* %14, i32* %15)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %5, align 4
  br label %90

29:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %60, %29
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.afe440x_attr*, %struct.afe440x_attr** %12, align 8
  %33 = getelementptr inbounds %struct.afe440x_attr, %struct.afe440x_attr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %30
  %37 = load %struct.afe440x_attr*, %struct.afe440x_attr** %12, align 8
  %38 = getelementptr inbounds %struct.afe440x_attr, %struct.afe440x_attr* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %36
  %48 = load %struct.afe440x_attr*, %struct.afe440x_attr** %12, align 8
  %49 = getelementptr inbounds %struct.afe440x_attr, %struct.afe440x_attr* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %63

59:                                               ; preds = %47, %36
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %30

63:                                               ; preds = %58, %30
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.afe440x_attr*, %struct.afe440x_attr** %12, align 8
  %66 = getelementptr inbounds %struct.afe440x_attr, %struct.afe440x_attr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %90

72:                                               ; preds = %63
  %73 = load %struct.afe4404_data*, %struct.afe4404_data** %11, align 8
  %74 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.afe440x_attr*, %struct.afe440x_attr** %12, align 8
  %77 = getelementptr inbounds %struct.afe440x_attr, %struct.afe440x_attr* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @regmap_field_write(i32 %80, i32 %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %5, align 4
  br label %90

87:                                               ; preds = %72
  %88 = load i64, i64* %9, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %85, %69, %27
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.afe4404_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.afe440x_attr* @to_afe440x_attr(%struct.device_attribute*) #1

declare dso_local i32 @iio_str_to_fixpoint(i8*, i32, i32*, i32*) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
