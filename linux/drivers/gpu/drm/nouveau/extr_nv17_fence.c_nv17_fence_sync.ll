; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv17_fence.c_nv17_fence_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv17_fence.c_nv17_fence_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { i32 }
%struct.nouveau_channel = type { %struct.nv10_fence_chan*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.nv10_fence_chan = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.nv10_fence_priv* }
%struct.nv10_fence_priv = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_cli = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@NV11_SUBCHAN_DMA_SEMAPHORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv17_fence_sync(%struct.nouveau_fence* %0, %struct.nouveau_channel* %1, %struct.nouveau_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_fence*, align 8
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca %struct.nouveau_channel*, align 8
  %8 = alloca %struct.nouveau_cli*, align 8
  %9 = alloca %struct.nv10_fence_priv*, align 8
  %10 = alloca %struct.nv10_fence_chan*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %5, align 8
  store %struct.nouveau_channel* %1, %struct.nouveau_channel** %6, align 8
  store %struct.nouveau_channel* %2, %struct.nouveau_channel** %7, align 8
  %13 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.nouveau_cli*
  store %struct.nouveau_cli* %18, %struct.nouveau_cli** %8, align 8
  %19 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %20 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %22, align 8
  store %struct.nv10_fence_priv* %23, %struct.nv10_fence_priv** %9, align 8
  %24 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %25 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %24, i32 0, i32 0
  %26 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %25, align 8
  store %struct.nv10_fence_chan* %26, %struct.nv10_fence_chan** %10, align 8
  %27 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %28 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %27, i32 0, i32 0
  %29 = call i32 @mutex_trylock(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %107

34:                                               ; preds = %3
  %35 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %9, align 8
  %36 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %9, align 8
  %39 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %9, align 8
  %42 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %42, align 4
  %45 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %9, align 8
  %46 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %49 = call i32 @RING_SPACE(%struct.nouveau_channel* %48, i32 5)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %34
  %53 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %54 = load i32, i32* @NV11_SUBCHAN_DMA_SEMAPHORE, align 4
  %55 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %53, i32 0, i32 %54, i32 4)
  %56 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %57 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %10, align 8
  %58 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @OUT_RING(%struct.nouveau_channel* %56, i32 %60)
  %62 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %63 = call i32 @OUT_RING(%struct.nouveau_channel* %62, i32 0)
  %64 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 0
  %67 = call i32 @OUT_RING(%struct.nouveau_channel* %64, i32 %66)
  %68 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @OUT_RING(%struct.nouveau_channel* %68, i32 %70)
  %72 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %73 = call i32 @FIRE_RING(%struct.nouveau_channel* %72)
  br label %74

74:                                               ; preds = %52, %34
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %103, label %77

77:                                               ; preds = %74
  %78 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %79 = call i32 @RING_SPACE(%struct.nouveau_channel* %78, i32 5)
  store i32 %79, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %77
  %82 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %83 = load i32, i32* @NV11_SUBCHAN_DMA_SEMAPHORE, align 4
  %84 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %82, i32 0, i32 %83, i32 4)
  %85 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %86 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %10, align 8
  %87 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @OUT_RING(%struct.nouveau_channel* %85, i32 %89)
  %91 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %92 = call i32 @OUT_RING(%struct.nouveau_channel* %91, i32 0)
  %93 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i32 @OUT_RING(%struct.nouveau_channel* %93, i32 %95)
  %97 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 2
  %100 = call i32 @OUT_RING(%struct.nouveau_channel* %97, i32 %99)
  %101 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %102 = call i32 @FIRE_RING(%struct.nouveau_channel* %101)
  br label %103

103:                                              ; preds = %81, %77, %74
  %104 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %105 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %31
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
