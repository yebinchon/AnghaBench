; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.vmw_fb_par* }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32 }
%struct.vmw_fb_par = type { i32, %struct.drm_display_mode*, i32, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.vmw_private* }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vmw_private = type { i32 }
%struct.drm_mode_set = type { i32, i32*, %struct.TYPE_2__*, %struct.drm_display_mode*, i64, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"fb_mode\00", align 1
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not create new fb mode.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @vmw_fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.vmw_fb_par*, align 8
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca %struct.drm_mode_set, align 8
  %7 = alloca %struct.fb_var_screeninfo*, align 8
  %8 = alloca %struct.drm_display_mode, align 4
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %12, align 8
  store %struct.vmw_fb_par* %13, %struct.vmw_fb_par** %4, align 8
  %14 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %15 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %14, i32 0, i32 8
  %16 = load %struct.vmw_private*, %struct.vmw_private** %15, align 8
  store %struct.vmw_private* %16, %struct.vmw_private** %5, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  store %struct.fb_var_screeninfo* %18, %struct.fb_var_screeninfo** %7, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %8, i32 0, i32 0
  %20 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %21 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %22 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @DRM_MODE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %23)
  store i32 %24, i32* %19, align 4
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %8, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %8, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %28 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %29, %struct.drm_display_mode* %8)
  store %struct.drm_display_mode* %30, %struct.drm_display_mode** %9, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %32 = icmp ne %struct.drm_display_mode* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %1
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %155

37:                                               ; preds = %1
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %49 = call i32 @vmw_guess_mode_timing(%struct.drm_display_mode* %48)
  %50 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DIV_ROUND_UP(i32 %56, i32 8)
  %58 = mul nsw i32 %53, %57
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @vmw_kms_validate_mode_vram(%struct.vmw_private* %50, i32 %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %37
  %65 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %66 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %69 = call i32 @drm_mode_destroy(i32 %67, %struct.drm_display_mode* %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %155

72:                                               ; preds = %37
  %73 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %74 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %73, i32 0, i32 0
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %77 = call i32 @vmw_fb_kms_framebuffer(%struct.fb_info* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %134

81:                                               ; preds = %72
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %86 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %91 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %93 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %6, i32 0, i32 6
  store i32 %94, i32* %95, align 8
  %96 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %6, i32 0, i32 5
  store i64 0, i64* %96, align 8
  %97 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %6, i32 0, i32 4
  store i64 0, i64* %97, align 8
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %99 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %6, i32 0, i32 3
  store %struct.drm_display_mode* %98, %struct.drm_display_mode** %99, align 8
  %100 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %101 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %100, i32 0, i32 3
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %6, i32 0, i32 2
  store %struct.TYPE_2__* %102, %struct.TYPE_2__** %103, align 8
  %104 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %6, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %106 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %6, i32 0, i32 1
  store i32* %106, i32** %107, align 8
  %108 = call i32 @vmwgfx_set_config_internal(%struct.drm_mode_set* %6)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %81
  br label %134

112:                                              ; preds = %81
  %113 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %114 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %115 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %118 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %121 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %126 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %125, i32 0, i32 3
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @vmw_fb_dirty_mark(%struct.vmw_fb_par* %113, i32 %116, i32 %119, i32 %124, i32 %129)
  %131 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %132 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %131, i32 0, i32 2
  %133 = call i32 @schedule_delayed_work(i32* %132, i32 0)
  br label %134

134:                                              ; preds = %112, %111, %80
  %135 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %136 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %135, i32 0, i32 1
  %137 = load %struct.drm_display_mode*, %struct.drm_display_mode** %136, align 8
  %138 = icmp ne %struct.drm_display_mode* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %141 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %144 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %143, i32 0, i32 1
  %145 = load %struct.drm_display_mode*, %struct.drm_display_mode** %144, align 8
  %146 = call i32 @drm_mode_destroy(i32 %142, %struct.drm_display_mode* %145)
  br label %147

147:                                              ; preds = %139, %134
  %148 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %149 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %150 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %149, i32 0, i32 1
  store %struct.drm_display_mode* %148, %struct.drm_display_mode** %150, align 8
  %151 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %4, align 8
  %152 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %147, %64, %33
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @DRM_MODE(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_guess_mode_timing(%struct.drm_display_mode*) #1

declare dso_local i32 @vmw_kms_validate_mode_vram(%struct.vmw_private*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @drm_mode_destroy(i32, %struct.drm_display_mode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmw_fb_kms_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @vmwgfx_set_config_internal(%struct.drm_mode_set*) #1

declare dso_local i32 @vmw_fb_dirty_mark(%struct.vmw_fb_par*, i32, i32, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
