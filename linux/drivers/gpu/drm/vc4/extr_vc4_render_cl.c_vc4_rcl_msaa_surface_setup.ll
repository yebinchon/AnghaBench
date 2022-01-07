; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_rcl_msaa_surface_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_rcl_msaa_surface_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_exec_info = type { i32, %struct.drm_gem_cma_object** }
%struct.drm_gem_cma_object = type { i32 }
%struct.drm_vc4_submit_rcl_surface = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"MSAA surface had nonzero flags/bits\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"MSAA write must be 16b aligned.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_exec_info*, %struct.drm_gem_cma_object**, %struct.drm_vc4_submit_rcl_surface*)* @vc4_rcl_msaa_surface_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_rcl_msaa_surface_setup(%struct.vc4_exec_info* %0, %struct.drm_gem_cma_object** %1, %struct.drm_vc4_submit_rcl_surface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc4_exec_info*, align 8
  %6 = alloca %struct.drm_gem_cma_object**, align 8
  %7 = alloca %struct.drm_vc4_submit_rcl_surface*, align 8
  store %struct.vc4_exec_info* %0, %struct.vc4_exec_info** %5, align 8
  store %struct.drm_gem_cma_object** %1, %struct.drm_gem_cma_object*** %6, align 8
  store %struct.drm_vc4_submit_rcl_surface* %2, %struct.drm_vc4_submit_rcl_surface** %7, align 8
  %8 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %7, align 8
  %9 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %7, align 8
  %14 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12, %3
  %18 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %67

21:                                               ; preds = %12
  %22 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %7, align 8
  %23 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %67

27:                                               ; preds = %21
  %28 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %29 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %7, align 8
  %30 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.drm_gem_cma_object* @vc4_use_bo(%struct.vc4_exec_info* %28, i32 %31)
  %33 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %6, align 8
  store %struct.drm_gem_cma_object* %32, %struct.drm_gem_cma_object** %33, align 8
  %34 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %6, align 8
  %35 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %34, align 8
  %36 = icmp ne %struct.drm_gem_cma_object* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %67

40:                                               ; preds = %27
  %41 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %6, align 8
  %42 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %41, align 8
  %43 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %44 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %43, i32 0, i32 1
  %45 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %44, align 8
  %46 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %47 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %45, i64 %50
  store %struct.drm_gem_cma_object* %42, %struct.drm_gem_cma_object** %51, align 8
  %52 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %7, align 8
  %53 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 15
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %40
  %58 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %40
  %62 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %63 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %6, align 8
  %64 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %63, align 8
  %65 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %7, align 8
  %66 = call i32 @vc4_full_res_bounds_check(%struct.vc4_exec_info* %62, %struct.drm_gem_cma_object* %64, %struct.drm_vc4_submit_rcl_surface* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %57, %37, %26, %17
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local %struct.drm_gem_cma_object* @vc4_use_bo(%struct.vc4_exec_info*, i32) #1

declare dso_local i32 @vc4_full_res_bounds_check(%struct.vc4_exec_info*, %struct.drm_gem_cma_object*, %struct.drm_vc4_submit_rcl_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
