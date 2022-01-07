; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_tpo_vid.c_tpo_vid_get_config_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_tpo_vid.c_tpo_vid_get_config_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_display_mode* (%struct.drm_device*)* @tpo_vid_get_config_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_display_mode* @tpo_vid_get_config_mode(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_display_mode*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.drm_display_mode* @kzalloc(i32 40, i32 %5)
  store %struct.drm_display_mode* %6, %struct.drm_display_mode** %4, align 8
  %7 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %8 = icmp ne %struct.drm_display_mode* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %2, align 8
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %12 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %11, i32 0, i32 0
  store i32 864, i32* %12, align 4
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 1
  store i32 480, i32* %14, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 2
  store i32 873, i32* %16, align 4
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 3
  store i32 876, i32* %18, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 4
  store i32 887, i32* %20, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 5
  store i32 487, i32* %22, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 6
  store i32 490, i32* %24, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 7
  store i32 499, i32* %26, align 4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 8
  store i32 33264, i32* %28, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %30 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %29)
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %32 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %31, i32 0)
  %33 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  store %struct.drm_display_mode* %38, %struct.drm_display_mode** %2, align 8
  br label %39

39:                                               ; preds = %10, %9
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  ret %struct.drm_display_mode* %40
}

declare dso_local %struct.drm_display_mode* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
