; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_ll2_post_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_ll2_post_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 (i32, i32, %struct.qed_ll2_tx_pkt_info*, i32)*, i32 (i32, i32, i32, i32)* }
%struct.qed_ll2_tx_pkt_info = type { i32, i32, i32, %struct.qed_roce_ll2_packet*, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.qed_roce_ll2_packet = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ROCE_V1 = common dso_local global i64 0, align 8
@QED_LL2_ROCE = common dso_local global i32 0, align 4
@QED_LL2_RROCE = common dso_local global i32 0, align 4
@ROCE_V2_IPV4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"roce ll2 tx: header failed (rc=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ll2 tx: payload failed (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qed_roce_ll2_packet*)* @qedr_ll2_post_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_ll2_post_tx(%struct.qedr_dev* %0, %struct.qed_roce_ll2_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedr_dev*, align 8
  %5 = alloca %struct.qed_roce_ll2_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_ll2_tx_pkt_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %4, align 8
  store %struct.qed_roce_ll2_packet* %1, %struct.qed_roce_ll2_packet** %5, align 8
  %10 = call i32 @memset(%struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 48)
  %11 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %12 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ROCE_V1, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @QED_LL2_ROCE, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @QED_LL2_RROCE, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %6, align 4
  %22 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %23 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ROCE_V2_IPV4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %31 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 1, %32
  %34 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 7
  store i64 0, i64* %35, align 8
  %36 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %37 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 6
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %43 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 5
  store i32 %45, i32* %46, align 4
  %47 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %48 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 4
  store i32 %50, i32* %51, align 8
  %52 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %53 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %7, i32 0, i32 3
  store %struct.qed_roce_ll2_packet* %52, %struct.qed_roce_ll2_packet** %53, align 8
  %54 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %55 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32 (i32, i32, %struct.qed_ll2_tx_pkt_info*, i32)*, i32 (i32, i32, %struct.qed_ll2_tx_pkt_info*, i32)** %57, align 8
  %59 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %60 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %63 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %58(i32 %61, i32 %64, %struct.qed_ll2_tx_pkt_info* %7, i32 1)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %29
  %69 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %70 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %69, i32 0, i32 3
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %74 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %78 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %82 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dma_free_coherent(i32* %72, i32 %76, i32 %80, i32 %84)
  %86 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %87 = call i32 @kfree(%struct.qed_roce_ll2_packet* %86)
  %88 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @DP_ERR(%struct.qedr_dev* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %140

92:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %136, %92
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %96 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %139

99:                                               ; preds = %93
  %100 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %101 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %100, i32 0, i32 2
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %103, align 8
  %105 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %106 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %109 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %112 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %111, i32 0, i32 2
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %5, align 8
  %120 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %119, i32 0, i32 2
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 %104(i32 %107, i32 %110, i32 %118, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %99
  %131 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @DP_ERR(%struct.qedr_dev* %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %3, align 4
  br label %140

135:                                              ; preds = %99
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %93

139:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %130, %68
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @memset(%struct.qed_ll2_tx_pkt_info*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.qed_roce_ll2_packet*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
