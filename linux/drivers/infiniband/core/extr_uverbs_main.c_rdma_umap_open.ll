; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_rdma_umap_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_rdma_umap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, %struct.rdma_umap_priv*, %struct.TYPE_2__* }
%struct.rdma_umap_priv = type { i32 }
%struct.TYPE_2__ = type { %struct.ib_uverbs_file* }
%struct.ib_uverbs_file = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @rdma_umap_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_umap_open(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.ib_uverbs_file*, align 8
  %4 = alloca %struct.rdma_umap_priv*, align 8
  %5 = alloca %struct.rdma_umap_priv*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %9, align 8
  store %struct.ib_uverbs_file* %10, %struct.ib_uverbs_file** %3, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 2
  %13 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %12, align 8
  store %struct.rdma_umap_priv* %13, %struct.rdma_umap_priv** %4, align 8
  %14 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %4, align 8
  %15 = icmp ne %struct.rdma_umap_priv* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %61

17:                                               ; preds = %1
  %18 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %19 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %18, i32 0, i32 0
  %20 = call i32 @down_read_trylock(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %46

23:                                               ; preds = %17
  %24 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %25 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %42

29:                                               ; preds = %23
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.rdma_umap_priv* @kzalloc(i32 4, i32 %30)
  store %struct.rdma_umap_priv* %31, %struct.rdma_umap_priv** %5, align 8
  %32 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %5, align 8
  %33 = icmp ne %struct.rdma_umap_priv* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %42

35:                                               ; preds = %29
  %36 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %5, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %38 = call i32 @rdma_umap_priv_init(%struct.rdma_umap_priv* %36, %struct.vm_area_struct* %37)
  %39 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %40 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %39, i32 0, i32 0
  %41 = call i32 @up_read(i32* %40)
  br label %61

42:                                               ; preds = %34, %28
  %43 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %44 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %43, i32 0, i32 0
  %45 = call i32 @up_read(i32* %44)
  br label %46

46:                                               ; preds = %42, %22
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 2
  store %struct.rdma_umap_priv* null, %struct.rdma_umap_priv** %48, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = call i32 @zap_vma_ptes(%struct.vm_area_struct* %49, i64 %52, i64 %59)
  br label %61

61:                                               ; preds = %46, %35, %16
  ret void
}

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local %struct.rdma_umap_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @rdma_umap_priv_init(%struct.rdma_umap_priv*, %struct.vm_area_struct*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @zap_vma_ptes(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
