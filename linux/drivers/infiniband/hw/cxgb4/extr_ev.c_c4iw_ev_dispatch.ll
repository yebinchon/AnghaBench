; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_ev.c_c4iw_ev_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_ev.c_c4iw_ev_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.t4_cqe = type { i32 }
%struct.c4iw_cq = type { i32, i32 }
%struct.c4iw_qp = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [74 x i8] c"BAD AE qpid 0x%x opcode %d status 0x%x type %d wrid.hi 0x%x wrid.lo 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"BAD AE cqid 0x%x qpid 0x%x opcode %d status 0x%x type %d wrid.hi 0x%x wrid.lo 0x%x\0A\00", align 1
@FW_RI_RDMA_WRITE = common dso_local global i64 0, align 8
@IB_EVENT_QP_REQ_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"AE with status 0!\0A\00", align 1
@IB_EVENT_QP_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_EVENT_DEVICE_FATAL = common dso_local global i32 0, align 4
@IB_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Unknown T4 status 0x%x QPID 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c4iw_ev_dispatch(%struct.c4iw_dev* %0, %struct.t4_cqe* %1) #0 {
  %3 = alloca %struct.c4iw_dev*, align 8
  %4 = alloca %struct.t4_cqe*, align 8
  %5 = alloca %struct.c4iw_cq*, align 8
  %6 = alloca %struct.c4iw_qp*, align 8
  %7 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %3, align 8
  store %struct.t4_cqe* %1, %struct.t4_cqe** %4, align 8
  %8 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %8, i32 0, i32 0
  %10 = call i32 @xa_lock_irq(i32* %9)
  %11 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %12 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %11, i32 0, i32 0
  %13 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %14 = call i32 @CQE_QPID(%struct.t4_cqe* %13)
  %15 = call %struct.c4iw_qp* @xa_load(i32* %12, i32 %14)
  store %struct.c4iw_qp* %15, %struct.c4iw_qp** %6, align 8
  %16 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %17 = icmp ne %struct.c4iw_qp* %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %2
  %19 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %20 = call i32 @CQE_QPID(%struct.t4_cqe* %19)
  %21 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %22 = call i64 @CQE_OPCODE(%struct.t4_cqe* %21)
  %23 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %24 = call i32 @CQE_STATUS(%struct.t4_cqe* %23)
  %25 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %26 = call i32 @CQE_TYPE(%struct.t4_cqe* %25)
  %27 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %28 = call i32 @CQE_WRID_HI(%struct.t4_cqe* %27)
  %29 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %30 = call i32 @CQE_WRID_LOW(%struct.t4_cqe* %29)
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %22, i32 %24, i32 %26, i32 %28, i32 %30)
  %32 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %33 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %32, i32 0, i32 0
  %34 = call i32 @xa_unlock_irq(i32* %33)
  br label %153

35:                                               ; preds = %2
  %36 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %37 = call i64 @SQ_TYPE(%struct.t4_cqe* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %41 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %46 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.c4iw_cq* @get_chp(%struct.c4iw_dev* %50, i32 %51)
  store %struct.c4iw_cq* %52, %struct.c4iw_cq** %5, align 8
  %53 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %54 = icmp ne %struct.c4iw_cq* %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %58 = call i32 @CQE_QPID(%struct.t4_cqe* %57)
  %59 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %60 = call i64 @CQE_OPCODE(%struct.t4_cqe* %59)
  %61 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %62 = call i32 @CQE_STATUS(%struct.t4_cqe* %61)
  %63 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %64 = call i32 @CQE_TYPE(%struct.t4_cqe* %63)
  %65 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %66 = call i32 @CQE_WRID_HI(%struct.t4_cqe* %65)
  %67 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %68 = call i32 @CQE_WRID_LOW(%struct.t4_cqe* %67)
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %58, i64 %60, i32 %62, i32 %64, i32 %66, i32 %68)
  %70 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %71 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %70, i32 0, i32 0
  %72 = call i32 @xa_unlock_irq(i32* %71)
  br label %153

