; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_set_qps_to_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_set_qps_to_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_qp = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_qp_attr = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"no hr_qp can be found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"flush cqe is unsupported in userspace!\0A\00", align 1
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to modify qp %d to err state.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, i32)* @hns_roce_set_qps_to_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_set_qps_to_err(%struct.hns_roce_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_qp*, align 8
  %6 = alloca %struct.ib_qp_attr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.hns_roce_qp* @__hns_roce_qp_lookup(%struct.hns_roce_dev* %9, i32 %10)
  store %struct.hns_roce_qp* %11, %struct.hns_roce_qp** %5, align 8
  %12 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %13 = icmp ne %struct.hns_roce_qp* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_warn(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %81

19:                                               ; preds = %2
  %20 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %21 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %19
  %26 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %27 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %55

30:                                               ; preds = %25
  %31 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %32 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %38 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %41 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %54

44:                                               ; preds = %30
  %45 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %46 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %52 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  br label %54

54:                                               ; preds = %44, %30
  br label %60

55:                                               ; preds = %25
  %56 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %57 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_warn(i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %81

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %19
  %62 = load i32, i32* @IB_QP_STATE, align 4
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @IB_QPS_ERR, align 4
  %64 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %66 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %65, i32 0, i32 3
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %5, align 8
  %69 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IB_QPS_ERR, align 4
  %72 = call i32 @hns_roce_v2_modify_qp(%struct.TYPE_10__* %66, %struct.ib_qp_attr* %6, i32 %67, i32 %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %61
  %76 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %77 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %14, %55, %75, %61
  ret void
}

declare dso_local %struct.hns_roce_qp* @__hns_roce_qp_lookup(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @hns_roce_v2_modify_qp(%struct.TYPE_10__*, %struct.ib_qp_attr*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
