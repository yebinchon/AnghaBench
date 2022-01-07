; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_stop_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_stop_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, %struct.ipoib_rx_buf*, %struct.ipoib_tx_buf*, i32 }
%struct.ipoib_rx_buf = type { i32*, i32 }
%struct.ipoib_tx_buf = type { i32* }
%struct.ib_qp_attr = type { i32 }

@IPOIB_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"timing out; %d sends %d receives not completed\0A\00", align 1
@ipoib_sendq_size = common dso_local global i32 0, align 4
@ipoib_recvq_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"All sends and receives done.\0A\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to modify QP to RESET state\0A\00", align 1
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_ib_dev_stop_default(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %struct.ib_qp_attr, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ipoib_tx_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipoib_rx_buf*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %9)
  store %struct.ipoib_dev_priv* %10, %struct.ipoib_dev_priv** %3, align 8
  %11 = load i32, i32* @IPOIB_FLAG_INITIALIZED, align 4
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 6
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @ipoib_napi_disable(%struct.net_device* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @ipoib_cm_dev_stop(%struct.net_device* %20)
  %22 = load i32, i32* @IB_QPS_ERR, align 4
  %23 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IB_QP_STATE, align 4
  %28 = call i64 @ib_modify_qp(i32 %26, %struct.ib_qp_attr* %4, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IB_QPS_ERR, align 4
  %36 = call i32 @check_qp_movement_and_print(%struct.ipoib_dev_priv* %31, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %19
  %38 = load i64, i64* @jiffies, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %144, %37
  %40 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %41 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i64 @recvs_pending(%struct.net_device* %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %47, %39
  %52 = phi i1 [ true, %39 ], [ %50, %47 ]
  br i1 %52, label %53, label %148

53:                                               ; preds = %51
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* @HZ, align 4
  %57 = mul nsw i32 5, %56
  %58 = sext i32 %57 to i64
  %59 = add i64 %55, %58
  %60 = call i64 @time_after(i64 %54, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %144

62:                                               ; preds = %53
  %63 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %64 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %65 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %68 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = call i64 @recvs_pending(%struct.net_device* %71)
  %73 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %70, i64 %72)
  br label %74

74:                                               ; preds = %83, %62
  %75 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %76 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %79 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %77, %80
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %74
  %84 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %85 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %84, i32 0, i32 5
  %86 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %85, align 8
  %87 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %88 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ipoib_sendq_size, align 4
  %91 = sub nsw i32 %90, 1
  %92 = and i32 %89, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %86, i64 %93
  store %struct.ipoib_tx_buf* %94, %struct.ipoib_tx_buf** %6, align 8
  %95 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %96 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %6, align 8
  %97 = call i32 @ipoib_dma_unmap_tx(%struct.ipoib_dev_priv* %95, %struct.ipoib_tx_buf* %96)
  %98 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %6, align 8
  %99 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @dev_kfree_skb_any(i32* %100)
  %102 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %103 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %74

106:                                              ; preds = %74
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %140, %106
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @ipoib_recvq_size, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %107
  %112 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %113 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %112, i32 0, i32 4
  %114 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %114, i64 %116
  store %struct.ipoib_rx_buf* %117, %struct.ipoib_rx_buf** %8, align 8
  %118 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %8, align 8
  %119 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %111
  br label %140

123:                                              ; preds = %111
  %124 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %125 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %126 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %125, i32 0, i32 4
  %127 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %127, i64 %129
  %131 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ipoib_ud_dma_unmap_rx(%struct.ipoib_dev_priv* %124, i32 %132)
  %134 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %8, align 8
  %135 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @dev_kfree_skb_any(i32* %136)
  %138 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %8, align 8
  %139 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %138, i32 0, i32 0
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %123, %122
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %107

143:                                              ; preds = %107
  br label %151

144:                                              ; preds = %53
  %145 = load %struct.net_device*, %struct.net_device** %2, align 8
  %146 = call i32 @ipoib_drain_cq(%struct.net_device* %145)
  %147 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %39

148:                                              ; preds = %51
  %149 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %150 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %143
  %152 = load i32, i32* @IB_QPS_RESET, align 4
  %153 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 0
  store i32 %152, i32* %153, align 4
  %154 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %155 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @IB_QP_STATE, align 4
  %158 = call i64 @ib_modify_qp(i32 %156, %struct.ib_qp_attr* %4, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %151
  %161 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %162 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %161, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %151
  %164 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %165 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %168 = call i32 @ib_req_notify_cq(i32 %166, i32 %167)
  ret i32 0
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ipoib_napi_disable(%struct.net_device*) #1

declare dso_local i32 @ipoib_cm_dev_stop(%struct.net_device*) #1

declare dso_local i64 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @check_qp_movement_and_print(%struct.ipoib_dev_priv*, i32, i32) #1

declare dso_local i64 @recvs_pending(%struct.net_device*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local i32 @ipoib_dma_unmap_tx(%struct.ipoib_dev_priv*, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @ipoib_ud_dma_unmap_rx(%struct.ipoib_dev_priv*, i32) #1

declare dso_local i32 @ipoib_drain_cq(%struct.net_device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
