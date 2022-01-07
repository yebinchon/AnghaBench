; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-cec.c_dw_hdmi_cec_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-cec.c_dw_hdmi_cec_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.dw_hdmi_cec = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@HDMI_CEC_MASK = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_CEC_STAT0 = common dso_local global i32 0, align 4
@HDMI_CEC_POLARITY = common dso_local global i32 0, align 4
@HDMI_CEC_CTRL = common dso_local global i32 0, align 4
@HDMI_IH_CEC_STAT0 = common dso_local global i32 0, align 4
@HDMI_CEC_LOCK = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_INVALID = common dso_local global i32 0, align 4
@CEC_STAT_ERROR_INIT = common dso_local global i32 0, align 4
@CEC_STAT_NACK = common dso_local global i32 0, align 4
@CEC_STAT_EOM = common dso_local global i32 0, align 4
@CEC_STAT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @dw_hdmi_cec_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_cec_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_hdmi_cec*, align 8
  %6 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %8 = call %struct.dw_hdmi_cec* @cec_get_drvdata(%struct.cec_adapter* %7)
  store %struct.dw_hdmi_cec* %8, %struct.dw_hdmi_cec** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %13 = load i32, i32* @HDMI_CEC_MASK, align 4
  %14 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %12, i32 -1, i32 %13)
  %15 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %16 = load i32, i32* @HDMI_IH_MUTE_CEC_STAT0, align 4
  %17 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %15, i32 -1, i32 %16)
  %18 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %19 = load i32, i32* @HDMI_CEC_POLARITY, align 4
  %20 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %18, i32 0, i32 %19)
  %21 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %22 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %27 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i32 %28)
  br label %75

30:                                               ; preds = %2
  %31 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %32 = load i32, i32* @HDMI_CEC_CTRL, align 4
  %33 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %31, i32 0, i32 %32)
  %34 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %35 = load i32, i32* @HDMI_IH_CEC_STAT0, align 4
  %36 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %34, i32 -1, i32 %35)
  %37 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %38 = load i32, i32* @HDMI_CEC_LOCK, align 4
  %39 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %37, i32 0, i32 %38)
  %40 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %41 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %44 = call i32 @dw_hdmi_cec_log_addr(i32 %42, i32 %43)
  %45 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %46 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %51 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %49(i32 %52)
  %54 = load i32, i32* @CEC_STAT_ERROR_INIT, align 4
  %55 = load i32, i32* @CEC_STAT_NACK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CEC_STAT_EOM, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CEC_STAT_DONE, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @HDMI_CEC_POLARITY, align 4
  %64 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %61, i32 %62, i32 %63)
  %65 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* @HDMI_CEC_MASK, align 4
  %69 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %65, i32 %67, i32 %68)
  %70 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* @HDMI_IH_MUTE_CEC_STAT0, align 4
  %74 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %70, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %30, %11
  ret i32 0
}

declare dso_local %struct.dw_hdmi_cec* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @dw_hdmi_write(%struct.dw_hdmi_cec*, i32, i32) #1

declare dso_local i32 @dw_hdmi_cec_log_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
