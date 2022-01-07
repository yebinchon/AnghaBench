; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_check_wqe_rq_mtt_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_check_wqe_rq_mtt_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_qp = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"qp(0x%lx) rqwqe buf ba find failed\0A\00", align 1
@MTT_MIN_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"qp(0x%lx) next rqwqe buf ba find failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_qp*, i32, i64)* @check_wqe_rq_mtt_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_wqe_rq_mtt_count(%struct.hns_roce_dev* %0, %struct.hns_roce_qp* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.hns_roce_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store %struct.hns_roce_qp* %1, %struct.hns_roce_qp** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %12 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %10, align 8
  %14 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %15 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %51

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.device*, %struct.device** %10, align 8
  %25 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %26 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %5, align 4
  br label %51

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MTT_MIN_COUNT, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %35 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %41 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load %struct.device*, %struct.device** %10, align 8
  %46 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %47 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 0, i32* %5, align 4
  br label %51

50:                                               ; preds = %33, %29
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %44, %23, %19
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
