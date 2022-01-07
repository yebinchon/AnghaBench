; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_context_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_context_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32, %struct.nv84_fence_chan*, %struct.TYPE_3__* }
%struct.nv84_fence_chan = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 (%struct.nouveau_channel.0*)*, i32, i32 }
%struct.nouveau_channel.0 = type opaque
%struct.TYPE_3__ = type { %struct.nv84_fence_priv* }
%struct.nv84_fence_priv = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv84_fence_emit = common dso_local global i32 0, align 4
@nv84_fence_sync = common dso_local global i32 0, align 4
@nv84_fence_emit32 = common dso_local global i32 0, align 4
@nv84_fence_sync32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv84_fence_context_new(%struct.nouveau_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca %struct.nv84_fence_priv*, align 8
  %5 = alloca %struct.nv84_fence_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %3, align 8
  %7 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %10, align 8
  store %struct.nv84_fence_priv* %11, %struct.nv84_fence_priv** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nv84_fence_chan* @kzalloc(i32 40, i32 %12)
  %14 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %15 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %14, i32 0, i32 1
  store %struct.nv84_fence_chan* %13, %struct.nv84_fence_chan** %15, align 8
  store %struct.nv84_fence_chan* %13, %struct.nv84_fence_chan** %5, align 8
  %16 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %17 = icmp ne %struct.nv84_fence_chan* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %72

21:                                               ; preds = %1
  %22 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %23 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %24 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %23, i32 0, i32 1
  %25 = call i32 @nouveau_fence_context_new(%struct.nouveau_channel* %22, %struct.TYPE_4__* %24)
  %26 = load i32, i32* @nv84_fence_emit, align 4
  %27 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %28 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @nv84_fence_sync, align 4
  %31 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %32 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 8
  %34 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %35 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32 (%struct.nouveau_channel.0*)* bitcast (i32 (%struct.nouveau_channel*)* @nv84_fence_read to i32 (%struct.nouveau_channel.0*)*), i32 (%struct.nouveau_channel.0*)** %36, align 8
  %37 = load i32, i32* @nv84_fence_emit32, align 4
  %38 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %39 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @nv84_fence_sync32, align 4
  %42 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %43 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %46 = call i32 @nv84_fence_read(%struct.nouveau_channel* %45)
  %47 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %48 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %51 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %54 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %57 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %60 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %59, i32 0, i32 0
  %61 = call i32 @nouveau_vma_new(i32 %55, i32 %58, i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %63 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %21
  %68 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %69 = call i32 @nv84_fence_context_del(%struct.nouveau_channel* %68)
  br label %70

70:                                               ; preds = %67, %21
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.nv84_fence_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_fence_context_new(%struct.nouveau_channel*, %struct.TYPE_4__*) #1

declare dso_local i32 @nv84_fence_read(%struct.nouveau_channel*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nouveau_vma_new(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nv84_fence_context_del(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
