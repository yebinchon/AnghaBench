; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_check_mtu_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_check_mtu_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.hns_roce_qp = type { i32 }
%struct.ib_qp_attr = type { i32, i64 }

@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_MTU_2048 = common dso_local global i64 0, align 8
@IB_MTU_256 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"attr path_mtu(%d)invalid while modify qp\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_qp*, %struct.ib_qp_attr*, i32)* @check_mtu_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mtu_validate(%struct.hns_roce_dev* %0, %struct.hns_roce_qp* %1, %struct.ib_qp_attr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.hns_roce_qp*, align 8
  %8 = alloca %struct.ib_qp_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store %struct.hns_roce_qp* %1, %struct.hns_roce_qp** %7, align 8
  store %struct.ib_qp_attr* %2, %struct.ib_qp_attr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @IB_QP_PORT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %18 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  br label %25

21:                                               ; preds = %4
  %22 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %23 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %20, %16 ], [ %24, %21 ]
  store i32 %26, i32* %11, align 4
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %28 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @iboe_get_mtu(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %39 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IB_MTU_2048, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %25
  %45 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %46 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %49 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %47, %51
  br i1 %52, label %66, label %53

53:                                               ; preds = %44, %25
  %54 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %55 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IB_MTU_256, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %61 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = icmp sgt i64 %62, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %59, %53, %44
  %67 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %68 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %67, i32 0, i32 0
  %69 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %70 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @ibdev_err(i32* %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %77

76:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %66
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i32 @ibdev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
