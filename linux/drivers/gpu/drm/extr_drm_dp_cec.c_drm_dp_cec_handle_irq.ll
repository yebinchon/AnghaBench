; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cec_adapter* }
%struct.cec_adapter = type { i32 }

@DP_CEC_TUNNELING_IRQ_FLAGS = common dso_local global i32 0, align 4
@DP_CEC_RX_MESSAGE_INFO_VALID = common dso_local global i32 0, align 4
@DP_CEC_TX_MESSAGE_SENT = common dso_local global i32 0, align 4
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@DP_CEC_TX_LINE_ERROR = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ERROR = common dso_local global i32 0, align 4
@CEC_TX_STATUS_MAX_RETRIES = common dso_local global i32 0, align 4
@DP_CEC_TX_ADDRESS_NACK_ERROR = common dso_local global i32 0, align 4
@DP_CEC_TX_DATA_NACK_ERROR = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_dp_aux*)* @drm_dp_cec_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_dp_cec_handle_irq(%struct.drm_dp_aux* %0) #0 {
  %2 = alloca %struct.drm_dp_aux*, align 8
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %2, align 8
  %5 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %6 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %7, align 8
  store %struct.cec_adapter* %8, %struct.cec_adapter** %3, align 8
  %9 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %10 = load i32, i32* @DP_CEC_TUNNELING_IRQ_FLAGS, align 4
  %11 = call i64 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %9, i32 %10, i32* %4)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %62

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DP_CEC_RX_MESSAGE_INFO_VALID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %21 = call i32 @drm_dp_cec_received(%struct.drm_dp_aux* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @DP_CEC_TX_MESSAGE_SENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %29 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %30 = call i32 @cec_transmit_attempt_done(%struct.cec_adapter* %28, i32 %29)
  br label %57

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DP_CEC_TX_LINE_ERROR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %38 = load i32, i32* @CEC_TX_STATUS_ERROR, align 4
  %39 = load i32, i32* @CEC_TX_STATUS_MAX_RETRIES, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @cec_transmit_attempt_done(%struct.cec_adapter* %37, i32 %40)
  br label %56

42:                                               ; preds = %31
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DP_CEC_TX_ADDRESS_NACK_ERROR, align 4
  %45 = load i32, i32* @DP_CEC_TX_DATA_NACK_ERROR, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %51 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %52 = load i32, i32* @CEC_TX_STATUS_MAX_RETRIES, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @cec_transmit_attempt_done(%struct.cec_adapter* %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %42
  br label %56

56:                                               ; preds = %55, %36
  br label %57

57:                                               ; preds = %56, %27
  %58 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %59 = load i32, i32* @DP_CEC_TUNNELING_IRQ_FLAGS, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %13
  ret void
}

declare dso_local i64 @drm_dp_dpcd_readb(%struct.drm_dp_aux*, i32, i32*) #1

declare dso_local i32 @drm_dp_cec_received(%struct.drm_dp_aux*) #1

declare dso_local i32 @cec_transmit_attempt_done(%struct.cec_adapter*, i32) #1

declare dso_local i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
