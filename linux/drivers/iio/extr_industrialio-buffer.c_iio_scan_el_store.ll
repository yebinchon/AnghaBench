; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_scan_el_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_scan_el_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32, %struct.iio_buffer* }
%struct.iio_buffer = type { i32 }
%struct.iio_dev_attr = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @iio_scan_el_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_scan_el_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iio_dev*, align 8
  %13 = alloca %struct.iio_buffer*, align 8
  %14 = alloca %struct.iio_dev_attr*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %12, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 1
  %19 = load %struct.iio_buffer*, %struct.iio_buffer** %18, align 8
  store %struct.iio_buffer* %19, %struct.iio_buffer** %13, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %20)
  store %struct.iio_dev_attr* %21, %struct.iio_dev_attr** %14, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strtobool(i8* %22, i32* %11)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %99

28:                                               ; preds = %4
  %29 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 1
  %34 = load %struct.iio_buffer*, %struct.iio_buffer** %33, align 8
  %35 = call i64 @iio_buffer_is_active(%struct.iio_buffer* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %85

40:                                               ; preds = %28
  %41 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %42 = load %struct.iio_buffer*, %struct.iio_buffer** %13, align 8
  %43 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %14, align 8
  %44 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @iio_scan_mask_query(%struct.iio_dev* %41, %struct.iio_buffer* %42, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %85

50:                                               ; preds = %40
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.iio_buffer*, %struct.iio_buffer** %13, align 8
  %58 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %14, align 8
  %59 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @iio_scan_mask_clear(%struct.iio_buffer* %57, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %85

65:                                               ; preds = %56
  br label %84

66:                                               ; preds = %53, %50
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %69
  %73 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %74 = load %struct.iio_buffer*, %struct.iio_buffer** %13, align 8
  %75 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %14, align 8
  %76 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @iio_scan_mask_set(%struct.iio_dev* %73, %struct.iio_buffer* %74, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %85

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %69, %66
  br label %84

84:                                               ; preds = %83, %65
  br label %85

85:                                               ; preds = %84, %81, %64, %49, %37
  %86 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  br label %96

94:                                               ; preds = %85
  %95 = load i64, i64* %9, align 8
  br label %96

96:                                               ; preds = %94, %91
  %97 = phi i64 [ %93, %91 ], [ %95, %94 ]
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %96, %26
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iio_buffer_is_active(%struct.iio_buffer*) #1

declare dso_local i32 @iio_scan_mask_query(%struct.iio_dev*, %struct.iio_buffer*, i32) #1

declare dso_local i32 @iio_scan_mask_clear(%struct.iio_buffer*, i32) #1

declare dso_local i32 @iio_scan_mask_set(%struct.iio_dev*, %struct.iio_buffer*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
