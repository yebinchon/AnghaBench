; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_cq.c_iwch_poll_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_cq.c_iwch_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.iwch_dev = type { i32 }
%struct.iwch_cq = type { i32, %struct.iwch_dev* }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwch_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.iwch_dev*, align 8
  %9 = alloca %struct.iwch_cq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %14 = call %struct.iwch_cq* @to_iwch_cq(%struct.ib_cq* %13)
  store %struct.iwch_cq* %14, %struct.iwch_cq** %9, align 8
  %15 = load %struct.iwch_cq*, %struct.iwch_cq** %9, align 8
  %16 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %15, i32 0, i32 1
  %17 = load %struct.iwch_dev*, %struct.iwch_dev** %16, align 8
  store %struct.iwch_dev* %17, %struct.iwch_dev** %8, align 8
  %18 = load %struct.iwch_cq*, %struct.iwch_cq** %9, align 8
  %19 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %18, i32 0, i32 0
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %45, %3
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %35, %26
  %28 = load %struct.iwch_dev*, %struct.iwch_dev** %8, align 8
  %29 = load %struct.iwch_cq*, %struct.iwch_cq** %9, align 8
  %30 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %30, i64 %32
  %34 = call i32 @iwch_poll_cq_one(%struct.iwch_dev* %28, %struct.iwch_cq* %29, %struct.ib_wc* %33)
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %27, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %48

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %22

48:                                               ; preds = %43, %22
  %49 = load %struct.iwch_cq*, %struct.iwch_cq** %9, align 8
  %50 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %49, i32 0, i32 0
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.iwch_cq* @to_iwch_cq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iwch_poll_cq_one(%struct.iwch_dev*, %struct.iwch_cq*, %struct.ib_wc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
