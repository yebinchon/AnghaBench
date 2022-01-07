; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_srq.c_pvrdma_free_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_srq.c_pvrdma_free_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_dev = type { i32, i32, i32** }
%struct.pvrdma_srq = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvrdma_dev*, %struct.pvrdma_srq*)* @pvrdma_free_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvrdma_free_srq(%struct.pvrdma_dev* %0, %struct.pvrdma_srq* %1) #0 {
  %3 = alloca %struct.pvrdma_dev*, align 8
  %4 = alloca %struct.pvrdma_srq*, align 8
  %5 = alloca i64, align 8
  store %struct.pvrdma_dev* %0, %struct.pvrdma_dev** %3, align 8
  store %struct.pvrdma_srq* %1, %struct.pvrdma_srq** %4, align 8
  %6 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %10, i32 0, i32 2
  %12 = load i32**, i32*** %11, align 8
  %13 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %4, align 8
  %14 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32*, i32** %12, i64 %15
  store i32* null, i32** %16, align 8
  %17 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %4, align 8
  %22 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %21, i32 0, i32 4
  %23 = call i64 @refcount_dec_and_test(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %4, align 8
  %27 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %26, i32 0, i32 3
  %28 = call i32 @complete(i32* %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %4, align 8
  %31 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %30, i32 0, i32 3
  %32 = call i32 @wait_for_completion(i32* %31)
  %33 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %4, align 8
  %34 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ib_umem_release(i32 %35)
  %37 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %38 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %4, align 8
  %39 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %38, i32 0, i32 1
  %40 = call i32 @pvrdma_page_dir_cleanup(%struct.pvrdma_dev* %37, i32* %39)
  %41 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %41, i32 0, i32 0
  %43 = call i32 @atomic_dec(i32* %42)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @pvrdma_page_dir_cleanup(%struct.pvrdma_dev*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