73:                                               ; preds = %49
  %74 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %75 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %74, i32 0, i32 0
  %76 = call i32 @c4iw_qp_add_ref(i32* %75)
  %77 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %78 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %77, i32 0, i32 1
  %79 = call i32 @atomic_inc(i32* %78)
  %80 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %81 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %80, i32 0, i32 0
  %82 = call i32 @xa_unlock_irq(i32* %81)
  %83 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %84 = call i64 @RQ_TYPE(%struct.t4_cqe* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %73
  %87 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %88 = call i64 @CQE_OPCODE(%struct.t4_cqe* %87)
  %89 = load i64, i64* @FW_RI_RDMA_WRITE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %93 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %94 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %95 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %96 = load i32, i32* @IB_EVENT_QP_REQ_ERR, align 4
  %97 = call i32 @post_qp_event(%struct.c4iw_dev* %92, %struct.c4iw_cq* %93, %struct.c4iw_qp* %94, %struct.t4_cqe* %95, i32 %96)
  br label %140

98:                                               ; preds = %86, %73
  %99 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %100 = call i32 @CQE_STATUS(%struct.t4_cqe* %99)
  switch i32 %100, label %124 [
    i32 130, label %101
    i32 131, label %103
    i32 136, label %103
    i32 134, label %103
    i32 155, label %103
    i32 128, label %103
    i32 154, label %103
    i32 146, label %103
    i32 147, label %103
    i32 150, label %110
    i32 149, label %110
    i32 148, label %110
    i32 138, label %117
    i32 137, label %117
    i32 153, label %117
    i32 144, label %117
    i32 135, label %117
    i32 151, label %117
    i32 133, label %117
    i32 139, label %117
    i32 152, label %117
    i32 142, label %117
    i32 129, label %117
    i32 143, label %117
    i32 141, label %117
    i32 140, label %117
    i32 132, label %117
    i32 145, label %117
  ]

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %139

103:                                              ; preds = %98, %98, %98, %98, %98, %98, %98, %98
  %104 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %105 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %106 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %107 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %108 = load i32, i32* @IB_EVENT_QP_ACCESS_ERR, align 4
  %109 = call i32 @post_qp_event(%struct.c4iw_dev* %104, %struct.c4iw_cq* %105, %struct.c4iw_qp* %106, %struct.t4_cqe* %107, i32 %108)
  br label %139

110:                                              ; preds = %98, %98, %98
  %111 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %112 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %113 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %114 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %115 = load i32, i32* @IB_EVENT_DEVICE_FATAL, align 4
  %116 = call i32 @post_qp_event(%struct.c4iw_dev* %111, %struct.c4iw_cq* %112, %struct.c4iw_qp* %113, %struct.t4_cqe* %114, i32 %115)
  br label %139

117:                                              ; preds = %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98
  %118 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %119 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %120 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %121 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %122 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %123 = call i32 @post_qp_event(%struct.c4iw_dev* %118, %struct.c4iw_cq* %119, %struct.c4iw_qp* %120, %struct.t4_cqe* %121, i32 %122)
  br label %139

124:                                              ; preds = %98
  %125 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %126 = call i32 @CQE_STATUS(%struct.t4_cqe* %125)
  %127 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %128 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %126, i32 %131)
  %133 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %134 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %135 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %136 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %137 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %138 = call i32 @post_qp_event(%struct.c4iw_dev* %133, %struct.c4iw_cq* %134, %struct.c4iw_qp* %135, %struct.t4_cqe* %136, i32 %137)
  br label %139

139:                                              ; preds = %124, %117, %110, %103, %101
  br label %140

140:                                              ; preds = %139, %91
  %141 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %142 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %141, i32 0, i32 1
  %143 = call i64 @atomic_dec_and_test(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %147 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %146, i32 0, i32 0
  %148 = call i32 @wake_up(i32* %147)
  br label %149

149:                                              ; preds = %145, %140
  %150 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %151 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %150, i32 0, i32 0
  %152 = call i32 @c4iw_qp_rem_ref(i32* %151)
  br label %153

153:                                              ; preds = %149, %55, %18
  ret void
}

declare dso_local i32 @xa_lock_irq(i32*) #1

declare dso_local %struct.c4iw_qp* @xa_load(i32*, i32) #1

declare dso_local i32 @CQE_QPID(%struct.t4_cqe*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @CQE_OPCODE(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_STATUS(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_TYPE(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_WRID_HI(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_WRID_LOW(%struct.t4_cqe*) #1

declare dso_local i32 @xa_unlock_irq(i32*) #1

declare dso_local i64 @SQ_TYPE(%struct.t4_cqe*) #1

declare dso_local %struct.c4iw_cq* @get_chp(%struct.c4iw_dev*, i32) #1

declare dso_local i32 @c4iw_qp_add_ref(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @RQ_TYPE(%struct.t4_cqe*) #1

declare dso_local i32 @post_qp_event(%struct.c4iw_dev*, %struct.c4iw_cq*, %struct.c4iw_qp*, %struct.t4_cqe*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @c4iw_qp_rem_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
