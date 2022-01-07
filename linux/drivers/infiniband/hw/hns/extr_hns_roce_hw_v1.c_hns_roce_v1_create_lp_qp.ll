; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_create_lp_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_create_lp_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_qp = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.ib_qp = type { i32 }

@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@HNS_ROCE_MIN_WQE_NUM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Create loop qp for mr free failed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hns_roce_qp* (%struct.hns_roce_dev*, %struct.ib_pd*)* @hns_roce_v1_create_lp_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hns_roce_qp* @hns_roce_v1_create_lp_qp(%struct.hns_roce_dev* %0, %struct.ib_pd* %1) #0 {
  %3 = alloca %struct.hns_roce_qp*, align 8
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ib_qp_init_attr, align 8
  %8 = alloca %struct.ib_qp*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %5, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = call i32 @memset(%struct.ib_qp_init_attr* %7, i32 0, i32 24)
  %14 = load i32, i32* @IB_QPT_RC, align 4
  %15 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  %17 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** @HNS_ROCE_MIN_WQE_NUM, align 8
  %19 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @HNS_ROCE_MIN_WQE_NUM, align 8
  %22 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %25 = call %struct.ib_qp* @hns_roce_create_qp(%struct.ib_pd* %24, %struct.ib_qp_init_attr* %7, i32* null)
  store %struct.ib_qp* %25, %struct.ib_qp** %8, align 8
  %26 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %27 = call i64 @IS_ERR(%struct.ib_qp* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.hns_roce_qp* null, %struct.hns_roce_qp** %3, align 8
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %34 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %33)
  store %struct.hns_roce_qp* %34, %struct.hns_roce_qp** %3, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %3, align 8
  ret %struct.hns_roce_qp* %36
}

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local %struct.ib_qp* @hns_roce_create_qp(%struct.ib_pd*, %struct.ib_qp_init_attr*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ib_qp*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
