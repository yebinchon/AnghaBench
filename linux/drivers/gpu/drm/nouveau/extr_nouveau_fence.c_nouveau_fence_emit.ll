; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { i32, i32, i64, %struct.nouveau_channel* }
%struct.nouveau_channel = type { %struct.TYPE_2__*, %struct.nouveau_fence_chan* }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_fence_chan = type { i32 (%struct.nouveau_fence.0*)*, i32, i32, i32, i32, i32, i32 }
%struct.nouveau_fence.0 = type opaque
%struct.nouveau_fence_priv = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@nouveau_fence_ops_uevent = common dso_local global i32 0, align 4
@nouveau_fence_ops_legacy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fence_emit(%struct.nouveau_fence* %0, %struct.nouveau_channel* %1) #0 {
  %3 = alloca %struct.nouveau_fence*, align 8
  %4 = alloca %struct.nouveau_channel*, align 8
  %5 = alloca %struct.nouveau_fence_chan*, align 8
  %6 = alloca %struct.nouveau_fence_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %3, align 8
  store %struct.nouveau_channel* %1, %struct.nouveau_channel** %4, align 8
  %8 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %9 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %8, i32 0, i32 1
  %10 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %9, align 8
  store %struct.nouveau_fence_chan* %10, %struct.nouveau_fence_chan** %5, align 8
  %11 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.nouveau_fence_priv*
  store %struct.nouveau_fence_priv* %17, %struct.nouveau_fence_priv** %6, align 8
  %18 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %19 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %20 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %19, i32 0, i32 3
  store %struct.nouveau_channel* %18, %struct.nouveau_channel** %20, align 8
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 15, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %27 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.nouveau_fence_priv*, %struct.nouveau_fence_priv** %6, align 8
  %29 = getelementptr inbounds %struct.nouveau_fence_priv, %struct.nouveau_fence_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %2
  %33 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %34 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %33, i32 0, i32 1
  %35 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %36 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %35, i32 0, i32 1
  %37 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %38 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %41 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = call i32 @dma_fence_init(i32* %34, i32* @nouveau_fence_ops_uevent, i32* %36, i32 %39, i32 %43)
  br label %58

45:                                               ; preds = %2
  %46 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %47 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %46, i32 0, i32 1
  %48 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %49 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %48, i32 0, i32 1
  %50 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %51 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %54 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = call i32 @dma_fence_init(i32* %47, i32* @nouveau_fence_ops_legacy, i32* %49, i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %45, %32
  %59 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %60 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %59, i32 0, i32 4
  %61 = call i32 @kref_get(i32* %60)
  %62 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %63 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %62, i32 0, i32 1
  %64 = call i32 @trace_dma_fence_emit(i32* %63)
  %65 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %66 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %65, i32 0, i32 0
  %67 = load i32 (%struct.nouveau_fence.0*)*, i32 (%struct.nouveau_fence.0*)** %66, align 8
  %68 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %69 = bitcast %struct.nouveau_fence* %68 to %struct.nouveau_fence.0*
  %70 = call i32 %67(%struct.nouveau_fence.0* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %58
  %74 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %75 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %74, i32 0, i32 1
  %76 = call i32 @dma_fence_get(i32* %75)
  %77 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %78 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %77, i32 0, i32 1
  %79 = call i32 @spin_lock_irq(i32* %78)
  %80 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %81 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %82 = call i64 @nouveau_fence_update(%struct.nouveau_channel* %80, %struct.nouveau_fence_chan* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %86 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %85, i32 0, i32 3
  %87 = call i32 @nvif_notify_put(i32* %86)
  br label %88

88:                                               ; preds = %84, %73
  %89 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %90 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %89, i32 0, i32 0
  %91 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %92 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %91, i32 0, i32 2
  %93 = call i32 @list_add_tail(i32* %90, i32* %92)
  %94 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %5, align 8
  %95 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock_irq(i32* %95)
  br label %97

97:                                               ; preds = %88, %58
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @dma_fence_init(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @trace_dma_fence_emit(i32*) #1

declare dso_local i32 @dma_fence_get(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @nouveau_fence_update(%struct.nouveau_channel*, %struct.nouveau_fence_chan*) #1

declare dso_local i32 @nvif_notify_put(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
