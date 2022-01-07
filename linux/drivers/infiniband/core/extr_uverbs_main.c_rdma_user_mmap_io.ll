; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_rdma_user_mmap_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_rdma_user_mmap_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { %struct.ib_uverbs_file* }
%struct.ib_uverbs_file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_uverbs_file* }
%struct.rdma_umap_priv = type { i32 }

@VM_SHARED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_user_mmap_io(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_ucontext*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_uverbs_file*, align 8
  %13 = alloca %struct.rdma_umap_priv*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %7, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %15 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %14, i32 0, i32 0
  %16 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %15, align 8
  store %struct.ib_uverbs_file* %16, %struct.ib_uverbs_file** %12, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VM_SHARED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %95

26:                                               ; preds = %5
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %95

39:                                               ; preds = %26
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %48, align 8
  %50 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %12, align 8
  %51 = icmp ne %struct.ib_uverbs_file* %49, %50
  br label %52

52:                                               ; preds = %44, %39
  %53 = phi i1 [ true, %39 ], [ %51, %44 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %95

60:                                               ; preds = %52
  %61 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %12, align 8
  %62 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @lockdep_assert_held(i32* %64)
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.rdma_umap_priv* @kzalloc(i32 4, i32 %66)
  store %struct.rdma_umap_priv* %67, %struct.rdma_umap_priv** %13, align 8
  %68 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %13, align 8
  %69 = icmp ne %struct.rdma_umap_priv* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %95

73:                                               ; preds = %60
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %77, i64 %80, i64 %81, i64 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %73
  %87 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %13, align 8
  %88 = call i32 @kfree(%struct.rdma_umap_priv* %87)
  %89 = load i32, i32* @EAGAIN, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %95

91:                                               ; preds = %73
  %92 = load %struct.rdma_umap_priv*, %struct.rdma_umap_priv** %13, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %94 = call i32 @rdma_umap_priv_init(%struct.rdma_umap_priv* %92, %struct.vm_area_struct* %93)
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %91, %86, %70, %57, %36, %23
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.rdma_umap_priv* @kzalloc(i32, i32) #1

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

declare dso_local i32 @kfree(%struct.rdma_umap_priv*) #1

declare dso_local i32 @rdma_umap_priv_init(%struct.rdma_umap_priv*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
