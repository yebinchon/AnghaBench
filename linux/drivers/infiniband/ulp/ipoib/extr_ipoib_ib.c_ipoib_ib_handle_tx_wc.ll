; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_handle_tx_wc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_handle_tx_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ib_wc = type { i32, i32, i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, %struct.ipoib_tx_buf* }
%struct.ipoib_tx_buf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ipoib_qp_state_validate = type { i32, %struct.ipoib_dev_priv* }

@.str = private unnamed_addr constant [36 x i8] c"send completion: id %d, status: %d\0A\00", align 1
@ipoib_sendq_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"send completion event with wrid %d (> %d)\0A\00", align 1
@IPOIB_FLAG_ADMIN_UP = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"failed send event (status=%d, wrid=%d vend_err %#x)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ipoib_qp_state_validate_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ib_wc*)* @ipoib_ib_handle_tx_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_ib_handle_tx_wc(%struct.net_device* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipoib_tx_buf*, align 8
  %8 = alloca %struct.ipoib_qp_state_validate*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %9)
  store %struct.ipoib_dev_priv* %10, %struct.ipoib_dev_priv** %5, align 8
  %11 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %12 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %17 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ipoib_sendq_size, align 4
  %22 = icmp uge i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ipoib_sendq_size, align 4
  %30 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  br label %135

31:                                               ; preds = %2
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %33 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %32, i32 0, i32 4
  %34 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %34, i64 %36
  store %struct.ipoib_tx_buf* %37, %struct.ipoib_tx_buf** %7, align 8
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %39 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %7, align 8
  %40 = call i32 @ipoib_dma_unmap_tx(%struct.ipoib_dev_priv* %38, %struct.ipoib_tx_buf* %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %7, align 8
  %47 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %50
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %7, align 8
  %59 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @dev_kfree_skb_any(%struct.TYPE_4__* %60)
  %62 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %63 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i64 @netif_queue_stopped(%struct.net_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %31
  %70 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %71 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %74 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub i32 %72, %75
  %77 = load i32, i32* @ipoib_sendq_size, align 4
  %78 = lshr i32 %77, 1
  %79 = icmp ule i32 %76, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load i32, i32* @IPOIB_FLAG_ADMIN_UP, align 4
  %82 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %83 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %82, i32 0, i32 3
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %80, %69, %31
  %87 = phi i1 [ false, %69 ], [ false, %31 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = call i32 @netif_wake_queue(%struct.net_device* %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %96 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IB_WC_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %135

100:                                              ; preds = %94
  %101 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %102 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %135

106:                                              ; preds = %100
  %107 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %108 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %109 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %113 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %107, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %111, i32 %114)
  %116 = load i32, i32* @GFP_ATOMIC, align 4
  %117 = call %struct.ipoib_qp_state_validate* @kzalloc(i32 16, i32 %116)
  store %struct.ipoib_qp_state_validate* %117, %struct.ipoib_qp_state_validate** %8, align 8
  %118 = load %struct.ipoib_qp_state_validate*, %struct.ipoib_qp_state_validate** %8, align 8
  %119 = icmp ne %struct.ipoib_qp_state_validate* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %106
  br label %135

121:                                              ; preds = %106
  %122 = load %struct.ipoib_qp_state_validate*, %struct.ipoib_qp_state_validate** %8, align 8
  %123 = getelementptr inbounds %struct.ipoib_qp_state_validate, %struct.ipoib_qp_state_validate* %122, i32 0, i32 0
  %124 = load i32, i32* @ipoib_qp_state_validate_work, align 4
  %125 = call i32 @INIT_WORK(i32* %123, i32 %124)
  %126 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %127 = load %struct.ipoib_qp_state_validate*, %struct.ipoib_qp_state_validate** %8, align 8
  %128 = getelementptr inbounds %struct.ipoib_qp_state_validate, %struct.ipoib_qp_state_validate* %127, i32 0, i32 1
  store %struct.ipoib_dev_priv* %126, %struct.ipoib_dev_priv** %128, align 8
  %129 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %130 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ipoib_qp_state_validate*, %struct.ipoib_qp_state_validate** %8, align 8
  %133 = getelementptr inbounds %struct.ipoib_qp_state_validate, %struct.ipoib_qp_state_validate* %132, i32 0, i32 0
  %134 = call i32 @queue_work(i32 %131, i32* %133)
  br label %135

135:                                              ; preds = %26, %120, %121, %100, %94
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg_data(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, i32, ...) #1

declare dso_local i32 @ipoib_dma_unmap_tx(%struct.ipoib_dev_priv*, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_4__*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local %struct.ipoib_qp_state_validate* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
