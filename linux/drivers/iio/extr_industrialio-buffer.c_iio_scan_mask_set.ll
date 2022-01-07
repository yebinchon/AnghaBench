; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_scan_mask_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_scan_mask_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i64 }
%struct.iio_buffer = type { i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Trying to set scanmask prior to registering buffer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_buffer*, i32)* @iio_scan_mask_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_scan_mask_set(%struct.iio_dev* %0, %struct.iio_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_buffer* %1, %struct.iio_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @BITS_TO_LONGS(i32 %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64* @kcalloc(i32 %13, i32 8, i32 %14)
  store i64* %15, i64** %9, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %79

21:                                               ; preds = %3
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %74

28:                                               ; preds = %21
  %29 = load i64*, i64** %9, align 8
  %30 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @bitmap_copy(i64* %29, i64* %32, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i64*, i64** %9, align 8
  %39 = call i32 @set_bit(i32 %37, i64* %38)
  %40 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = call i32 @iio_validate_scan_mask(%struct.iio_dev* %40, i64* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %28
  br label %74

45:                                               ; preds = %28
  %46 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = call i64* @iio_scan_mask_match(i64 %53, i32 %56, i64* %57, i32 0)
  store i64* %58, i64** %8, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %74

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %65 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @bitmap_copy(i64* %66, i64* %67, i32 %70)
  %72 = load i64*, i64** %9, align 8
  %73 = call i32 @bitmap_free(i64* %72)
  store i32 0, i32* %4, align 4
  br label %79

74:                                               ; preds = %61, %44, %26
  %75 = load i64*, i64** %9, align 8
  %76 = call i32 @bitmap_free(i64* %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %63, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @bitmap_copy(i64*, i64*, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @iio_validate_scan_mask(%struct.iio_dev*, i64*) #1

declare dso_local i64* @iio_scan_mask_match(i64, i32, i64*, i32) #1

declare dso_local i32 @bitmap_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
