; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi_cec_adap_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi_cec_adap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.cec_msg = type { i32, i32* }
%struct.hdmi_core_data = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"cec-%s: could not clear TX FIFO for transmit\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HDMI_CEC_INT_STATUS_0 = common dso_local global i64 0, align 8
@HDMI_CEC_TX_FIFO_INT_MASK = common dso_local global i32 0, align 4
@HDMI_CEC_INT_STATUS_1 = common dso_local global i64 0, align 8
@HDMI_CEC_RETRANSMIT_CNT_INT_MASK = common dso_local global i32 0, align 4
@HDMI_CEC_DBG_3 = common dso_local global i32 0, align 4
@HDMI_CEC_TX_INIT = common dso_local global i64 0, align 8
@HDMI_CEC_TX_DEST = common dso_local global i64 0, align 8
@HDMI_CEC_TX_COMMAND = common dso_local global i64 0, align 8
@HDMI_CEC_TX_OPERAND = common dso_local global i64 0, align 8
@HDMI_CEC_TRANSMIT_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i64, i32, %struct.cec_msg*)* @hdmi_cec_adap_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_cec_adap_transmit(%struct.cec_adapter* %0, i64 %1, i32 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cec_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cec_msg*, align 8
  %10 = alloca %struct.hdmi_core_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.cec_msg* %3, %struct.cec_msg** %9, align 8
  %13 = load %struct.cec_adapter*, %struct.cec_adapter** %6, align 8
  %14 = call %struct.hdmi_core_data* @cec_get_drvdata(%struct.cec_adapter* %13)
  store %struct.hdmi_core_data* %14, %struct.hdmi_core_data** %10, align 8
  %15 = load %struct.cec_adapter*, %struct.cec_adapter** %6, align 8
  %16 = call i32 @hdmi_cec_clear_tx_fifo(%struct.cec_adapter* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = load %struct.cec_adapter*, %struct.cec_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %123

25:                                               ; preds = %4
  %26 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %10, align 8
  %27 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @HDMI_CEC_INT_STATUS_0, align 8
  %30 = load i32, i32* @HDMI_CEC_TX_FIFO_INT_MASK, align 4
  %31 = call i32 @hdmi_write_reg(i32 %28, i64 %29, i32 %30)
  %32 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %10, align 8
  %33 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @HDMI_CEC_INT_STATUS_1, align 8
  %36 = load i32, i32* @HDMI_CEC_RETRANSMIT_CNT_INT_MASK, align 4
  %37 = call i32 @hdmi_write_reg(i32 %34, i64 %35, i32 %36)
  %38 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %10, align 8
  %39 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HDMI_CEC_DBG_3, align 4
  %42 = load i64, i64* %7, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call i32 @REG_FLD_MOD(i32 %40, i32 %41, i64 %43, i32 6, i32 4)
  %45 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %10, align 8
  %46 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @HDMI_CEC_TX_INIT, align 8
  %49 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %50 = call i32 @cec_msg_initiator(%struct.cec_msg* %49)
  %51 = call i32 @hdmi_write_reg(i32 %47, i64 %48, i32 %50)
  %52 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %53 = call i32 @cec_msg_destination(%struct.cec_msg* %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %55 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %25
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, 128
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %25
  %62 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %10, align 8
  %63 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* @HDMI_CEC_TX_DEST, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @hdmi_write_reg(i32 %64, i64 %65, i32 %66)
  %68 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %69 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %123

73:                                               ; preds = %61
  %74 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %10, align 8
  %75 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* @HDMI_CEC_TX_COMMAND, align 8
  %78 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %79 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @hdmi_write_reg(i32 %76, i64 %77, i32 %82)
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %109, %73
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %87 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 2
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %84
  %92 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %10, align 8
  %93 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* @HDMI_CEC_TX_OPERAND, align 8
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 %96, 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %95, %98
  %100 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %101 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 2, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @hdmi_write_reg(i32 %94, i64 %99, i32 %107)
  br label %109

109:                                              ; preds = %91
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %84

112:                                              ; preds = %84
  %113 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %10, align 8
  %114 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* @HDMI_CEC_TRANSMIT_DATA, align 8
  %117 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %118 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 2
  %121 = or i32 %120, 16
  %122 = call i32 @hdmi_write_reg(i32 %115, i64 %116, i32 %121)
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %112, %72, %18
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.hdmi_core_data* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @hdmi_cec_clear_tx_fifo(%struct.cec_adapter*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @hdmi_write_reg(i32, i64, i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i64, i32, i32) #1

declare dso_local i32 @cec_msg_initiator(%struct.cec_msg*) #1

declare dso_local i32 @cec_msg_destination(%struct.cec_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
