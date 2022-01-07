; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_ll2_complete_rx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_ll2_complete_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_ll2_comp_rx_data = type { i64, i32, %struct.TYPE_9__, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.qedr_dev = type { %struct.qedr_qp*, %struct.qedr_cq* }
%struct.qedr_qp = type { i32, %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qedr_cq = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_11__*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.qed_ll2_comp_rx_data*)* @qedr_ll2_complete_rx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_ll2_complete_rx_packet(i8* %0, %struct.qed_ll2_comp_rx_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_ll2_comp_rx_data*, align 8
  %5 = alloca %struct.qedr_dev*, align 8
  %6 = alloca %struct.qedr_cq*, align 8
  %7 = alloca %struct.qedr_qp*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.qed_ll2_comp_rx_data* %1, %struct.qed_ll2_comp_rx_data** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.qedr_dev*
  store %struct.qedr_dev* %10, %struct.qedr_dev** %5, align 8
  %11 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %12 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %11, i32 0, i32 1
  %13 = load %struct.qedr_cq*, %struct.qedr_cq** %12, align 8
  store %struct.qedr_cq* %13, %struct.qedr_cq** %6, align 8
  %14 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %15 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %14, i32 0, i32 0
  %16 = load %struct.qedr_qp*, %struct.qedr_qp** %15, align 8
  store %struct.qedr_qp* %16, %struct.qedr_qp** %7, align 8
  %17 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %18 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %22 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 0, %29 ]
  %32 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %33 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %36 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  store i32 %31, i32* %40, align 4
  %41 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %42 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %45 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %44, i32 0, i32 2
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %48 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  store i32 %43, i32* %52, align 8
  %53 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %54 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %58 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %61 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 %56, i32* %68, align 4
  %69 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %70 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ntohl(i32 %71)
  %73 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %74 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %77 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %72, i32* %83, align 4
  %84 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %85 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @ntohs(i32 %87)
  %89 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %90 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %89, i32 0, i32 2
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %93 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  store i32 %88, i32* %99, align 4
  %100 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %101 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %100, i32 0, i32 1
  %102 = call i32 @qedr_inc_sw_gsi_cons(%struct.TYPE_12__* %101)
  %103 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %104 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %103, i32 0, i32 0
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %108 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %109, align 8
  %111 = icmp ne i32 (%struct.TYPE_11__*, i32)* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %30
  %113 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %114 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %115, align 8
  %117 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %118 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %117, i32 0, i32 0
  %119 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %120 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 %116(%struct.TYPE_11__* %118, i32 %122)
  br label %124

124:                                              ; preds = %112, %30
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @qedr_inc_sw_gsi_cons(%struct.TYPE_12__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
