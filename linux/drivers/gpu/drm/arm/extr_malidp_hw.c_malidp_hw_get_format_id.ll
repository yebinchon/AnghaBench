; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_hw_get_format_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_hw_get_format_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_regmap = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@DRM_FORMAT_YUYV = common dso_local global i64 0, align 8
@MALIDP_DEVICE_AFBC_YUYV_USE_422_P2 = common dso_local global i32 0, align 4
@AFBC_YUV_422_FORMAT_ID = common dso_local global i32 0, align 4
@MALIDP_INVALID_FORMAT_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malidp_hw_get_format_id(%struct.malidp_hw_regmap* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.malidp_hw_regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.malidp_hw_regmap* %0, %struct.malidp_hw_regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %67, %4
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %6, align 8
  %14 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %11
  %18 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %6, align 8
  %19 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %17
  %31 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %6, align 8
  %32 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %30
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @DRM_FORMAT_YUYV, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %6, align 8
  %50 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MALIDP_DEVICE_AFBC_YUYV_USE_422_P2, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @AFBC_YUV_422_FORMAT_ID, align 4
  store i32 %56, i32* %5, align 4
  br label %72

57:                                               ; preds = %48, %45, %41
  %58 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %6, align 8
  %59 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %5, align 4
  br label %72

66:                                               ; preds = %30, %17
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %11

70:                                               ; preds = %11
  %71 = load i32, i32* @MALIDP_INVALID_FORMAT_ID, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %57, %55
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
