; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fb.c_exynos_user_fb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fb.c_exynos_user_fb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32*, i32*, i32* }
%struct.drm_format_info = type { i32, i32 }
%struct.exynos_drm_gem = type { i64 }

@MAX_FB_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to lookup gem object\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @exynos_user_fb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @exynos_user_fb_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %19 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %17, %struct.drm_mode_fb_cmd2* %18)
  store %struct.drm_format_info* %19, %struct.drm_format_info** %8, align 8
  %20 = load i32, i32* @MAX_FB_BUFFER, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca %struct.exynos_drm_gem*, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %104, %3
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %27 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %107

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %35 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  br label %45

37:                                               ; preds = %30
  %38 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %39 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %42 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DIV_ROUND_UP(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %37, %33
  %46 = phi i32 [ %36, %33 ], [ %44, %37 ]
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %49 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = mul i32 %47, %54
  %56 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %57 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %55, %62
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %15, align 8
  %65 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %66 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %67 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.exynos_drm_gem* @exynos_drm_gem_get(%struct.drm_file* %65, i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %23, i64 %75
  store %struct.exynos_drm_gem* %73, %struct.exynos_drm_gem** %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %23, i64 %78
  %80 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %79, align 8
  %81 = icmp ne %struct.exynos_drm_gem* %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %45
  %83 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DRM_DEV_ERROR(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %13, align 4
  br label %120

89:                                               ; preds = %45
  %90 = load i64, i64* %15, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %23, i64 %92
  %94 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %93, align 8
  %95 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ugt i64 %90, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %13, align 4
  br label %120

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %24

107:                                              ; preds = %24
  %108 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %109 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call %struct.drm_framebuffer* @exynos_drm_framebuffer_init(%struct.drm_device* %108, %struct.drm_mode_fb_cmd2* %109, %struct.exynos_drm_gem** %23, i32 %110)
  store %struct.drm_framebuffer* %111, %struct.drm_framebuffer** %11, align 8
  %112 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %113 = call i64 @IS_ERR(%struct.drm_framebuffer* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %117 = call i32 @PTR_ERR(%struct.drm_framebuffer* %116)
  store i32 %117, i32* %13, align 4
  br label %120

118:                                              ; preds = %107
  %119 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* %119, %struct.drm_framebuffer** %4, align 8
  store i32 1, i32* %16, align 4
  br label %134

120:                                              ; preds = %115, %98, %82
  br label %121

121:                                              ; preds = %125, %120
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %12, align 4
  %124 = icmp ne i32 %122, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %23, i64 %127
  %129 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %128, align 8
  %130 = call i32 @exynos_drm_gem_put(%struct.exynos_drm_gem* %129)
  br label %121

131:                                              ; preds = %121
  %132 = load i32, i32* %13, align 4
  %133 = call %struct.drm_framebuffer* @ERR_PTR(i32 %132)
  store %struct.drm_framebuffer* %133, %struct.drm_framebuffer** %4, align 8
  store i32 1, i32* %16, align 4
  br label %134

134:                                              ; preds = %131, %118
  %135 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %136
}

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.exynos_drm_gem* @exynos_drm_gem_get(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local %struct.drm_framebuffer* @exynos_drm_framebuffer_init(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.exynos_drm_gem**, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @exynos_drm_gem_put(%struct.exynos_drm_gem*) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
