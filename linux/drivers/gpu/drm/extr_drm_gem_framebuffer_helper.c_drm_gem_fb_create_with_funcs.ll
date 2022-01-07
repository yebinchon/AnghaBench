; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_framebuffer_helper.c_drm_gem_fb_create_with_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_framebuffer_helper.c_drm_gem_fb_create_with_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32*, i32*, i32* }
%struct.drm_framebuffer_funcs = type { i32 }
%struct.drm_format_info = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to lookup GEM object\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @drm_gem_fb_create_with_funcs(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2, %struct.drm_framebuffer_funcs* %3) #0 {
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %9 = alloca %struct.drm_framebuffer_funcs*, align 8
  %10 = alloca %struct.drm_format_info*, align 8
  %11 = alloca [4 x %struct.drm_gem_object*], align 16
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %8, align 8
  store %struct.drm_framebuffer_funcs* %3, %struct.drm_framebuffer_funcs** %9, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %20 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %18, %struct.drm_mode_fb_cmd2* %19)
  store %struct.drm_format_info* %20, %struct.drm_format_info** %10, align 8
  %21 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %22 = icmp ne %struct.drm_format_info* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.drm_framebuffer* @ERR_PTR(i32 %25)
  store %struct.drm_framebuffer* %26, %struct.drm_framebuffer** %5, align 8
  br label %159

27:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %123, %27
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %31 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %126

34:                                               ; preds = %28
  %35 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %36 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %42 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %43, %40 ], [ 1, %44 ]
  %47 = sdiv i32 %37, %46
  store i32 %47, i32* %15, align 4
  %48 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %49 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %55 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  br label %58

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i32 [ %56, %53 ], [ 1, %57 ]
  %60 = sdiv i32 %50, %59
  store i32 %60, i32* %16, align 4
  %61 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %62 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %63 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %61, i32 %68)
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %11, i64 0, i64 %71
  store %struct.drm_gem_object* %69, %struct.drm_gem_object** %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %11, i64 0, i64 %74
  %76 = load %struct.drm_gem_object*, %struct.drm_gem_object** %75, align 8
  %77 = icmp ne %struct.drm_gem_object* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %58
  %79 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %141

82:                                               ; preds = %58
  %83 = load i32, i32* %16, align 4
  %84 = sub i32 %83, 1
  %85 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %86 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = mul i32 %84, %91
  %93 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @drm_format_info_min_pitch(%struct.drm_format_info* %93, i32 %94, i32 %95)
  %97 = add i32 %92, %96
  %98 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %99 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %97, %104
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %11, i64 0, i64 %107
  %109 = load %struct.drm_gem_object*, %struct.drm_gem_object** %108, align 8
  %110 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %82
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %11, i64 0, i64 %116
  %118 = load %struct.drm_gem_object*, %struct.drm_gem_object** %117, align 8
  %119 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %13, align 4
  br label %141

122:                                              ; preds = %82
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %28

126:                                              ; preds = %28
  %127 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %128 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %129 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %11, i64 0, i64 0
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.drm_framebuffer_funcs*, %struct.drm_framebuffer_funcs** %9, align 8
  %132 = call %struct.drm_framebuffer* @drm_gem_fb_alloc(%struct.drm_device* %127, %struct.drm_mode_fb_cmd2* %128, %struct.drm_gem_object** %129, i32 %130, %struct.drm_framebuffer_funcs* %131)
  store %struct.drm_framebuffer* %132, %struct.drm_framebuffer** %12, align 8
  %133 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %134 = call i64 @IS_ERR(%struct.drm_framebuffer* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %138 = call i32 @PTR_ERR(%struct.drm_framebuffer* %137)
  store i32 %138, i32* %13, align 4
  br label %141

139:                                              ; preds = %126
  %140 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_framebuffer* %140, %struct.drm_framebuffer** %5, align 8
  br label %159

141:                                              ; preds = %136, %114, %78
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %153, %141
  %145 = load i32, i32* %14, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %11, i64 0, i64 %149
  %151 = load %struct.drm_gem_object*, %struct.drm_gem_object** %150, align 8
  %152 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %151)
  br label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %14, align 4
  br label %144

156:                                              ; preds = %144
  %157 = load i32, i32* %13, align 4
  %158 = call %struct.drm_framebuffer* @ERR_PTR(i32 %157)
  store %struct.drm_framebuffer* %158, %struct.drm_framebuffer** %5, align 8
  br label %159

159:                                              ; preds = %156, %139, %23
  %160 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  ret %struct.drm_framebuffer* %160
}

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_format_info_min_pitch(%struct.drm_format_info*, i32, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local %struct.drm_framebuffer* @drm_gem_fb_alloc(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object**, i32, %struct.drm_framebuffer_funcs*) #1

declare dso_local i64 @IS_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
