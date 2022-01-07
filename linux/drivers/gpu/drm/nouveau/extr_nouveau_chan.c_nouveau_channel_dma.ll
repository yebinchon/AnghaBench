; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { i32 }
%struct.nvif_device = type { i32 }
%struct.nouveau_channel = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nv03_channel_dma_v0 = type { i32, i32, i32, i64 }

@nouveau_channel_dma.oclasses = internal constant [5 x i64] [i64 128, i64 129, i64 130, i64 131, i64 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_drm*, %struct.nvif_device*, %struct.nouveau_channel**)* @nouveau_channel_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_channel_dma(%struct.nouveau_drm* %0, %struct.nvif_device* %1, %struct.nouveau_channel** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nvif_device*, align 8
  %7 = alloca %struct.nouveau_channel**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.nv03_channel_dma_v0, align 8
  %10 = alloca %struct.nouveau_channel*, align 8
  %11 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %5, align 8
  store %struct.nvif_device* %1, %struct.nvif_device** %6, align 8
  store %struct.nouveau_channel** %2, %struct.nouveau_channel*** %7, align 8
  store i64* getelementptr inbounds ([5 x i64], [5 x i64]* @nouveau_channel_dma.oclasses, i64 0, i64 0), i64** %8, align 8
  %12 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %13 = load %struct.nvif_device*, %struct.nvif_device** %6, align 8
  %14 = call i32 @nouveau_channel_prep(%struct.nouveau_drm* %12, %struct.nvif_device* %13, i32 65536, %struct.nouveau_channel** %10)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.nouveau_channel*, %struct.nouveau_channel** %10, align 8
  %16 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %7, align 8
  store %struct.nouveau_channel* %15, %struct.nouveau_channel** %16, align 8
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %65

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.nv03_channel_dma_v0, %struct.nv03_channel_dma_v0* %9, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.nouveau_channel*, %struct.nouveau_channel** %10, align 8
  %24 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @nvif_handle(i32* %25)
  %27 = getelementptr inbounds %struct.nv03_channel_dma_v0, %struct.nv03_channel_dma_v0* %9, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.nouveau_channel*, %struct.nouveau_channel** %10, align 8
  %29 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.nv03_channel_dma_v0, %struct.nv03_channel_dma_v0* %9, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %59, %21
  %34 = load %struct.nvif_device*, %struct.nvif_device** %6, align 8
  %35 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %34, i32 0, i32 0
  %36 = load i64*, i64** %8, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %8, align 8
  %38 = load i64, i64* %36, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.nouveau_channel*, %struct.nouveau_channel** %10, align 8
  %41 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %40, i32 0, i32 1
  %42 = call i32 @nvif_object_init(i32* %35, i32 0, i32 %39, %struct.nv03_channel_dma_v0* %9, i32 24, i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.nv03_channel_dma_v0, %struct.nv03_channel_dma_v0* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nouveau_channel*, %struct.nouveau_channel** %10, align 8
  %49 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %65

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ false, %52 ], [ %58, %55 ]
  br i1 %60, label %33, label %61

61:                                               ; preds = %59
  %62 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %7, align 8
  %63 = call i32 @nouveau_channel_del(%struct.nouveau_channel** %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %45, %19
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @nouveau_channel_prep(%struct.nouveau_drm*, %struct.nvif_device*, i32, %struct.nouveau_channel**) #1

declare dso_local i32 @nvif_handle(i32*) #1

declare dso_local i32 @nvif_object_init(i32*, i32, i32, %struct.nv03_channel_dma_v0*, i32, i32*) #1

declare dso_local i32 @nouveau_channel_del(%struct.nouveau_channel**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
