; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_rdma_umap_priv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_rdma_umap_priv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_umap_priv = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32*, %struct.rdma_umap_priv*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ib_uverbs_file* }
%struct.ib_uverbs_file = type { i32, i32 }

@rdma_umap_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_umap_priv*, %struct.vm_area_struct*)* @rdma_umap_priv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_umap_priv_init(%struct.rdma_umap_priv* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.rdma_umap_priv*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.ib_uverbs_file*, align 8
  store %struct.rdma_umap_priv* %0, %struct.rdma_umap_priv** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %9, align 8
  store %struct.ib_uverbs_file* %10, %struct.ib_uverbs_file** %5, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rdma_umap_priv, %struct.rdma_umap_priv* %12, i32 0, i32 1
  store %struct.vm_area_struct* %11, %struct.vm_area_struct** %13, align 8
  %14 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %3, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 1
  store %struct.rdma_umap_priv* %14, %struct.rdma_umap_priv** %16, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  store i32* @rdma_umap_ops, i32** %18, align 8
  %19 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %20 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rdma_umap_priv, %struct.rdma_umap_priv* %22, i32 0, i32 0
  %24 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %25 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %24, i32 0, i32 1
  %26 = call i32 @list_add(i32* %23, i32* %25)
  %27 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %28 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
