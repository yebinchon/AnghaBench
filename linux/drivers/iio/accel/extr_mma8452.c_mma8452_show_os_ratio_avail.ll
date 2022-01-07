; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_show_os_ratio_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_show_os_ratio_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.mma8452_data = type { i32 }

@mma8452_os_ratio = common dso_local global i64** null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @mma8452_show_os_ratio_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mma8452_show_os_ratio_avail(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.mma8452_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %7, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mma8452_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.mma8452_data* %16, %struct.mma8452_data** %8, align 8
  %17 = load %struct.mma8452_data*, %struct.mma8452_data** %8, align 8
  %18 = call i32 @mma8452_get_odr_index(%struct.mma8452_data* %17)
  store i32 %18, i32* %9, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %57, %3
  %20 = load i32, i32* %10, align 4
  %21 = load i64**, i64*** @mma8452_os_ratio, align 8
  %22 = call i32 @ARRAY_SIZE(i64** %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %19
  %25 = load i64, i64* %11, align 8
  %26 = load i64**, i64*** @mma8452_os_ratio, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64*, i64** %26, i64 %28
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %25, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %57

37:                                               ; preds = %24
  %38 = load i64**, i64*** @mma8452_os_ratio, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64*, i64** %38, i64 %40
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = load i64, i64* %12, align 8
  %52 = sub i64 %50, %51
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @scnprintf(i8* %49, i64 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %37, %36
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %19

60:                                               ; preds = %19
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %12, align 8
  %63 = sub i64 %62, 1
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 10, i8* %64, align 1
  %65 = load i64, i64* %12, align 8
  ret i64 %65
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.mma8452_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mma8452_get_odr_index(%struct.mma8452_data*) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
