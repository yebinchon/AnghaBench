; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem_odp.c_ib_umem_alloc_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem_odp.c_ib_umem_alloc_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.mmu_notifier = type { i32 }
%struct.ib_ucontext_per_mm = type { %struct.mmu_notifier, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT_CACHED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PIDTYPE_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmu_notifier* (%struct.mm_struct*)* @ib_umem_alloc_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmu_notifier* @ib_umem_alloc_notifier(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mmu_notifier*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.ib_ucontext_per_mm*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ib_ucontext_per_mm* @kzalloc(i32 16, i32 %5)
  store %struct.ib_ucontext_per_mm* %6, %struct.ib_ucontext_per_mm** %4, align 8
  %7 = load %struct.ib_ucontext_per_mm*, %struct.ib_ucontext_per_mm** %4, align 8
  %8 = icmp ne %struct.ib_ucontext_per_mm* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.mmu_notifier* @ERR_PTR(i32 %11)
  store %struct.mmu_notifier* %12, %struct.mmu_notifier** %2, align 8
  br label %38

13:                                               ; preds = %1
  %14 = load i32, i32* @RB_ROOT_CACHED, align 4
  %15 = load %struct.ib_ucontext_per_mm*, %struct.ib_ucontext_per_mm** %4, align 8
  %16 = getelementptr inbounds %struct.ib_ucontext_per_mm, %struct.ib_ucontext_per_mm* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ib_ucontext_per_mm*, %struct.ib_ucontext_per_mm** %4, align 8
  %18 = getelementptr inbounds %struct.ib_ucontext_per_mm, %struct.ib_ucontext_per_mm* %17, i32 0, i32 2
  %19 = call i32 @init_rwsem(i32* %18)
  %20 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.mm_struct*, %struct.mm_struct** %22, align 8
  %24 = icmp ne %struct.mm_struct* %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PIDTYPE_PID, align 4
  %32 = call i32 @get_task_pid(i32 %30, i32 %31)
  %33 = load %struct.ib_ucontext_per_mm*, %struct.ib_ucontext_per_mm** %4, align 8
  %34 = getelementptr inbounds %struct.ib_ucontext_per_mm, %struct.ib_ucontext_per_mm* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = call i32 (...) @rcu_read_unlock()
  %36 = load %struct.ib_ucontext_per_mm*, %struct.ib_ucontext_per_mm** %4, align 8
  %37 = getelementptr inbounds %struct.ib_ucontext_per_mm, %struct.ib_ucontext_per_mm* %36, i32 0, i32 0
  store %struct.mmu_notifier* %37, %struct.mmu_notifier** %2, align 8
  br label %38

38:                                               ; preds = %13, %9
  %39 = load %struct.mmu_notifier*, %struct.mmu_notifier** %2, align 8
  ret %struct.mmu_notifier* %39
}

declare dso_local %struct.ib_ucontext_per_mm* @kzalloc(i32, i32) #1

declare dso_local %struct.mmu_notifier* @ERR_PTR(i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @get_task_pid(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
