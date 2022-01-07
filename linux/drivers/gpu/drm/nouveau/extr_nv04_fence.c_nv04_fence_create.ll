; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv04_fence.c_nv04_fence_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv04_fence.c_nv04_fence_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.nv04_fence_priv* }
%struct.nv04_fence_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv04_fence_destroy = common dso_local global i32 0, align 4
@nv04_fence_context_new = common dso_local global i32 0, align 4
@nv04_fence_context_del = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_fence_create(%struct.nouveau_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nv04_fence_priv*, align 8
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.nv04_fence_priv* @kzalloc(i32 12, i32 %5)
  %7 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %7, i32 0, i32 0
  store %struct.nv04_fence_priv* %6, %struct.nv04_fence_priv** %8, align 8
  store %struct.nv04_fence_priv* %6, %struct.nv04_fence_priv** %4, align 8
  %9 = load %struct.nv04_fence_priv*, %struct.nv04_fence_priv** %4, align 8
  %10 = icmp ne %struct.nv04_fence_priv* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load i32, i32* @nv04_fence_destroy, align 4
  %16 = load %struct.nv04_fence_priv*, %struct.nv04_fence_priv** %4, align 8
  %17 = getelementptr inbounds %struct.nv04_fence_priv, %struct.nv04_fence_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @nv04_fence_context_new, align 4
  %20 = load %struct.nv04_fence_priv*, %struct.nv04_fence_priv** %4, align 8
  %21 = getelementptr inbounds %struct.nv04_fence_priv, %struct.nv04_fence_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @nv04_fence_context_del, align 4
  %24 = load %struct.nv04_fence_priv*, %struct.nv04_fence_priv** %4, align 8
  %25 = getelementptr inbounds %struct.nv04_fence_priv, %struct.nv04_fence_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.nv04_fence_priv* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
