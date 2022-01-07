; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_fb.c_armada_fb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_fb.c_armada_fb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i64*, i32*, i32, i32, i32, i32 }
%struct.drm_format_info = type { i32 }
%struct.armada_gem_object = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.armada_framebuffer = type { %struct.drm_framebuffer }

@.str = private unnamed_addr constant [30 x i8] c"w%u h%u pf%08x f%u p%u,%u,%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to initialize framebuffer: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @armada_fb_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  %9 = alloca %struct.armada_gem_object*, align 8
  %10 = alloca %struct.armada_framebuffer*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %14 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %12, %struct.drm_mode_fb_cmd2* %13)
  store %struct.drm_format_info* %14, %struct.drm_format_info** %8, align 8
  %15 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %16 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %19 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %22 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %25 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %28 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %33 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %38 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %26, i32 %31, i32 %36, i32 %41)
  %43 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %44 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %74

47:                                               ; preds = %3
  %48 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %49 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %54 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %47
  %60 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %61 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %66 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %64, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %59, %47
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %134

74:                                               ; preds = %59, %3
  %75 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %76 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %77 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = call %struct.armada_gem_object* @armada_gem_object_lookup(%struct.drm_file* %75, i64 %80)
  store %struct.armada_gem_object* %81, %struct.armada_gem_object** %9, align 8
  %82 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %83 = icmp ne %struct.armada_gem_object* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %74
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %134

87:                                               ; preds = %74
  %88 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %89 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %95 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %93
  %99 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %100 = call i32 @armada_gem_map_import(%struct.armada_gem_object* %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %130

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %93, %87
  %106 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %107 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %11, align 4
  br label %130

113:                                              ; preds = %105
  %114 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %115 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %116 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %117 = call %struct.armada_framebuffer* @armada_framebuffer_create(%struct.drm_device* %114, %struct.drm_mode_fb_cmd2* %115, %struct.armada_gem_object* %116)
  store %struct.armada_framebuffer* %117, %struct.armada_framebuffer** %10, align 8
  %118 = load %struct.armada_framebuffer*, %struct.armada_framebuffer** %10, align 8
  %119 = call i64 @IS_ERR(%struct.armada_framebuffer* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load %struct.armada_framebuffer*, %struct.armada_framebuffer** %10, align 8
  %123 = call i32 @PTR_ERR(%struct.armada_framebuffer* %122)
  store i32 %123, i32* %11, align 4
  br label %134

124:                                              ; preds = %113
  %125 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %126 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %125, i32 0, i32 0
  %127 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_2__* %126)
  %128 = load %struct.armada_framebuffer*, %struct.armada_framebuffer** %10, align 8
  %129 = getelementptr inbounds %struct.armada_framebuffer, %struct.armada_framebuffer* %128, i32 0, i32 0
  store %struct.drm_framebuffer* %129, %struct.drm_framebuffer** %4, align 8
  br label %139

130:                                              ; preds = %110, %103
  %131 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %132 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %131, i32 0, i32 0
  %133 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_2__* %132)
  br label %134

134:                                              ; preds = %130, %121, %84, %71
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %11, align 4
  %138 = call %struct.drm_framebuffer* @ERR_PTR(i32 %137)
  store %struct.drm_framebuffer* %138, %struct.drm_framebuffer** %4, align 8
  br label %139

139:                                              ; preds = %134, %124
  %140 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %140
}

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.armada_gem_object* @armada_gem_object_lookup(%struct.drm_file*, i64) #1

declare dso_local i32 @armada_gem_map_import(%struct.armada_gem_object*) #1

declare dso_local %struct.armada_framebuffer* @armada_framebuffer_create(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.armada_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.armada_framebuffer*) #1

declare dso_local i32 @PTR_ERR(%struct.armada_framebuffer*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.TYPE_2__*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
