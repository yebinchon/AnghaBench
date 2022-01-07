; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi_cec_adap_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi_cec_adap_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.hdmi_core_data = type { i32 }

@CEC_LOG_ADDR_INVALID = common dso_local global i32 0, align 4
@HDMI_CEC_CA_7_0 = common dso_local global i32 0, align 4
@HDMI_CEC_CA_15_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @hdmi_cec_adap_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_cec_adap_log_addr(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_core_data*, align 8
  %7 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %9 = call %struct.hdmi_core_data* @cec_get_drvdata(%struct.cec_adapter* %8)
  store %struct.hdmi_core_data* %9, %struct.hdmi_core_data** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %15 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HDMI_CEC_CA_7_0, align 4
  %18 = call i32 @hdmi_write_reg(i32 %16, i32 %17, i32 0)
  %19 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %20 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HDMI_CEC_CA_15_8, align 4
  %23 = call i32 @hdmi_write_reg(i32 %21, i32 %22, i32 0)
  store i32 0, i32* %3, align 4
  br label %61

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 7
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %29 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HDMI_CEC_CA_7_0, align 4
  %32 = call i32 @hdmi_read_reg(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %38 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HDMI_CEC_CA_7_0, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @hdmi_write_reg(i32 %39, i32 %40, i32 %41)
  br label %60

43:                                               ; preds = %24
  %44 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %45 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HDMI_CEC_CA_15_8, align 4
  %48 = call i32 @hdmi_read_reg(i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 8
  %51 = shl i32 1, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %55 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HDMI_CEC_CA_15_8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @hdmi_write_reg(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %43, %27
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.hdmi_core_data* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
