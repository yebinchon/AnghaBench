; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi.c_msm_dsi_get_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi.c_msm_dsi_get_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.msm_dsi = type { %struct.drm_encoder* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_encoder* @msm_dsi_get_encoder(%struct.msm_dsi* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.msm_dsi*, align 8
  store %struct.msm_dsi* %0, %struct.msm_dsi** %3, align 8
  %4 = load %struct.msm_dsi*, %struct.msm_dsi** %3, align 8
  %5 = icmp ne %struct.msm_dsi* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.msm_dsi*, %struct.msm_dsi** %3, align 8
  %8 = call i32 @msm_dsi_device_connected(%struct.msm_dsi* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  store %struct.drm_encoder* null, %struct.drm_encoder** %2, align 8
  br label %15

11:                                               ; preds = %6
  %12 = load %struct.msm_dsi*, %struct.msm_dsi** %3, align 8
  %13 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %12, i32 0, i32 0
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  store %struct.drm_encoder* %14, %struct.drm_encoder** %2, align 8
  br label %15

15:                                               ; preds = %11, %10
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  ret %struct.drm_encoder* %16
}

declare dso_local i32 @msm_dsi_device_connected(%struct.msm_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
