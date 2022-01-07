; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_poll_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.hns_roce_cq = type { i32*, i32, i32, i32 }
%struct.hns_roce_qp = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_v1_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.hns_roce_cq*, align 8
  %9 = alloca %struct.hns_roce_qp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  %13 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %14 = call %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq* %13)
  store %struct.hns_roce_cq* %14, %struct.hns_roce_cq** %8, align 8
  store %struct.hns_roce_qp* null, %struct.hns_roce_qp** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %8, align 8
  %16 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %15, i32 0, i32 3
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %34, %3
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %8, align 8
  %25 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %25, i64 %27
  %29 = call i32 @hns_roce_v1_poll_one(%struct.hns_roce_cq* %24, %struct.hns_roce_qp** %9, %struct.ib_wc* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %37

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %19

37:                                               ; preds = %32, %19
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %8, align 8
  %42 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %8, align 8
  %45 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 1
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %43, %48
  %50 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %8, align 8
  %51 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32 %49, i32* %52, align 4
  %53 = call i32 (...) @wmb()
  %54 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %8, align 8
  %55 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %8, align 8
  %56 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @hns_roce_v1_cq_set_ci(%struct.hns_roce_cq* %54, i32 %57)
  br label %59

59:                                               ; preds = %40, %37
  %60 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %8, align 8
  %61 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %60, i32 0, i32 3
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66, %59
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hns_roce_v1_poll_one(%struct.hns_roce_cq*, %struct.hns_roce_qp**, %struct.ib_wc*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @hns_roce_v1_cq_set_ci(%struct.hns_roce_cq*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
