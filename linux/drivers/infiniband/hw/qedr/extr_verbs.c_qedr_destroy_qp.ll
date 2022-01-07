; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_udata = type { i32 }
%struct.qedr_qp = type { i64, i64, i32, i32, %struct.TYPE_2__*, %struct.qedr_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.qedr_dev = type { i32, i32 }
%struct.ib_qp_attr = type { i32 }

@QEDR_MSG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"destroy qp: destroying %p, qp type=%d\0A\00", align 1
@QED_ROCE_QP_STATE_RESET = common dso_local global i64 0, align 8
@QED_ROCE_QP_STATE_ERR = common dso_local global i64 0, align 8
@QED_ROCE_QP_STATE_INIT = common dso_local global i64 0, align 8
@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Still in during connect/accept\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"during connect timeout\0A\00", align 1
@IB_QPT_GSI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_destroy_qp(%struct.ib_qp* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.qedr_qp*, align 8
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.ib_qp_attr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %10 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %11 = call %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp* %10)
  store %struct.qedr_qp* %11, %struct.qedr_qp** %5, align 8
  %12 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %13 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %12, i32 0, i32 5
  %14 = load %struct.qedr_dev*, %struct.qedr_dev** %13, align 8
  store %struct.qedr_dev* %14, %struct.qedr_dev** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %16 = load i32, i32* @QEDR_MSG_QP, align 4
  %17 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %18 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %19 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (%struct.qedr_dev*, i32, i8*, ...) @DP_DEBUG(%struct.qedr_dev* %15, i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.qedr_qp* %17, i64 %20)
  %22 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %23 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %22, i32 0, i32 1
  %24 = call i64 @rdma_protocol_roce(i32* %23, i32 1)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %2
  %27 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %28 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @QED_ROCE_QP_STATE_RESET, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %34 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @QED_ROCE_QP_STATE_ERR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %40 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @QED_ROCE_QP_STATE_INIT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load i32, i32* @IB_QPS_ERR, align 4
  %46 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %7, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @IB_QP_STATE, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @qedr_modify_qp(%struct.ib_qp* %50, %struct.ib_qp_attr* %7, i32 %51, i32* null)
  br label %53

53:                                               ; preds = %44, %38, %32, %26
  br label %81

54:                                               ; preds = %2
  %55 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %56 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  br label %60

60:                                               ; preds = %78, %59
  %61 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %62 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %69 = load i32, i32* @QEDR_MSG_QP, align 4
  %70 = call i32 (%struct.qedr_dev*, i32, i8*, ...) @DP_DEBUG(%struct.qedr_dev* %68, i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 @msleep(i32 100)
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = icmp sgt i32 %72, 200
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %77 = call i32 @DP_NOTICE(%struct.qedr_dev* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %79

78:                                               ; preds = %67
  br label %60

79:                                               ; preds = %75, %60
  br label %80

80:                                               ; preds = %79, %54
  br label %81

81:                                               ; preds = %80, %53
  %82 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %83 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IB_QPT_GSI, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %89 = call i32 @qedr_destroy_gsi_qp(%struct.qedr_dev* %88)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %92 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %93 = load %struct.ib_udata*, %struct.ib_udata** %4, align 8
  %94 = call i32 @qedr_free_qp_resources(%struct.qedr_dev* %91, %struct.qedr_qp* %92, %struct.ib_udata* %93)
  %95 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %96 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %95, i32 0, i32 3
  %97 = call i64 @atomic_dec_and_test(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %90
  %100 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %101 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %100, i32 0, i32 1
  %102 = call i64 @rdma_protocol_iwarp(i32* %101, i32 1)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %106 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %105, i32 0, i32 0
  %107 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %108 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @xa_erase_irq(i32* %106, i32 %109)
  %111 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %112 = call i32 @kfree(%struct.qedr_qp* %111)
  br label %113

113:                                              ; preds = %104, %99, %90
  ret i32 0
}

declare dso_local %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp*) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, ...) #1

declare dso_local i64 @rdma_protocol_roce(i32*, i32) #1

declare dso_local i32 @qedr_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qedr_dev*, i8*) #1

declare dso_local i32 @qedr_destroy_gsi_qp(%struct.qedr_dev*) #1

declare dso_local i32 @qedr_free_qp_resources(%struct.qedr_dev*, %struct.qedr_qp*, %struct.ib_udata*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @rdma_protocol_iwarp(i32*, i32) #1

declare dso_local i32 @xa_erase_irq(i32*, i32) #1

declare dso_local i32 @kfree(%struct.qedr_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
