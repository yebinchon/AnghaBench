; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_get_fb_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_get_fb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_framebuffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.amdgpu_bo = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to reserve buffer: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_framebuffer*, i32*)* @get_fb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fb_info(%struct.amdgpu_framebuffer* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_framebuffer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_framebuffer* %0, %struct.amdgpu_framebuffer** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(i32 %13)
  store %struct.amdgpu_bo* %14, %struct.amdgpu_bo** %6, align 8
  %15 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %16 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %15, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ERESTARTSYS, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %41

30:                                               ; preds = %2
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @amdgpu_bo_get_tiling_flags(%struct.amdgpu_bo* %34, i32* %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %39 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %28
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(i32) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @amdgpu_bo_get_tiling_flags(%struct.amdgpu_bo*, i32*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
