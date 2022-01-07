; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_rdma_umap_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_rdma_umap_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.rdma_umap_priv*, %struct.TYPE_3__* }
%struct.rdma_umap_priv = type { i32 }
%struct.TYPE_3__ = type { %struct.ib_uverbs_file* }
%struct.ib_uverbs_file = type { i32, i64 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @rdma_umap_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_umap_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.ib_uverbs_file*, align 8
  %5 = alloca %struct.rdma_umap_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %7 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %8 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %12, align 8
  store %struct.ib_uverbs_file* %13, %struct.ib_uverbs_file** %4, align 8
  %14 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %15 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %17, align 8
  store %struct.rdma_umap_priv* %18, %struct.rdma_umap_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %19 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %5, align 8
  %20 = icmp ne %struct.rdma_umap_priv* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %22, i32* %2, align 4
  br label %84

23:                                               ; preds = %1
  %24 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %25 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VM_WRITE, align 4
  %30 = load i32, i32* @VM_MAYWRITE, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %23
  %35 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %36 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @ZERO_PAGE(i32 %37)
  %39 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %40 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %42 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @get_page(i64 %43)
  store i32 0, i32* %2, align 4
  br label %84

45:                                               ; preds = %23
  %46 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %47 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %50 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %45
  %54 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %55 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @__GFP_ZERO, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @alloc_pages(i32 %58, i32 0)
  %60 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %61 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %53, %45
  %63 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %64 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %69 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %72 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %74 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @get_page(i64 %75)
  br label %79

77:                                               ; preds = %62
  %78 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %67
  %80 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %4, align 8
  %81 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %34, %21
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @ZERO_PAGE(i32) #1

declare dso_local i32 @get_page(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @alloc_pages(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
