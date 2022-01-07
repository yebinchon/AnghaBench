; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_msm_dsi_manager_setup_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_msm_dsi_manager_setup_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_kms* }
%struct.msm_kms = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.msm_kms*, %struct.drm_encoder*, i32)* }
%struct.drm_encoder = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_dsi_manager_setup_encoder(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_dsi*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.msm_kms*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %7)
  store %struct.msm_dsi* %8, %struct.msm_dsi** %3, align 8
  %9 = load %struct.msm_dsi*, %struct.msm_dsi** %3, align 8
  %10 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.msm_drm_private*, %struct.msm_drm_private** %12, align 8
  store %struct.msm_drm_private* %13, %struct.msm_drm_private** %4, align 8
  %14 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %15 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %14, i32 0, i32 0
  %16 = load %struct.msm_kms*, %struct.msm_kms** %15, align 8
  store %struct.msm_kms* %16, %struct.msm_kms** %5, align 8
  %17 = load %struct.msm_dsi*, %struct.msm_dsi** %3, align 8
  %18 = call %struct.drm_encoder* @msm_dsi_get_encoder(%struct.msm_dsi* %17)
  store %struct.drm_encoder* %18, %struct.drm_encoder** %6, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %20 = icmp ne %struct.drm_encoder* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %23 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.msm_kms*, %struct.drm_encoder*, i32)*, i32 (%struct.msm_kms*, %struct.drm_encoder*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.msm_kms*, %struct.drm_encoder*, i32)* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %30 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.msm_kms*, %struct.drm_encoder*, i32)*, i32 (%struct.msm_kms*, %struct.drm_encoder*, i32)** %32, align 8
  %34 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %36 = load %struct.msm_dsi*, %struct.msm_dsi** %3, align 8
  %37 = call i32 @dsi_mgr_is_cmd_mode(%struct.msm_dsi* %36)
  %38 = call i32 %33(%struct.msm_kms* %34, %struct.drm_encoder* %35, i32 %37)
  br label %39

39:                                               ; preds = %28, %21, %1
  ret void
}

declare dso_local %struct.msm_dsi* @dsi_mgr_get_dsi(i32) #1

declare dso_local %struct.drm_encoder* @msm_dsi_get_encoder(%struct.msm_dsi*) #1

declare dso_local i32 @dsi_mgr_is_cmd_mode(%struct.msm_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
