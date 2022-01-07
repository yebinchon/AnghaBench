; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_set_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_set_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.nouveau_bo = type { i32, %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_GART = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@TTM_PL_TT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*, i32, i32, i32)* @nouveau_gem_set_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_gem_set_domain(%struct.drm_gem_object* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_bo*, align 8
  %11 = alloca %struct.ttm_buffer_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %16 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %15)
  store %struct.nouveau_bo* %16, %struct.nouveau_bo** %10, align 8
  %17 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %18 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %17, i32 0, i32 1
  store %struct.ttm_buffer_object* %18, %struct.ttm_buffer_object** %11, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %21 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = and i32 %23, %31
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %108

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %45 = load i32, i32* %14, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @NOUVEAU_GEM_DOMAIN_GART, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %54 = load i32, i32* %14, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %63 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TTM_PL_VRAM, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %70 = load i32, i32* %13, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %13, align 4
  br label %103

72:                                               ; preds = %61, %56
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @NOUVEAU_GEM_DOMAIN_GART, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %79 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TTM_PL_TT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %13, align 4
  br label %102

88:                                               ; preds = %77, %72
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %95 = load i32, i32* %13, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %13, align 4
  br label %101

97:                                               ; preds = %88
  %98 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %84
  br label %103

103:                                              ; preds = %102, %68
  %104 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %104, i32 %105, i32 %106)
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %103, %35
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local i32 @nouveau_bo_placement_set(%struct.nouveau_bo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
