; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_send_lp_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_send_lp_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ib_send_wr = type { i64, i32, i32*, i64, i64, i32* }

@IB_WR_RDMA_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Post write wqe for mr free failed(%d)!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_qp*)* @hns_roce_v1_send_lp_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_send_lp_wqe(%struct.hns_roce_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_qp*, align 8
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ib_send_wr, align 8
  %7 = alloca %struct.ib_send_wr*, align 8
  %8 = alloca i32, align 4
  store %struct.hns_roce_qp* %0, %struct.hns_roce_qp** %3, align 8
  %9 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %3, align 8
  %10 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hns_roce_dev* @to_hr_dev(i32 %12)
  store %struct.hns_roce_dev* %13, %struct.hns_roce_dev** %4, align 8
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = call i32 @memset(%struct.ib_send_wr* %6, i32 0, i32 48)
  %19 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 5
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = ptrtoint %struct.ib_send_wr* %6 to i64
  %24 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* @IB_WR_RDMA_WRITE, align 4
  %26 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %3, align 8
  %28 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %27, i32 0, i32 0
  %29 = call i32 @hns_roce_v1_post_send(%struct.TYPE_4__* %28, %struct.ib_send_wr* %6, %struct.ib_send_wr** %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local i32 @memset(%struct.ib_send_wr*, i32, i32) #1

declare dso_local i32 @hns_roce_v1_post_send(%struct.TYPE_4__*, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
