; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi4_cec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi4_cec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hdmi_core_data = type { i32, %struct.hdmi_wp_data* }
%struct.hdmi_wp_data = type { i32 }

@CEC_CAP_TRANSMIT = common dso_local global i32 0, align 4
@CEC_CAP_LOG_ADDRS = common dso_local global i32 0, align 4
@CEC_CAP_PASSTHROUGH = common dso_local global i32 0, align 4
@CEC_CAP_RC = common dso_local global i32 0, align 4
@hdmi_cec_adap_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"omap4\00", align 1
@CEC_MAX_LOG_ADDRS = common dso_local global i32 0, align 4
@HDMI_WP_CLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi4_cec_init(%struct.platform_device* %0, %struct.hdmi_core_data* %1, %struct.hdmi_wp_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.hdmi_core_data*, align 8
  %7 = alloca %struct.hdmi_wp_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.hdmi_core_data* %1, %struct.hdmi_core_data** %6, align 8
  store %struct.hdmi_wp_data* %2, %struct.hdmi_wp_data** %7, align 8
  %10 = load i32, i32* @CEC_CAP_TRANSMIT, align 4
  %11 = load i32, i32* @CEC_CAP_LOG_ADDRS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CEC_CAP_PASSTHROUGH, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CEC_CAP_RC, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @CEC_MAX_LOG_ADDRS, align 4
  %20 = call i32 @cec_allocate_adapter(i32* @hdmi_cec_adap_ops, %struct.hdmi_core_data* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %22 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %24 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @PTR_ERR_OR_ZERO(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %57

31:                                               ; preds = %3
  %32 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %7, align 8
  %33 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %34 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %33, i32 0, i32 1
  store %struct.hdmi_wp_data* %32, %struct.hdmi_wp_data** %34, align 8
  %35 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %36 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %35, i32 0, i32 1
  %37 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %36, align 8
  %38 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HDMI_WP_CLK, align 4
  %41 = call i32 @REG_FLD_MOD(i32 %39, i32 %40, i32 0, i32 5, i32 0)
  %42 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %43 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @cec_register_adapter(i32 %44, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %31
  %51 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %52 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @cec_delete_adapter(i32 %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %50, %29
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @cec_allocate_adapter(i32*, %struct.hdmi_core_data*, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cec_register_adapter(i32, i32*) #1

declare dso_local i32 @cec_delete_adapter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
