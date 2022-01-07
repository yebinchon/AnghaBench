; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_free_mr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_free_mr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_free_mr = type { i32 }
%struct.hns_roce_v1_priv = type { %struct.hns_roce_free_mr }

@.str = private unnamed_addr constant [17 x i8] c"hns_roce_free_mr\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Create free mr workqueue failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Reserved loop qp failed(%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_free_mr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_free_mr_init(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hns_roce_free_mr*, align 8
  %6 = alloca %struct.hns_roce_v1_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %8 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %15, %struct.hns_roce_v1_priv** %6, align 8
  %16 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %6, align 8
  %17 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %16, i32 0, i32 0
  store %struct.hns_roce_free_mr* %17, %struct.hns_roce_free_mr** %5, align 8
  %18 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %5, align 8
  %20 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %5, align 8
  %22 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %49

30:                                               ; preds = %1
  %31 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %32 = call i32 @hns_roce_v1_rsv_lp_qp(%struct.hns_roce_dev* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %5, align 8
  %40 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @flush_workqueue(i32 %41)
  %43 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %5, align 8
  %44 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @destroy_workqueue(i32 %45)
  br label %47

47:                                               ; preds = %35, %30
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %25
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @hns_roce_v1_rsv_lp_qp(%struct.hns_roce_dev*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
