; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv17_fence.c_nv17_fence_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv17_fence.c_nv17_fence_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { i32, %struct.nv10_fence_priv* }
%struct.nv10_fence_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 (%struct.nouveau_drm.0*)* }
%struct.nouveau_drm.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv17_fence_resume = common dso_local global i32 0, align 4
@nv17_fence_context_new = common dso_local global i32 0, align 4
@nv10_fence_context_del = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv17_fence_create(%struct.nouveau_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nv10_fence_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nv10_fence_priv* @kzalloc(i32 32, i32 %6)
  %8 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %8, i32 0, i32 1
  store %struct.nv10_fence_priv* %7, %struct.nv10_fence_priv** %9, align 8
  store %struct.nv10_fence_priv* %7, %struct.nv10_fence_priv** %4, align 8
  %10 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %11 = icmp ne %struct.nv10_fence_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %84

15:                                               ; preds = %1
  %16 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %17 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i32 (%struct.nouveau_drm.0*)* bitcast (i32 (%struct.nouveau_drm*)* @nv10_fence_destroy to i32 (%struct.nouveau_drm.0*)*), i32 (%struct.nouveau_drm.0*)** %18, align 8
  %19 = load i32, i32* @nv17_fence_resume, align 4
  %20 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %21 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @nv17_fence_context_new, align 4
  %24 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %25 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @nv10_fence_context_del, align 4
  %28 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %29 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %32 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %31, i32 0, i32 1
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %35 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %34, i32 0, i32 0
  %36 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %37 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %38 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %37, i32 0, i32 0
  %39 = call i32 @nouveau_bo_new(i32* %35, i32 4096, i32 4096, i32 %36, i32 0, i32 0, i32* null, i32* null, i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %71, label %42

42:                                               ; preds = %15
  %43 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %44 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %47 = call i32 @nouveau_bo_pin(i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %42
  %51 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %52 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @nouveau_bo_map(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %59 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @nouveau_bo_unpin(i32 %60)
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %42
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %68 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %67, i32 0, i32 0
  %69 = call i32 @nouveau_bo_ref(i32* null, i32* %68)
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %15
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %76 = call i32 @nv10_fence_destroy(%struct.nouveau_drm* %75)
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %84

78:                                               ; preds = %71
  %79 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %80 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @nouveau_bo_wr32(i32 %81, i32 0, i32 0)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %78, %74, %12
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.nv10_fence_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @nv10_fence_destroy(%struct.nouveau_drm*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nouveau_bo_new(i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @nouveau_bo_pin(i32, i32, i32) #1

declare dso_local i32 @nouveau_bo_map(i32) #1

declare dso_local i32 @nouveau_bo_unpin(i32) #1

declare dso_local i32 @nouveau_bo_ref(i32*, i32*) #1

declare dso_local i32 @nouveau_bo_wr32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
