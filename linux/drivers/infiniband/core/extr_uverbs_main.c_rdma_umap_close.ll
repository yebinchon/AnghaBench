; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_rdma_umap_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_rdma_umap_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.rdma_umap_priv*, %struct.TYPE_2__* }
%struct.rdma_umap_priv = type { i32 }
%struct.TYPE_2__ = type { %struct.ib_uverbs_file* }
%struct.ib_uverbs_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @rdma_umap_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_umap_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.ib_uverbs_file*, align 8
  %4 = alloca %struct.rdma_umap_priv*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %8, align 8
  store %struct.ib_uverbs_file* %9, %struct.ib_uverbs_file** %3, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %11, align 8
  store %struct.rdma_umap_priv* %12, %struct.rdma_umap_priv** %4, align 8
  %13 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %4, align 8
  %14 = icmp ne %struct.rdma_umap_priv* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %18 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %4, align 8
  %21 = getelementptr inbounds %struct.rdma_umap_priv, %struct.rdma_umap_priv* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %24 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %4, align 8
  %27 = call i32 @kfree(%struct.rdma_umap_priv* %26)
  br label %28

28:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.rdma_umap_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
