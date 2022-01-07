; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_ll2_complete_tx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_ll2_complete_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { %struct.TYPE_5__*, i32, %struct.qedr_cq*, %struct.qedr_qp* }
%struct.TYPE_5__ = type { i32 }
%struct.qedr_cq = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_7__*, i32)* }
%struct.qedr_qp = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.qed_roce_ll2_packet = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@QEDR_MSG_GSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"LL2 TX CB: gsi_sqcq=%p, gsi_rqcq=%p, gsi_cons=%d, ibcq_comp=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32, i32)* @qedr_ll2_complete_tx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_ll2_complete_tx_packet(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qedr_dev*, align 8
  %14 = alloca %struct.qed_roce_ll2_packet*, align 8
  %15 = alloca %struct.qedr_cq*, align 8
  %16 = alloca %struct.qedr_qp*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.qedr_dev*
  store %struct.qedr_dev* %19, %struct.qedr_dev** %13, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.qed_roce_ll2_packet*
  store %struct.qed_roce_ll2_packet* %21, %struct.qed_roce_ll2_packet** %14, align 8
  %22 = load %struct.qedr_dev*, %struct.qedr_dev** %13, align 8
  %23 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %22, i32 0, i32 2
  %24 = load %struct.qedr_cq*, %struct.qedr_cq** %23, align 8
  store %struct.qedr_cq* %24, %struct.qedr_cq** %15, align 8
  %25 = load %struct.qedr_dev*, %struct.qedr_dev** %13, align 8
  %26 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %25, i32 0, i32 3
  %27 = load %struct.qedr_qp*, %struct.qedr_qp** %26, align 8
  store %struct.qedr_qp* %27, %struct.qedr_qp** %16, align 8
  %28 = load %struct.qedr_dev*, %struct.qedr_dev** %13, align 8
  %29 = load i32, i32* @QEDR_MSG_GSI, align 4
  %30 = load %struct.qedr_dev*, %struct.qedr_dev** %13, align 8
  %31 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %30, i32 0, i32 2
  %32 = load %struct.qedr_cq*, %struct.qedr_cq** %31, align 8
  %33 = load %struct.qedr_dev*, %struct.qedr_dev** %13, align 8
  %34 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.qedr_qp*, %struct.qedr_qp** %16, align 8
  %37 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qedr_cq*, %struct.qedr_cq** %15, align 8
  %41 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.TYPE_7__*, i32)* %43, null
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 @DP_DEBUG(%struct.qedr_dev* %28, i32 %29, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.qedr_cq* %32, i32 %35, i32 %39, i8* %46)
  %48 = load %struct.qedr_dev*, %struct.qedr_dev** %13, align 8
  %49 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %14, align 8
  %53 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %14, align 8
  %57 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %14, align 8
  %61 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dma_free_coherent(i32* %51, i32 %55, i32 %59, i32 %63)
  %65 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %14, align 8
  %66 = call i32 @kfree(%struct.qed_roce_ll2_packet* %65)
  %67 = load %struct.qedr_qp*, %struct.qedr_qp** %16, align 8
  %68 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %67, i32 0, i32 0
  %69 = load i64, i64* %17, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.qedr_qp*, %struct.qedr_qp** %16, align 8
  %72 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %71, i32 0, i32 1
  %73 = call i32 @qedr_inc_sw_gsi_cons(%struct.TYPE_8__* %72)
  %74 = load %struct.qedr_qp*, %struct.qedr_qp** %16, align 8
  %75 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %74, i32 0, i32 0
  %76 = load i64, i64* %17, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.qedr_cq*, %struct.qedr_cq** %15, align 8
  %79 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.TYPE_7__*, i32)* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %6
  %84 = load %struct.qedr_cq*, %struct.qedr_cq** %15, align 8
  %85 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %86, align 8
  %88 = load %struct.qedr_cq*, %struct.qedr_cq** %15, align 8
  %89 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %88, i32 0, i32 0
  %90 = load %struct.qedr_cq*, %struct.qedr_cq** %15, align 8
  %91 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 %87(%struct.TYPE_7__* %89, i32 %93)
  br label %95

95:                                               ; preds = %83, %6
  ret void
}

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, %struct.qedr_cq*, i32, i32, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.qed_roce_ll2_packet*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qedr_inc_sw_gsi_cons(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
