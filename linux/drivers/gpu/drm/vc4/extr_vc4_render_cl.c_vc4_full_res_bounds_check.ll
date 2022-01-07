; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_full_res_bounds_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_full_res_bounds_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_exec_info = type { %struct.drm_vc4_submit_cl* }
%struct.drm_vc4_submit_cl = type { i32, i32, i32 }
%struct.drm_gem_cma_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_vc4_submit_rcl_surface = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"surface offset %d > BO size %zd\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VC4_TILE_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"MSAA tile %d, %d out of bounds (bo size %zd, offset %d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_exec_info*, %struct.drm_gem_cma_object*, %struct.drm_vc4_submit_rcl_surface*)* @vc4_full_res_bounds_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_full_res_bounds_check(%struct.vc4_exec_info* %0, %struct.drm_gem_cma_object* %1, %struct.drm_vc4_submit_rcl_surface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc4_exec_info*, align 8
  %6 = alloca %struct.drm_gem_cma_object*, align 8
  %7 = alloca %struct.drm_vc4_submit_rcl_surface*, align 8
  %8 = alloca %struct.drm_vc4_submit_cl*, align 8
  %9 = alloca i32, align 4
  store %struct.vc4_exec_info* %0, %struct.vc4_exec_info** %5, align 8
  store %struct.drm_gem_cma_object* %1, %struct.drm_gem_cma_object** %6, align 8
  store %struct.drm_vc4_submit_rcl_surface* %2, %struct.drm_vc4_submit_rcl_surface** %7, align 8
  %10 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %11 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %10, i32 0, i32 0
  %12 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %11, align 8
  store %struct.drm_vc4_submit_cl* %12, %struct.drm_vc4_submit_cl** %8, align 8
  %13 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %14 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %13, i32 0, i32 0
  %15 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %14, align 8
  %16 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DIV_ROUND_UP(i32 %17, i32 32)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %7, align 8
  %20 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %23 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %21, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %7, align 8
  %29 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %33 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %81

40:                                               ; preds = %3
  %41 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %42 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %7, align 8
  %46 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load i32, i32* @VC4_TILE_BUFFER_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = sdiv i64 %48, %50
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %54 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %58 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %51, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %40
  %64 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %65 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %68 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %71 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %7, align 8
  %75 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i64 %73, i64 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %63, %27
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
