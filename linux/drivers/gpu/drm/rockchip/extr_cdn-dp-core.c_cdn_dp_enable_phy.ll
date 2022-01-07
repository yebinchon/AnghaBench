; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_enable_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_enable_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32, i32 }
%struct.cdn_dp_port = type { i32, i32, i32, i32, i32 }
%union.extcon_property_value = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"phy power on failed: %d\0A\00", align 1
@GRF_SOC_CON26 = common dso_local global i32 0, align 4
@DPTX_HPD_SEL_MASK = common dso_local global i32 0, align 4
@DPTX_HPD_SEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to write HPD_SEL %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"hpd does not exist\0A\00", align 1
@EXTCON_DISP_DP = common dso_local global i32 0, align 4
@EXTCON_PROP_USB_TYPEC_POLARITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"get property failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"set host capabilities failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"phy power off failed: %d\00", align 1
@DPTX_HPD_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*, %struct.cdn_dp_port*)* @cdn_dp_enable_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_enable_phy(%struct.cdn_dp_device* %0, %struct.cdn_dp_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdn_dp_device*, align 8
  %5 = alloca %struct.cdn_dp_port*, align 8
  %6 = alloca %union.extcon_property_value, align 4
  %7 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %4, align 8
  store %struct.cdn_dp_port* %1, %struct.cdn_dp_port** %5, align 8
  %8 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %5, align 8
  %9 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %5, align 8
  %14 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @phy_power_on(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %21 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %113

25:                                               ; preds = %12
  %26 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %5, align 8
  %27 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %30 = load i32, i32* @GRF_SOC_CON26, align 4
  %31 = load i32, i32* @DPTX_HPD_SEL_MASK, align 4
  %32 = load i32, i32* @DPTX_HPD_SEL, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @cdn_dp_grf_write(%struct.cdn_dp_device* %29, i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %39 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %97

43:                                               ; preds = %28
  %44 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %45 = call i32 @cdn_dp_get_hpd_status(%struct.cdn_dp_device* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %53 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %48
  br label %97

57:                                               ; preds = %43
  %58 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %5, align 8
  %59 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @EXTCON_DISP_DP, align 4
  %62 = load i32, i32* @EXTCON_PROP_USB_TYPEC_POLARITY, align 4
  %63 = call i32 @extcon_get_property(i32 %60, i32 %61, i32 %62, %union.extcon_property_value* %6)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %68 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %97

71:                                               ; preds = %57
  %72 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %5, align 8
  %73 = call i32 @cdn_dp_get_port_lanes(%struct.cdn_dp_port* %72)
  %74 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %5, align 8
  %75 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %77 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %5, align 8
  %78 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = bitcast %union.extcon_property_value* %6 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cdn_dp_set_host_cap(%struct.cdn_dp_device* %76, i32 %79, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %71
  %86 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %87 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %97

91:                                               ; preds = %71
  %92 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %5, align 8
  %93 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %96 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %3, align 4
  br label %121

97:                                               ; preds = %85, %66, %56, %37
  %98 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %5, align 8
  %99 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @phy_power_off(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %105 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  br label %112

109:                                              ; preds = %97
  %110 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %5, align 8
  %111 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %103
  br label %113

113:                                              ; preds = %112, %19
  %114 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %115 = load i32, i32* @GRF_SOC_CON26, align 4
  %116 = load i32, i32* @DPTX_HPD_SEL_MASK, align 4
  %117 = load i32, i32* @DPTX_HPD_DEL, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @cdn_dp_grf_write(%struct.cdn_dp_device* %114, i32 %115, i32 %118)
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %113, %91
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @cdn_dp_grf_write(%struct.cdn_dp_device*, i32, i32) #1

declare dso_local i32 @cdn_dp_get_hpd_status(%struct.cdn_dp_device*) #1

declare dso_local i32 @extcon_get_property(i32, i32, i32, %union.extcon_property_value*) #1

declare dso_local i32 @cdn_dp_get_port_lanes(%struct.cdn_dp_port*) #1

declare dso_local i32 @cdn_dp_set_host_cap(%struct.cdn_dp_device*, i32, i32) #1

declare dso_local i64 @phy_power_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
