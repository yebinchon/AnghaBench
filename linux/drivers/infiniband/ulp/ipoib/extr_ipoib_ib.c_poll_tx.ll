; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_poll_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_poll_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { %struct.ib_wc*, i32, i32 }
%struct.ib_wc = type { i32 }

@MAX_SEND_CQE = common dso_local global i32 0, align 4
@IPOIB_OP_CM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*)* @poll_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_tx(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca %struct.ipoib_dev_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_wc*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %2, align 8
  %6 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %7 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAX_SEND_CQE, align 4
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 0
  %12 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %13 = call i32 @ib_poll_cq(i32 %8, i32 %9, %struct.ib_wc* %12)
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %54, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %20 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %19, i32 0, i32 0
  %21 = load %struct.ib_wc*, %struct.ib_wc** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %21, i64 %23
  store %struct.ib_wc* %24, %struct.ib_wc** %5, align 8
  %25 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %26 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IPOIB_OP_CM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %18
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %33 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %36 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %35, i32 0, i32 0
  %37 = load %struct.ib_wc*, %struct.ib_wc** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %37, i64 %39
  %41 = call i32 @ipoib_cm_handle_tx_wc(i32 %34, %struct.ib_wc* %40)
  br label %53

42:                                               ; preds = %18
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %44 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %47 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %46, i32 0, i32 0
  %48 = load %struct.ib_wc*, %struct.ib_wc** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %48, i64 %50
  %52 = call i32 @ipoib_ib_handle_tx_wc(i32 %45, %struct.ib_wc* %51)
  br label %53

53:                                               ; preds = %42, %31
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %14

57:                                               ; preds = %14
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @MAX_SEND_CQE, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local i32 @ib_poll_cq(i32, i32, %struct.ib_wc*) #1

declare dso_local i32 @ipoib_cm_handle_tx_wc(i32, %struct.ib_wc*) #1

declare dso_local i32 @ipoib_ib_handle_tx_wc(i32, %struct.ib_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
