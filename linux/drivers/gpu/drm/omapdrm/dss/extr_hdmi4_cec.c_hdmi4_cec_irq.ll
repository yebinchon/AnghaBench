; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi4_cec_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi4_cec_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_core_data = type { i32, i32 }

@HDMI_CEC_INT_STATUS_0 = common dso_local global i32 0, align 4
@HDMI_CEC_INT_STATUS_1 = common dso_local global i32 0, align 4
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@HDMI_CEC_DBG_3 = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_MAX_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi4_cec_irq(%struct.hdmi_core_data* %0) #0 {
  %2 = alloca %struct.hdmi_core_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdmi_core_data* %0, %struct.hdmi_core_data** %2, align 8
  %6 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %7 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HDMI_CEC_INT_STATUS_0, align 4
  %10 = call i32 @hdmi_read_reg(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %12 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HDMI_CEC_INT_STATUS_1, align 4
  %15 = call i32 @hdmi_read_reg(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %17 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HDMI_CEC_INT_STATUS_0, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @hdmi_write_reg(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %23 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HDMI_CEC_INT_STATUS_1, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @hdmi_write_reg(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %1
  %32 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %33 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %36 = call i32 @cec_transmit_done(i32 %34, i32 %35, i32 0, i32 0, i32 0, i32 0)
  %37 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %38 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HDMI_CEC_DBG_3, align 4
  %41 = call i32 @REG_FLD_MOD(i32 %39, i32 %40, i32 1, i32 7, i32 7)
  br label %68

42:                                               ; preds = %1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %48 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HDMI_CEC_DBG_3, align 4
  %51 = call i32 @hdmi_read_reg(i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %53 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %56 = load i32, i32* @CEC_TX_STATUS_MAX_RETRIES, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 4
  %60 = and i32 %59, 7
  %61 = call i32 @cec_transmit_done(i32 %54, i32 %57, i32 0, i32 %60, i32 0, i32 0)
  %62 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %63 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HDMI_CEC_DBG_3, align 4
  %66 = call i32 @REG_FLD_MOD(i32 %64, i32 %65, i32 1, i32 7, i32 7)
  br label %67

67:                                               ; preds = %46, %42
  br label %68

68:                                               ; preds = %67, %31
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %74 = call i32 @hdmi_cec_received_msg(%struct.hdmi_core_data* %73)
  br label %75

75:                                               ; preds = %72, %68
  ret void
}

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

declare dso_local i32 @cec_transmit_done(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_cec_received_msg(%struct.hdmi_core_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
