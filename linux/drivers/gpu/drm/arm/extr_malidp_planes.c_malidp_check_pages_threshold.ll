; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_check_pages_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_check_pages_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_plane_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_gem_object = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sg_table* (%struct.drm_gem_object*)* }
%struct.sg_table = type { %struct.scatterlist* }
%struct.scatterlist = type { i64 }
%struct.drm_gem_cma_object = type { %struct.sg_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malidp_plane_state*, i64)* @malidp_check_pages_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_check_pages_threshold(%struct.malidp_plane_state* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.malidp_plane_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_gem_object*, align 8
  %8 = alloca %struct.drm_gem_cma_object*, align 8
  %9 = alloca %struct.sg_table*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  store %struct.malidp_plane_state* %0, %struct.malidp_plane_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %82, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %14 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %85

17:                                               ; preds = %11
  %18 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %19 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.drm_gem_object* @drm_gem_fb_get_obj(i32 %21, i32 %22)
  store %struct.drm_gem_object* %23, %struct.drm_gem_object** %7, align 8
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %25 = call %struct.drm_gem_cma_object* @to_drm_gem_cma_obj(%struct.drm_gem_object* %24)
  store %struct.drm_gem_cma_object* %25, %struct.drm_gem_cma_object** %8, align 8
  %26 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %8, align 8
  %27 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %26, i32 0, i32 0
  %28 = load %struct.sg_table*, %struct.sg_table** %27, align 8
  %29 = icmp ne %struct.sg_table* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %8, align 8
  %32 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %31, i32 0, i32 0
  %33 = load %struct.sg_table*, %struct.sg_table** %32, align 8
  store %struct.sg_table* %33, %struct.sg_table** %9, align 8
  br label %44

34:                                               ; preds = %17
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.sg_table* (%struct.drm_gem_object*)*, %struct.sg_table* (%struct.drm_gem_object*)** %40, align 8
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %43 = call %struct.sg_table* %41(%struct.drm_gem_object* %42)
  store %struct.sg_table* %43, %struct.sg_table** %9, align 8
  br label %44

44:                                               ; preds = %34, %30
  %45 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %46 = icmp ne %struct.sg_table* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %86

48:                                               ; preds = %44
  %49 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %50 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %49, i32 0, i32 0
  %51 = load %struct.scatterlist*, %struct.scatterlist** %50, align 8
  store %struct.scatterlist* %51, %struct.scatterlist** %10, align 8
  br label %52

52:                                               ; preds = %70, %48
  %53 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %54 = icmp ne %struct.scatterlist* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %8, align 8
  %63 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %62, i32 0, i32 0
  %64 = load %struct.sg_table*, %struct.sg_table** %63, align 8
  %65 = icmp ne %struct.sg_table* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %68 = call i32 @kfree(%struct.sg_table* %67)
  br label %69

69:                                               ; preds = %66, %61
  store i32 0, i32* %3, align 4
  br label %86

70:                                               ; preds = %55
  %71 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %72 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %71)
  store %struct.scatterlist* %72, %struct.scatterlist** %10, align 8
  br label %52

73:                                               ; preds = %52
  %74 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %8, align 8
  %75 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %74, i32 0, i32 0
  %76 = load %struct.sg_table*, %struct.sg_table** %75, align 8
  %77 = icmp ne %struct.sg_table* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %80 = call i32 @kfree(%struct.sg_table* %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %11

85:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %69, %47
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.drm_gem_object* @drm_gem_fb_get_obj(i32, i32) #1

declare dso_local %struct.drm_gem_cma_object* @to_drm_gem_cma_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
