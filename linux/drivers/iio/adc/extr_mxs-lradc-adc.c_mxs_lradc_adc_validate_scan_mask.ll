; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_validate_scan_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_validate_scan_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.mxs_lradc_adc = type { %struct.mxs_lradc* }
%struct.mxs_lradc = type { i64, i64 }

@LRADC_MAX_TOTAL_CHANS = common dso_local global i32 0, align 4
@CHAN_MASK_TOUCHBUTTON = common dso_local global i64 0, align 8
@MXS_LRADC_TOUCHSCREEN_4WIRE = common dso_local global i64 0, align 8
@CHAN_MASK_TOUCHSCREEN_4WIRE = common dso_local global i64 0, align 8
@MXS_LRADC_TOUCHSCREEN_5WIRE = common dso_local global i64 0, align 8
@CHAN_MASK_TOUCHSCREEN_5WIRE = common dso_local global i64 0, align 8
@LRADC_MAX_MAPPED_CHANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64*)* @mxs_lradc_adc_validate_scan_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_lradc_adc_validate_scan_mask(%struct.iio_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.mxs_lradc_adc*, align 8
  %7 = alloca %struct.mxs_lradc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = call %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev* %11)
  store %struct.mxs_lradc_adc* %12, %struct.mxs_lradc_adc** %6, align 8
  %13 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %6, align 8
  %14 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %13, i32 0, i32 0
  %15 = load %struct.mxs_lradc*, %struct.mxs_lradc** %14, align 8
  store %struct.mxs_lradc* %15, %struct.mxs_lradc** %7, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = load i32, i32* @LRADC_MAX_TOTAL_CHANS, align 4
  %18 = call i32 @bitmap_weight(i64* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %19 = load %struct.mxs_lradc*, %struct.mxs_lradc** %7, align 8
  %20 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i64, i64* @CHAN_MASK_TOUCHBUTTON, align 8
  %25 = load i64, i64* %10, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.mxs_lradc*, %struct.mxs_lradc** %7, align 8
  %29 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MXS_LRADC_TOUCHSCREEN_4WIRE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* @CHAN_MASK_TOUCHSCREEN_4WIRE, align 8
  %35 = load i64, i64* %10, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.mxs_lradc*, %struct.mxs_lradc** %7, align 8
  %39 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MXS_LRADC_TOUCHSCREEN_5WIRE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i64, i64* @CHAN_MASK_TOUCHSCREEN_5WIRE, align 8
  %45 = load i64, i64* %10, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.mxs_lradc*, %struct.mxs_lradc** %7, align 8
  %49 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.mxs_lradc*, %struct.mxs_lradc** %7, align 8
  %57 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i64*, i64** %5, align 8
  %65 = load i32, i32* @LRADC_MAX_TOTAL_CHANS, align 4
  %66 = call i64 @bitmap_intersects(i64* %64, i64* %10, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %77

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* @LRADC_MAX_MAPPED_CHANS, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %77

76:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %75, %68
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @bitmap_weight(i64*, i32) #1

declare dso_local i64 @bitmap_intersects(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
