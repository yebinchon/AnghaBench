; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_scatterlist_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_scatterlist_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_object = type { i32, %struct.sg_table*, %struct.TYPE_2__ }
%struct.sg_table = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@ETNA_BO_CACHE_MASK = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gem_object*)* @etnaviv_gem_scatterlist_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_gem_scatterlist_unmap(%struct.etnaviv_gem_object* %0) #0 {
  %2 = alloca %struct.etnaviv_gem_object*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.sg_table*, align 8
  store %struct.etnaviv_gem_object* %0, %struct.etnaviv_gem_object** %2, align 8
  %5 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %6 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %10 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %9, i32 0, i32 1
  %11 = load %struct.sg_table*, %struct.sg_table** %10, align 8
  store %struct.sg_table* %11, %struct.sg_table** %4, align 8
  %12 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %13 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ETNA_BO_CACHE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %23 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %26 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %29 = call i32 @dma_unmap_sg(i32 %21, i32 %24, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
