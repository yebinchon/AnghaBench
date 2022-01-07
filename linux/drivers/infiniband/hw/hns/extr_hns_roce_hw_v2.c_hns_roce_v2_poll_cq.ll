; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_poll_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.hns_roce_cq = type { i32, i32 }
%struct.hns_roce_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*, i32, %struct.ib_wc*)* @hns_roce_v2_poll_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.hns_roce_cq*, align 8
  %8 = alloca %struct.hns_roce_qp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %11 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %12 = call %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq* %11)
  store %struct.hns_roce_cq* %12, %struct.hns_roce_cq** %7, align 8
  store %struct.hns_roce_qp* null, %struct.hns_roce_qp** %8, align 8
  %13 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %7, align 8
  %14 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %31, %3
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %7, align 8
  %23 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %23, i64 %25
  %27 = call i64 @hns_roce_v2_poll_one(%struct.hns_roce_cq* %22, %struct.hns_roce_qp** %8, %struct.ib_wc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %17

34:                                               ; preds = %29, %17
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = call i32 (...) @wmb()
  %39 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %7, align 8
  %40 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %7, align 8
  %41 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @hns_roce_v2_cq_set_ci(%struct.hns_roce_cq* %39, i32 %42)
  br label %44

44:                                               ; preds = %37, %34
  %45 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %7, align 8
  %46 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %45, i32 0, i32 0
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @hns_roce_v2_poll_one(%struct.hns_roce_cq*, %struct.hns_roce_qp**, %struct.ib_wc*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @hns_roce_v2_cq_set_ci(%struct.hns_roce_cq*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
