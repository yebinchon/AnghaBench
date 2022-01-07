; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_arm_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_arm_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.c4iw_cq = type { i32, i32 }

@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@IB_CQ_REPORT_MISSED_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_arm_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.c4iw_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %9 = call %struct.c4iw_cq* @to_c4iw_cq(%struct.ib_cq* %8)
  store %struct.c4iw_cq* %9, %struct.c4iw_cq** %5, align 8
  %10 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %11 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %15 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %14, i32 0, i32 1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @t4_arm_cq(i32* %15, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IB_CQ_REPORT_MISSED_EVENTS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %29 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %28, i32 0, i32 1
  %30 = call i32 @t4_cq_notempty(i32* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %33 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %32, i32 0, i32 0
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.c4iw_cq* @to_c4iw_cq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @t4_arm_cq(i32*, i32) #1

declare dso_local i32 @t4_cq_notempty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
