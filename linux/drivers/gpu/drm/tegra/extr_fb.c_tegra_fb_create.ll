; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_fb.c_tegra_fb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_fb.c_tegra_fb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32*, i32*, i32* }
%struct.drm_format_info = type { i32, i32, i32, i32* }
%struct.tegra_bo = type { i32 }
%struct.drm_gem_object = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @tegra_fb_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  %9 = alloca [4 x %struct.tegra_bo*], align 16
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %20 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %18, %struct.drm_mode_fb_cmd2* %19)
  store %struct.drm_format_info* %20, %struct.drm_format_info** %8, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %112, %3
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %24 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %115

27:                                               ; preds = %21
  %28 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %29 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %35 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 1, %37 ]
  %40 = sdiv i32 %30, %39
  store i32 %40, i32* %14, align 4
  %41 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %42 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %48 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  br label %51

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32 [ %49, %46 ], [ 1, %50 ]
  %53 = sdiv i32 %43, %52
  store i32 %53, i32* %15, align 4
  %54 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %55 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %56 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %54, i32 %61)
  store %struct.drm_gem_object* %62, %struct.drm_gem_object** %10, align 8
  %63 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %64 = icmp ne %struct.drm_gem_object* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %51
  %66 = load i32, i32* @ENXIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %13, align 4
  br label %129

68:                                               ; preds = %51
  %69 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %70 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %15, align 4
  %77 = sub i32 %76, 1
  %78 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %79 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = mul i32 %77, %84
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %17, align 4
  %88 = mul i32 %86, %87
  %89 = add i32 %85, %88
  %90 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %91 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %89, %96
  store i32 %97, i32* %16, align 4
  %98 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %99 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %68
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %13, align 4
  br label %129

106:                                              ; preds = %68
  %107 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %108 = call %struct.tegra_bo* @to_tegra_bo(%struct.drm_gem_object* %107)
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [4 x %struct.tegra_bo*], [4 x %struct.tegra_bo*]* %9, i64 0, i64 %110
  store %struct.tegra_bo* %108, %struct.tegra_bo** %111, align 8
  br label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %21

115:                                              ; preds = %21
  %116 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %117 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %118 = getelementptr inbounds [4 x %struct.tegra_bo*], [4 x %struct.tegra_bo*]* %9, i64 0, i64 0
  %119 = load i32, i32* %12, align 4
  %120 = call %struct.drm_framebuffer* @tegra_fb_alloc(%struct.drm_device* %116, %struct.drm_mode_fb_cmd2* %117, %struct.tegra_bo** %118, i32 %119)
  store %struct.drm_framebuffer* %120, %struct.drm_framebuffer** %11, align 8
  %121 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %122 = call i64 @IS_ERR(%struct.drm_framebuffer* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %126 = call i32 @PTR_ERR(%struct.drm_framebuffer* %125)
  store i32 %126, i32* %13, align 4
  br label %129

127:                                              ; preds = %115
  %128 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* %128, %struct.drm_framebuffer** %4, align 8
  br label %144

129:                                              ; preds = %124, %103, %65
  br label %130

130:                                              ; preds = %134, %129
  %131 = load i32, i32* %12, align 4
  %132 = add i32 %131, -1
  store i32 %132, i32* %12, align 4
  %133 = icmp ne i32 %131, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load i32, i32* %12, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [4 x %struct.tegra_bo*], [4 x %struct.tegra_bo*]* %9, i64 0, i64 %136
  %138 = load %struct.tegra_bo*, %struct.tegra_bo** %137, align 8
  %139 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %138, i32 0, i32 0
  %140 = call i32 @drm_gem_object_put_unlocked(i32* %139)
  br label %130

141:                                              ; preds = %130
  %142 = load i32, i32* %13, align 4
  %143 = call %struct.drm_framebuffer* @ERR_PTR(i32 %142)
  store %struct.drm_framebuffer* %143, %struct.drm_framebuffer** %4, align 8
  br label %144

144:                                              ; preds = %141, %127
  %145 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %145
}

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.tegra_bo* @to_tegra_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.drm_framebuffer* @tegra_fb_alloc(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.tegra_bo**, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
