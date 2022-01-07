; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_del_flush_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_del_flush_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ocrdma_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocrdma_del_flush_qp(%struct.ocrdma_qp* %0) #0 {
  %2 = alloca %struct.ocrdma_qp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %7 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %9)
  store %struct.ocrdma_dev* %10, %struct.ocrdma_dev** %5, align 8
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %16 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %19 = call i32 @ocrdma_is_qp_in_sq_flushlist(i32 %17, %struct.ocrdma_qp* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %24 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %23, i32 0, i32 3
  %25 = call i32 @list_del(i32* %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %28 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %33 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %36 = call i32 @ocrdma_is_qp_in_rq_flushlist(i32 %34, %struct.ocrdma_qp* %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %41 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %40, i32 0, i32 0
  %42 = call i32 @list_del(i32* %41)
  br label %43

43:                                               ; preds = %39, %31
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %46 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ocrdma_is_qp_in_sq_flushlist(i32, %struct.ocrdma_qp*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ocrdma_is_qp_in_rq_flushlist(i32, %struct.ocrdma_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
