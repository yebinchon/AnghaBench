; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_gsi_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_gsi_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { i64, i64, %struct.ib_send_wr*, i32 }
%struct.qed_roce_ll2_packet = type { i32 }
%struct.qedr_qp = type { i64, i32, %struct.qedr_dev*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.qedr_dev = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@QED_ROCE_QP_STATE_RTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [84 x i8] c"gsi post recv: failed to post rx buffer. state is %d and not QED_ROCE_QP_STATE_RTS\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RDMA_MAX_SGE_PER_SQ_WQE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"gsi post send: num_sge is too large (%d>%d)\0A\00", align 1
@IB_WR_SEND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"gsi post send: failed due to unsupported opcode %d\0A\00", align 1
@QEDR_MSG_GSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"gsi post send: opcode=%d, in_irq=%ld, irqs_disabled=%d, wr_id=%llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"gsi post send: failed to transmit (rc=%d)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"gsi post send: failed second WR. Only one WR may be passed at a time\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_gsi_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr**, align 8
  %8 = alloca %struct.qed_roce_ll2_packet*, align 8
  %9 = alloca %struct.qedr_qp*, align 8
  %10 = alloca %struct.qedr_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %7, align 8
  store %struct.qed_roce_ll2_packet* null, %struct.qed_roce_ll2_packet** %8, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %14 = call %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp* %13)
  store %struct.qedr_qp* %14, %struct.qedr_qp** %9, align 8
  %15 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %16 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %15, i32 0, i32 2
  %17 = load %struct.qedr_dev*, %struct.qedr_dev** %16, align 8
  store %struct.qedr_dev* %17, %struct.qedr_dev** %10, align 8
  %18 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %19 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QED_ROCE_QP_STATE_RTS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %25 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %24, %struct.ib_send_wr** %25, align 8
  %26 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %27 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %28 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %26, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %145

33:                                               ; preds = %3
  %34 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %35 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RDMA_MAX_SGE_PER_SQ_WQE, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %41 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %42 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RDMA_MAX_SGE_PER_SQ_WQE, align 8
  %45 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  br label %141

48:                                               ; preds = %33
  %49 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %50 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IB_WR_SEND, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %56 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %141

62:                                               ; preds = %48
  %63 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %64 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %63, i32 0, i32 1
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %68 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %69 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %70 = call i32 @qedr_gsi_build_packet(%struct.qedr_dev* %67, %struct.qedr_qp* %68, %struct.ib_send_wr* %69, %struct.qed_roce_ll2_packet** %8)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %75 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %74, i32 0, i32 1
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  br label %141

78:                                               ; preds = %62
  %79 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %80 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %8, align 8
  %81 = call i32 @qedr_ll2_post_tx(%struct.qedr_dev* %79, %struct.qed_roce_ll2_packet* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %113, label %84

84:                                               ; preds = %78
  %85 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %86 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %89 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %88, i32 0, i32 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %92 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %87, i32* %96, align 4
  %97 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %98 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %97, i32 0, i32 3
  %99 = call i32 @qedr_inc_sw_prod(%struct.TYPE_4__* %98)
  %100 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %101 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %100, i32 0, i32 2
  %102 = load %struct.qedr_dev*, %struct.qedr_dev** %101, align 8
  %103 = load i32, i32* @QEDR_MSG_GSI, align 4
  %104 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %105 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (...) @in_irq()
  %108 = call i32 (...) @irqs_disabled()
  %109 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %110 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @DP_DEBUG(%struct.qedr_dev* %102, i32 %103, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i64 %106, i32 %107, i32 %108, i32 %111)
  br label %121

113:                                              ; preds = %78
  %114 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %114, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EAGAIN, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %12, align 4
  %119 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %120 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %119, %struct.ib_send_wr** %120, align 8
  br label %121

121:                                              ; preds = %113, %84
  %122 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %123 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %122, i32 0, i32 1
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  %126 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %127 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %126, i32 0, i32 2
  %128 = load %struct.ib_send_wr*, %struct.ib_send_wr** %127, align 8
  %129 = icmp ne %struct.ib_send_wr* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %121
  %131 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %132 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %131, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  %133 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %134 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %133, i32 0, i32 2
  %135 = load %struct.ib_send_wr*, %struct.ib_send_wr** %134, align 8
  %136 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %135, %struct.ib_send_wr** %136, align 8
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %130, %121
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %4, align 4
  br label %145

141:                                              ; preds = %73, %54, %39
  %142 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %143 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %142, %struct.ib_send_wr** %143, align 8
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %141, %139, %23
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qedr_gsi_build_packet(%struct.qedr_dev*, %struct.qedr_qp*, %struct.ib_send_wr*, %struct.qed_roce_ll2_packet**) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qedr_ll2_post_tx(%struct.qedr_dev*, %struct.qed_roce_ll2_packet*) #1

declare dso_local i32 @qedr_inc_sw_prod(%struct.TYPE_4__*) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @in_irq(...) #1

declare dso_local i32 @irqs_disabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
