; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_dsi_mgr_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_dsi_mgr_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_kms* }
%struct.msm_kms = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.msm_kms*, i64, %struct.drm_encoder*)* }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.msm_dsi = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"requested=%ld, actual=%ld\00", align 1
@MODE_CLOCK_RANGE = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @dsi_mgr_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_mgr_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_dsi*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.msm_drm_private*, align 8
  %10 = alloca %struct.msm_kms*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = call i32 @dsi_mgr_connector_get_id(%struct.drm_connector* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %15)
  store %struct.msm_dsi* %16, %struct.msm_dsi** %7, align 8
  %17 = load %struct.msm_dsi*, %struct.msm_dsi** %7, align 8
  %18 = call %struct.drm_encoder* @msm_dsi_get_encoder(%struct.msm_dsi* %17)
  store %struct.drm_encoder* %18, %struct.drm_encoder** %8, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.msm_drm_private*, %struct.msm_drm_private** %22, align 8
  store %struct.msm_drm_private* %23, %struct.msm_drm_private** %9, align 8
  %24 = load %struct.msm_drm_private*, %struct.msm_drm_private** %9, align 8
  %25 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %24, i32 0, i32 0
  %26 = load %struct.msm_kms*, %struct.msm_kms** %25, align 8
  store %struct.msm_kms* %26, %struct.msm_kms** %10, align 8
  %27 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 1000, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  %33 = load %struct.msm_kms*, %struct.msm_kms** %10, align 8
  %34 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64 (%struct.msm_kms*, i64, %struct.drm_encoder*)*, i64 (%struct.msm_kms*, i64, %struct.drm_encoder*)** %36, align 8
  %38 = load %struct.msm_kms*, %struct.msm_kms** %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %41 = call i64 %37(%struct.msm_kms* %38, i64 %39, %struct.drm_encoder* %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %42, i64 %43)
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i32, i32* @MODE_CLOCK_RANGE, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %2
  %51 = load i32, i32* @MODE_OK, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @dsi_mgr_connector_get_id(%struct.drm_connector*) #1

declare dso_local %struct.msm_dsi* @dsi_mgr_get_dsi(i32) #1

declare dso_local %struct.drm_encoder* @msm_dsi_get_encoder(%struct.msm_dsi*) #1

declare dso_local i32 @DBG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
