; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_connector.c_edp_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_connector.c_edp_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_kms* }
%struct.msm_kms = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.msm_kms*, i64, i32)* }
%struct.drm_display_mode = type { i32 }
%struct.edp_connector = type { %struct.msm_edp* }
%struct.msm_edp = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"requested=%ld, actual=%ld\00", align 1
@MODE_CLOCK_RANGE = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @edp_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edp_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.edp_connector*, align 8
  %7 = alloca %struct.msm_edp*, align 8
  %8 = alloca %struct.msm_drm_private*, align 8
  %9 = alloca %struct.msm_kms*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call %struct.edp_connector* @to_edp_connector(%struct.drm_connector* %12)
  store %struct.edp_connector* %13, %struct.edp_connector** %6, align 8
  %14 = load %struct.edp_connector*, %struct.edp_connector** %6, align 8
  %15 = getelementptr inbounds %struct.edp_connector, %struct.edp_connector* %14, i32 0, i32 0
  %16 = load %struct.msm_edp*, %struct.msm_edp** %15, align 8
  store %struct.msm_edp* %16, %struct.msm_edp** %7, align 8
  %17 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %18 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.msm_drm_private*, %struct.msm_drm_private** %20, align 8
  store %struct.msm_drm_private* %21, %struct.msm_drm_private** %8, align 8
  %22 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %23 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %22, i32 0, i32 0
  %24 = load %struct.msm_kms*, %struct.msm_kms** %23, align 8
  store %struct.msm_kms* %24, %struct.msm_kms** %9, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 1000, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %11, align 8
  %30 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  %31 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64 (%struct.msm_kms*, i64, i32)*, i64 (%struct.msm_kms*, i64, i32)** %33, align 8
  %35 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.edp_connector*, %struct.edp_connector** %6, align 8
  %38 = getelementptr inbounds %struct.edp_connector, %struct.edp_connector* %37, i32 0, i32 0
  %39 = load %struct.msm_edp*, %struct.msm_edp** %38, align 8
  %40 = getelementptr inbounds %struct.msm_edp, %struct.msm_edp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 %34(%struct.msm_kms* %35, i64 %36, i32 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = load i32, i32* @MODE_CLOCK_RANGE, align 4
  store i32 %50, i32* %3, align 4
  br label %72

51:                                               ; preds = %2
  %52 = load %struct.msm_edp*, %struct.msm_edp** %7, align 8
  %53 = getelementptr inbounds %struct.msm_edp, %struct.msm_edp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @msm_edp_ctrl_pixel_clock_valid(i32 %54, i32 %57, i32* null, i32* null)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @MODE_CLOCK_RANGE, align 4
  store i32 %61, i32* %3, align 4
  br label %72

62:                                               ; preds = %51
  %63 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %64 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @MODE_BAD, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @MODE_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %68, %60, %49
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.edp_connector* @to_edp_connector(%struct.drm_connector*) #1

declare dso_local i32 @DBG(i8*, i64, i64) #1

declare dso_local i32 @msm_edp_ctrl_pixel_clock_valid(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
