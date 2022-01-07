; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_ll2_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_ll2_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32 (i32, %struct.qed_ll2_acquire_data*)*, i32 (i32, i32)*, i32 (i32, i32*, i32)*, i32 (i32, i32)*, i32 (i32, i32)* }
%struct.qed_ll2_acquire_data = type { %struct.qed_ll2_cbs*, i32*, %struct.TYPE_6__ }
%struct.qed_ll2_cbs = type { %struct.qedr_dev*, i8*, i32, i8*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8*, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qedr_qp = type { i32 }

@qedr_ll2_complete_rx_packet = common dso_local global i32 0, align 4
@qedr_ll2_complete_tx_packet = common dso_local global i8* null, align 8
@qedr_ll2_release_rx_packet = common dso_local global i32 0, align 4
@QED_LL2_TYPE_ROCE = common dso_local global i32 0, align 4
@QED_LL2_TX_DEST_NW = common dso_local global i32 0, align 4
@QED_LL2_DROP_PACKET = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"ll2 start: failed to acquire LL2 connection (rc=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"ll2 start: failed to establish LL2 connection (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.ib_qp_init_attr*, %struct.qedr_qp*)* @qedr_ll2_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_ll2_start(%struct.qedr_dev* %0, %struct.ib_qp_init_attr* %1, %struct.qedr_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedr_dev*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  %7 = alloca %struct.qedr_qp*, align 8
  %8 = alloca %struct.qed_ll2_acquire_data, align 8
  %9 = alloca %struct.qed_ll2_cbs, align 8
  %10 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %5, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %6, align 8
  store %struct.qedr_qp* %2, %struct.qedr_qp** %7, align 8
  %11 = load i32, i32* @qedr_ll2_complete_rx_packet, align 4
  %12 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %9, i32 0, i32 4
  store i32 %11, i32* %12, align 8
  %13 = load i8*, i8** @qedr_ll2_complete_tx_packet, align 8
  %14 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %9, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @qedr_ll2_release_rx_packet, align 4
  %16 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %9, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load i8*, i8** @qedr_ll2_complete_tx_packet, align 8
  %18 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %9, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %20 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %9, i32 0, i32 0
  store %struct.qedr_dev* %19, %struct.qedr_dev** %20, align 8
  %21 = call i32 @memset(%struct.qed_ll2_acquire_data* %8, i32 0, i32 80)
  %22 = load i32, i32* @QED_LL2_TYPE_ROCE, align 4
  %23 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %26 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %25, i32 0, i32 3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @QED_LL2_TX_DEST_NW, align 4
  %51 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @QED_LL2_DROP_PACKET, align 8
  %54 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @QED_LL2_DROP_PACKET, align 8
  %57 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  store i32 1, i32* %60, align 8
  %61 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %62 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 1
  store i32* %62, i32** %63, align 8
  %64 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %8, i32 0, i32 0
  store %struct.qed_ll2_cbs* %9, %struct.qed_ll2_cbs** %64, align 8
  %65 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %66 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32 (i32, %struct.qed_ll2_acquire_data*)*, i32 (i32, %struct.qed_ll2_acquire_data*)** %68, align 8
  %70 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %71 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 %69(i32 %72, %struct.qed_ll2_acquire_data* %8)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %3
  %77 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @DP_ERR(%struct.qedr_dev* %77, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %146

81:                                               ; preds = %3
  %82 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %83 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32 (i32, i32)*, i32 (i32, i32)** %85, align 8
  %87 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %88 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %91 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 %86(i32 %89, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %81
  %97 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @DP_ERR(%struct.qedr_dev* %97, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %132

100:                                              ; preds = %81
  %101 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %102 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %104, align 8
  %106 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %107 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %110 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %109, i32 0, i32 3
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 %105(i32 %108, i32* null, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %100
  br label %119

118:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %146

119:                                              ; preds = %117
  %120 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %121 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %120, i32 0, i32 2
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  %124 = load i32 (i32, i32)*, i32 (i32, i32)** %123, align 8
  %125 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %126 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %129 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 %124(i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %119, %96
  %133 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %134 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  %137 = load i32 (i32, i32)*, i32 (i32, i32)** %136, align 8
  %138 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %139 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %142 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 %137(i32 %140, i32 %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %132, %118, %76
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @memset(%struct.qed_ll2_acquire_data*, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
