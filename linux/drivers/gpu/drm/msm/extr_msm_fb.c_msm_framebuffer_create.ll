; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fb.c_msm_framebuffer_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fb.c_msm_framebuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32* }
%struct.drm_format_info = type { i32 }
%struct.drm_gem_object = type { i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @msm_framebuffer_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  %9 = alloca [4 x %struct.drm_gem_object*], align 16
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %16 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %14, %struct.drm_mode_fb_cmd2* %15)
  store %struct.drm_format_info* %16, %struct.drm_format_info** %8, align 8
  %17 = bitcast [4 x %struct.drm_gem_object*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 32, i1 false)
  %18 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %19 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %47, %3
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %27 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %28 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %26, i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %9, i64 0, i64 %36
  store %struct.drm_gem_object* %34, %struct.drm_gem_object** %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %9, i64 0, i64 %39
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %40, align 8
  %42 = icmp ne %struct.drm_gem_object* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %25
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %63

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %21

50:                                               ; preds = %21
  %51 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %52 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %53 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %9, i64 0, i64 0
  %54 = call %struct.drm_framebuffer* @msm_framebuffer_init(%struct.drm_device* %51, %struct.drm_mode_fb_cmd2* %52, %struct.drm_gem_object** %53)
  store %struct.drm_framebuffer* %54, %struct.drm_framebuffer** %10, align 8
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %56 = call i64 @IS_ERR(%struct.drm_framebuffer* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %60 = call i32 @PTR_ERR(%struct.drm_framebuffer* %59)
  store i32 %60, i32* %11, align 4
  br label %63

61:                                               ; preds = %50
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  store %struct.drm_framebuffer* %62, %struct.drm_framebuffer** %4, align 8
  br label %80

63:                                               ; preds = %58, %43
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %74, %63
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %9, i64 0, i64 %70
  %72 = load %struct.drm_gem_object*, %struct.drm_gem_object** %71, align 8
  %73 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %72)
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %64

77:                                               ; preds = %64
  %78 = load i32, i32* %11, align 4
  %79 = call %struct.drm_framebuffer* @ERR_PTR(i32 %78)
  store %struct.drm_framebuffer* %79, %struct.drm_framebuffer** %4, align 8
  br label %80

80:                                               ; preds = %77, %61
  %81 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %81
}

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.drm_framebuffer* @msm_framebuffer_init(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object**) #1

declare dso_local i64 @IS_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
