; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_9__, %struct.TYPE_10__, %struct.nv84_fence_priv* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.nv84_fence_priv = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 (%struct.nouveau_drm.0*)* }
%struct.nouveau_drm.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv84_fence_suspend = common dso_local global i32 0, align 4
@nv84_fence_resume = common dso_local global i32 0, align 4
@nv84_fence_context_new = common dso_local global i32 0, align 4
@nv84_fence_context_del = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@TTM_PL_FLAG_UNCACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv84_fence_create(%struct.nouveau_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nv84_fence_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.nv84_fence_priv* @kzalloc(i32 40, i32 %7)
  %9 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %9, i32 0, i32 2
  store %struct.nv84_fence_priv* %8, %struct.nv84_fence_priv** %10, align 8
  store %struct.nv84_fence_priv* %8, %struct.nv84_fence_priv** %4, align 8
  %11 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %12 = icmp ne %struct.nv84_fence_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %107

16:                                               ; preds = %1
  %17 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %18 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 5
  store i32 (%struct.nouveau_drm.0*)* bitcast (i32 (%struct.nouveau_drm*)* @nv84_fence_destroy to i32 (%struct.nouveau_drm.0*)*), i32 (%struct.nouveau_drm.0*)** %19, align 8
  %20 = load i32, i32* @nv84_fence_suspend, align 4
  %21 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %22 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @nv84_fence_resume, align 4
  %25 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %26 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @nv84_fence_context_new, align 4
  %29 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %30 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @nv84_fence_context_del, align 4
  %33 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %34 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %37 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %40 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %39, i32 0, i32 1
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %43 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %16
  %50 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  br label %55

51:                                               ; preds = %16
  %52 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %53 = load i32, i32* @TTM_PL_FLAG_UNCACHED, align 4
  %54 = or i32 %52, %53
  br label %55

55:                                               ; preds = %51, %49
  %56 = phi i32 [ %50, %49 ], [ %54, %51 ]
  store i32 %56, i32* %5, align 4
  %57 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %58 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %57, i32 0, i32 1
  %59 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %60 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 16, %62
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %66 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %65, i32 0, i32 0
  %67 = call i32 @nouveau_bo_new(%struct.TYPE_10__* %58, i32 %63, i32 0, i32 %64, i32 0, i32 0, i32* null, i32* null, i32* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %55
  %71 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %72 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @nouveau_bo_pin(i32 %73, i32 %74, i32 0)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %70
  %79 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %80 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @nouveau_bo_map(i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %87 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @nouveau_bo_unpin(i32 %88)
  br label %90

90:                                               ; preds = %85, %78
  br label %91

91:                                               ; preds = %90, %70
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %96 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %95, i32 0, i32 0
  %97 = call i32 @nouveau_bo_ref(i32* null, i32* %96)
  br label %98

98:                                               ; preds = %94, %91
  br label %99

99:                                               ; preds = %98, %55
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %104 = call i32 @nv84_fence_destroy(%struct.nouveau_drm* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %13
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.nv84_fence_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @nv84_fence_destroy(%struct.nouveau_drm*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nouveau_bo_new(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @nouveau_bo_pin(i32, i32, i32) #1

declare dso_local i32 @nouveau_bo_map(i32) #1

declare dso_local i32 @nouveau_bo_unpin(i32) #1

declare dso_local i32 @nouveau_bo_ref(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
