; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_recreate_lp_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_recreate_lp_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_recreate_lp_qp_work = type { i32, i32, %struct.completion*, i32* }
%struct.completion = type { i32 }
%struct.hns_roce_free_mr = type { i32 }
%struct.hns_roce_v1_priv = type { %struct.hns_roce_free_mr }

@HNS_ROCE_V1_RECREATE_LP_QP_TIMEOUT_MSECS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hns_roce_v1_recreate_lp_qp_work_fn = common dso_local global i32 0, align 4
@HNS_ROCE_V1_RECREATE_LP_QP_WAIT_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"recreate lp qp failed 20s timeout and return failed!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_v1_recreate_lp_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_recreate_lp_qp(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hns_roce_recreate_lp_qp_work*, align 8
  %6 = alloca %struct.hns_roce_free_mr*, align 8
  %7 = alloca %struct.hns_roce_v1_priv*, align 8
  %8 = alloca %struct.completion, align 4
  %9 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load i64, i64* @HNS_ROCE_V1_RECREATE_LP_QP_TIMEOUT_MSECS, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %18, %struct.hns_roce_v1_priv** %7, align 8
  %19 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %7, align 8
  %20 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %19, i32 0, i32 0
  store %struct.hns_roce_free_mr* %20, %struct.hns_roce_free_mr** %6, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.hns_roce_recreate_lp_qp_work* @kzalloc(i32 24, i32 %21)
  store %struct.hns_roce_recreate_lp_qp_work* %22, %struct.hns_roce_recreate_lp_qp_work** %5, align 8
  %23 = load %struct.hns_roce_recreate_lp_qp_work*, %struct.hns_roce_recreate_lp_qp_work** %5, align 8
  %24 = icmp ne %struct.hns_roce_recreate_lp_qp_work* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %75

28:                                               ; preds = %1
  %29 = load %struct.hns_roce_recreate_lp_qp_work*, %struct.hns_roce_recreate_lp_qp_work** %5, align 8
  %30 = getelementptr inbounds %struct.hns_roce_recreate_lp_qp_work, %struct.hns_roce_recreate_lp_qp_work* %29, i32 0, i32 1
  %31 = load i32, i32* @hns_roce_v1_recreate_lp_qp_work_fn, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %33, i32 0, i32 0
  %35 = load %struct.hns_roce_recreate_lp_qp_work*, %struct.hns_roce_recreate_lp_qp_work** %5, align 8
  %36 = getelementptr inbounds %struct.hns_roce_recreate_lp_qp_work, %struct.hns_roce_recreate_lp_qp_work* %35, i32 0, i32 3
  store i32* %34, i32** %36, align 8
  %37 = load %struct.hns_roce_recreate_lp_qp_work*, %struct.hns_roce_recreate_lp_qp_work** %5, align 8
  %38 = getelementptr inbounds %struct.hns_roce_recreate_lp_qp_work, %struct.hns_roce_recreate_lp_qp_work* %37, i32 0, i32 2
  store %struct.completion* %8, %struct.completion** %38, align 8
  %39 = load %struct.hns_roce_recreate_lp_qp_work*, %struct.hns_roce_recreate_lp_qp_work** %5, align 8
  %40 = getelementptr inbounds %struct.hns_roce_recreate_lp_qp_work, %struct.hns_roce_recreate_lp_qp_work* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.hns_roce_recreate_lp_qp_work*, %struct.hns_roce_recreate_lp_qp_work** %5, align 8
  %42 = getelementptr inbounds %struct.hns_roce_recreate_lp_qp_work, %struct.hns_roce_recreate_lp_qp_work* %41, i32 0, i32 2
  %43 = load %struct.completion*, %struct.completion** %42, align 8
  %44 = call i32 @init_completion(%struct.completion* %43)
  %45 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %6, align 8
  %46 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hns_roce_recreate_lp_qp_work*, %struct.hns_roce_recreate_lp_qp_work** %5, align 8
  %49 = getelementptr inbounds %struct.hns_roce_recreate_lp_qp_work, %struct.hns_roce_recreate_lp_qp_work* %48, i32 0, i32 1
  %50 = call i32 @queue_work(i32 %47, i32* %49)
  br label %51

51:                                               ; preds = %58, %28
  %52 = load i64, i64* %9, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = call i64 @try_wait_for_completion(%struct.completion* %8)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %75

58:                                               ; preds = %54
  %59 = load i64, i64* @HNS_ROCE_V1_RECREATE_LP_QP_WAIT_VALUE, align 8
  %60 = call i32 @msleep(i64 %59)
  %61 = load i64, i64* @HNS_ROCE_V1_RECREATE_LP_QP_WAIT_VALUE, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub nsw i64 %62, %61
  store i64 %63, i64* %9, align 8
  br label %51

64:                                               ; preds = %51
  %65 = load %struct.hns_roce_recreate_lp_qp_work*, %struct.hns_roce_recreate_lp_qp_work** %5, align 8
  %66 = getelementptr inbounds %struct.hns_roce_recreate_lp_qp_work, %struct.hns_roce_recreate_lp_qp_work* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = call i64 @try_wait_for_completion(%struct.completion* %8)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %75

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @dev_warn(%struct.device* %71, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ETIMEDOUT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %69, %57, %25
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.hns_roce_recreate_lp_qp_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @try_wait_for_completion(%struct.completion*) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
