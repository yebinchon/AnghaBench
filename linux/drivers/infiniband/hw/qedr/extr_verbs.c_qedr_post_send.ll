; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { %struct.ib_send_wr*, i32 }
%struct.qedr_dev = type { i32 }
%struct.qedr_qp = type { i64, i64, i32, %struct.TYPE_8__, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@QED_ROCE_QP_STATE_RTS = common dso_local global i64 0, align 8
@QED_ROCE_QP_STATE_ERR = common dso_local global i64 0, align 8
@QED_ROCE_QP_STATE_SQD = common dso_local global i64 0, align 8
@QEDR_MSG_CQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"QP in wrong state! QP icid=0x%x state %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr**, align 8
  %8 = alloca %struct.qedr_dev*, align 8
  %9 = alloca %struct.qedr_qp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %7, align 8
  %12 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %13 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qedr_dev* @get_qedr_dev(i32 %14)
  store %struct.qedr_dev* %15, %struct.qedr_dev** %8, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = call %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp* %16)
  store %struct.qedr_qp* %17, %struct.qedr_qp** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* null, %struct.ib_send_wr** %18, align 8
  %19 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %20 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IB_QPT_GSI, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %26 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %27 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %28 = call i32 @qedr_gsi_post_send(%struct.ib_qp* %25, %struct.ib_send_wr* %26, %struct.ib_send_wr** %27)
  store i32 %28, i32* %4, align 4
  br label %130

29:                                               ; preds = %3
  %30 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %31 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %30, i32 0, i32 2
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %35 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %34, i32 0, i32 0
  %36 = call i64 @rdma_protocol_roce(i32* %35, i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %29
  %39 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %40 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @QED_ROCE_QP_STATE_RTS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %38
  %45 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %46 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @QED_ROCE_QP_STATE_ERR, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %52 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @QED_ROCE_QP_STATE_SQD, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %50
  %57 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %58 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %57, i32 0, i32 2
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %62 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %61, %struct.ib_send_wr** %62, align 8
  %63 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %64 = load i32, i32* @QEDR_MSG_CQ, align 4
  %65 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %66 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %69 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @DP_DEBUG(%struct.qedr_dev* %63, i32 %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %67, i64 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %130

74:                                               ; preds = %50, %44, %38
  br label %75

75:                                               ; preds = %74, %29
  br label %76

76:                                               ; preds = %87, %75
  %77 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %78 = icmp ne %struct.ib_send_wr* %77, null
  br i1 %78, label %79, label %113

79:                                               ; preds = %76
  %80 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %81 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %82 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %83 = call i32 @__qedr_post_send(%struct.ib_qp* %80, %struct.ib_send_wr* %81, %struct.ib_send_wr** %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %113

87:                                               ; preds = %79
  %88 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %89 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %92 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %91, i32 0, i32 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %95 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 %90, i32* %99, align 4
  %100 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %101 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %100, i32 0, i32 3
  %102 = call i32 @qedr_inc_sw_prod(%struct.TYPE_8__* %101)
  %103 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %104 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %111 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %110, i32 0, i32 0
  %112 = load %struct.ib_send_wr*, %struct.ib_send_wr** %111, align 8
  store %struct.ib_send_wr* %112, %struct.ib_send_wr** %6, align 8
  br label %76

113:                                              ; preds = %86, %76
  %114 = call i32 (...) @smp_wmb()
  %115 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %116 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %121 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @writel(i32 %119, i32 %123)
  %125 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %126 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %125, i32 0, i32 2
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %113, %56, %24
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp*) #1

declare dso_local i32 @qedr_gsi_post_send(%struct.ib_qp*, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @rdma_protocol_roce(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32, i64) #1

declare dso_local i32 @__qedr_post_send(%struct.ib_qp*, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

declare dso_local i32 @qedr_inc_sw_prod(%struct.TYPE_8__*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
