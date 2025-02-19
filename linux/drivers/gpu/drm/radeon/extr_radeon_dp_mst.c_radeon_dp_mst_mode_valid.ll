; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_mst_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_mst_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@MODE_H_ILLEGAL = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @radeon_dp_mst_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_mst_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %6 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %7 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 10000
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %11, i32* %3, align 4
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @MODE_H_ILLEGAL, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %12
  %22 = load i32, i32* @MODE_OK, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %19, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
