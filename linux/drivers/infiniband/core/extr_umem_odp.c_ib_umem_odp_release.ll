; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem_odp.c_ib_umem_odp_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem_odp.c_ib_umem_odp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_umem_odp = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, %struct.ib_ucontext_per_mm* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_ucontext_per_mm = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_umem_odp_release(%struct.ib_umem_odp* %0) #0 {
  %2 = alloca %struct.ib_umem_odp*, align 8
  %3 = alloca %struct.ib_ucontext_per_mm*, align 8
  store %struct.ib_umem_odp* %0, %struct.ib_umem_odp** %2, align 8
  %4 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %5 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %4, i32 0, i32 7
  %6 = load %struct.ib_ucontext_per_mm*, %struct.ib_ucontext_per_mm** %5, align 8
  store %struct.ib_ucontext_per_mm* %6, %struct.ib_ucontext_per_mm** %3, align 8
  %7 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %8 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %1
  %12 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %13 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %12, i32 0, i32 6
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %16 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %17 = call i32 @ib_umem_start(%struct.ib_umem_odp* %16)
  %18 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %19 = call i32 @ib_umem_end(%struct.ib_umem_odp* %18)
  %20 = call i32 @ib_umem_odp_unmap_dma_pages(%struct.ib_umem_odp* %15, i32 %17, i32 %19)
  %21 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %22 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %21, i32 0, i32 6
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %25 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kvfree(i32 %26)
  %28 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %29 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @kvfree(i32 %30)
  br label %32

32:                                               ; preds = %11, %1
  %33 = load %struct.ib_ucontext_per_mm*, %struct.ib_ucontext_per_mm** %3, align 8
  %34 = getelementptr inbounds %struct.ib_ucontext_per_mm, %struct.ib_ucontext_per_mm* %33, i32 0, i32 0
  %35 = call i32 @down_write(i32* %34)
  %36 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %37 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %32
  %41 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %42 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %41, i32 0, i32 2
  %43 = load %struct.ib_ucontext_per_mm*, %struct.ib_ucontext_per_mm** %3, align 8
  %44 = getelementptr inbounds %struct.ib_ucontext_per_mm, %struct.ib_ucontext_per_mm* %43, i32 0, i32 2
  %45 = call i32 @interval_tree_remove(i32* %42, i32* %44)
  %46 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %47 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %46, i32 0, i32 1
  %48 = call i32 @complete_all(i32* %47)
  br label %49

49:                                               ; preds = %40, %32
  %50 = load %struct.ib_ucontext_per_mm*, %struct.ib_ucontext_per_mm** %3, align 8
  %51 = getelementptr inbounds %struct.ib_ucontext_per_mm, %struct.ib_ucontext_per_mm* %50, i32 0, i32 1
  %52 = call i32 @mmu_notifier_put(i32* %51)
  %53 = load %struct.ib_ucontext_per_mm*, %struct.ib_ucontext_per_mm** %3, align 8
  %54 = getelementptr inbounds %struct.ib_ucontext_per_mm, %struct.ib_ucontext_per_mm* %53, i32 0, i32 0
  %55 = call i32 @up_write(i32* %54)
  %56 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %57 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @mmdrop(i32 %59)
  %61 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %2, align 8
  %62 = call i32 @kfree(%struct.ib_umem_odp* %61)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_umem_odp_unmap_dma_pages(%struct.ib_umem_odp*, i32, i32) #1

declare dso_local i32 @ib_umem_start(%struct.ib_umem_odp*) #1

declare dso_local i32 @ib_umem_end(%struct.ib_umem_odp*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @interval_tree_remove(i32*, i32*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @mmu_notifier_put(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mmdrop(i32) #1

declare dso_local i32 @kfree(%struct.ib_umem_odp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
