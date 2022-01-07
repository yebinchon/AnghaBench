; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_flush_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_flush_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_cq = type { i32, i32, i32, %struct.ocrdma_cqe*, %struct.TYPE_2__ }
%struct.ocrdma_cqe = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ocrdma_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_cq*)* @ocrdma_flush_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_flush_cq(%struct.ocrdma_cq* %0) #0 {
  %2 = alloca %struct.ocrdma_cq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ocrdma_dev*, align 8
  %7 = alloca %struct.ocrdma_cqe*, align 8
  store %struct.ocrdma_cq* %0, %struct.ocrdma_cq** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %2, align 8
  %9 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %11)
  store %struct.ocrdma_dev* %12, %struct.ocrdma_dev** %6, align 8
  store %struct.ocrdma_cqe* null, %struct.ocrdma_cqe** %7, align 8
  %13 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %2, align 8
  %14 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %13, i32 0, i32 3
  %15 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %14, align 8
  store %struct.ocrdma_cqe* %15, %struct.ocrdma_cqe** %7, align 8
  %16 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %2, align 8
  %17 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %3, align 4
  %19 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %2, align 8
  %20 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %19, i32 0, i32 1
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  br label %23

23:                                               ; preds = %34, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %2, align 8
  %28 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %29 = call i64 @is_cqe_valid(%struct.ocrdma_cq* %27, %struct.ocrdma_cqe* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %36 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %35, i32 1
  store %struct.ocrdma_cqe* %36, %struct.ocrdma_cqe** %7, align 8
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %3, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %41 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %2, align 8
  %42 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev* %40, i32 %43, i32 0, i32 0, i32 %44)
  %46 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %2, align 8
  %47 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %46, i32 0, i32 1
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @is_cqe_valid(%struct.ocrdma_cq*, %struct.ocrdma_cqe*) #1

declare dso_local i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
