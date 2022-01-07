; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_qp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"Destroy qp 0x%06lx failed(%d)\0A\00", align 1
@IB_QPT_GSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_udata*)* @hns_roce_v2_destroy_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_destroy_qp(%struct.ib_qp* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.hns_roce_qp*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.hns_roce_dev* @to_hr_dev(i32 %11)
  store %struct.hns_roce_dev* %12, %struct.hns_roce_dev** %6, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %14 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %13)
  store %struct.hns_roce_qp* %14, %struct.hns_roce_qp** %7, align 8
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %16 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %17 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %18 = call i32 @hns_roce_v2_destroy_qp_common(%struct.hns_roce_dev* %15, %struct.hns_roce_qp* %16, %struct.ib_udata* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %23 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %22, i32 0, i32 0
  %24 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %25 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @ibdev_err(i32* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %2
  %31 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %32 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IB_QPT_GSI, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %39 = call %struct.hns_roce_qp* @hr_to_hr_sqp(%struct.hns_roce_qp* %38)
  %40 = call i32 @kfree(%struct.hns_roce_qp* %39)
  br label %44

41:                                               ; preds = %30
  %42 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %43 = call i32 @kfree(%struct.hns_roce_qp* %42)
  br label %44

44:                                               ; preds = %41, %37
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i32 @hns_roce_v2_destroy_qp_common(%struct.hns_roce_dev*, %struct.hns_roce_qp*, %struct.ib_udata*) #1

declare dso_local i32 @ibdev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.hns_roce_qp*) #1

declare dso_local %struct.hns_roce_qp* @hr_to_hr_sqp(%struct.hns_roce_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
