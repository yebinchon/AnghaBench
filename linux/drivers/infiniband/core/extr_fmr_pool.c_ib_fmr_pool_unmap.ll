; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_fmr_pool.c_ib_fmr_pool_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_fmr_pool.c_ib_fmr_pool_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pool_fmr = type { i64, i32, i32, %struct.ib_fmr_pool* }
%struct.ib_fmr_pool = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_fmr_pool_unmap(%struct.ib_pool_fmr* %0) #0 {
  %2 = alloca %struct.ib_pool_fmr*, align 8
  %3 = alloca %struct.ib_fmr_pool*, align 8
  %4 = alloca i64, align 8
  store %struct.ib_pool_fmr* %0, %struct.ib_pool_fmr** %2, align 8
  %5 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %2, align 8
  %6 = getelementptr inbounds %struct.ib_pool_fmr, %struct.ib_pool_fmr* %5, i32 0, i32 3
  %7 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %6, align 8
  store %struct.ib_fmr_pool* %7, %struct.ib_fmr_pool** %3, align 8
  %8 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %9 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %8, i32 0, i32 3
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %2, align 8
  %13 = getelementptr inbounds %struct.ib_pool_fmr, %struct.ib_pool_fmr* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %2, align 8
  %17 = getelementptr inbounds %struct.ib_pool_fmr, %struct.ib_pool_fmr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %1
  %21 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %2, align 8
  %22 = getelementptr inbounds %struct.ib_pool_fmr, %struct.ib_pool_fmr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %25 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %2, align 8
  %30 = getelementptr inbounds %struct.ib_pool_fmr, %struct.ib_pool_fmr* %29, i32 0, i32 1
  %31 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %32 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %31, i32 0, i32 8
  %33 = call i32 @list_add_tail(i32* %30, i32* %32)
  br label %59

34:                                               ; preds = %20
  %35 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %2, align 8
  %36 = getelementptr inbounds %struct.ib_pool_fmr, %struct.ib_pool_fmr* %35, i32 0, i32 1
  %37 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %38 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %37, i32 0, i32 7
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  %40 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %41 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %45 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %34
  %49 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %50 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %49, i32 0, i32 6
  %51 = call i32 @atomic_inc(i32* %50)
  %52 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %53 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %56 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %55, i32 0, i32 4
  %57 = call i32 @kthread_queue_work(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %48, %34
  br label %59

59:                                               ; preds = %58, %28
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %62 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %61, i32 0, i32 3
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kthread_queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
