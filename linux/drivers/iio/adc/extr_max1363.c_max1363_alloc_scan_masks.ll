; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_alloc_scan_masks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_alloc_scan_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.iio_dev = type { i64*, i32 }
%struct.max1363_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64* }

@MAX1363_MAX_CHANNELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max1363_mode_table = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @max1363_alloc_scan_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_alloc_scan_masks(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.max1363_state*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.max1363_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.max1363_state* %8, %struct.max1363_state** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %9, i32 0, i32 1
  %11 = load i32, i32* @MAX1363_MAX_CHANNELS, align 4
  %12 = call i32 @BITS_TO_LONGS(i32 %11)
  %13 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %14 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  %19 = call i32 @array3_size(i32 %12, i32 8, i32 %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64* @devm_kzalloc(i32* %10, i32 %19, i32 %20)
  store i64* %21, i64** %5, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %66

27:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %31 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %28
  %37 = load i64*, i64** %5, align 8
  %38 = load i32, i32* @MAX1363_MAX_CHANNELS, align 4
  %39 = call i32 @BITS_TO_LONGS(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %37, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @max1363_mode_table, align 8
  %45 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %46 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MAX1363_MAX_CHANNELS, align 4
  %58 = call i32 @bitmap_copy(i64* %43, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %36
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %28

62:                                               ; preds = %28
  %63 = load i64*, i64** %5, align 8
  %64 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 0
  store i64* %63, i64** %65, align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.max1363_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @bitmap_copy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
