; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi_vbt.c_mipi_exec_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi_vbt.c_mipi_exec_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dsi = type { i32, %struct.TYPE_6__**, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MIPI_PORT_SHIFT = common dso_local global i32 0, align 4
@PORT_C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"no dsi device for port %c\0A\00", align 1
@MIPI_TRANSFER_MODE_SHIFT = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@MIPI_VIRTUAL_CHANNEL_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Generic Read not yet implemented or used\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"DCS Read not yet implemented or used\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.intel_dsi*, i32*)* @mipi_exec_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mipi_exec_send_packet(%struct.intel_dsi* %0, i32* %1) #0 {
  %3 = alloca %struct.intel_dsi*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.mipi_dsi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_dsi* %0, %struct.intel_dsi** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.intel_dsi*, %struct.intel_dsi** %3, align 8
  %13 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %5, align 8
  %18 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %4, align 8
  %21 = load i32, i32* %19, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %4, align 8
  %24 = load i32, i32* %22, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MIPI_PORT_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = and i32 %31, 3
  store i32 %32, i32* %9, align 4
  %33 = load %struct.intel_dsi*, %struct.intel_dsi** %3, align 8
  %34 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PORT_C, align 4
  %37 = shl i32 1, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @PORT_C, align 4
  store i32 %40, i32* %11, align 4
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @intel_dsi_seq_port_to_port(i32 %42)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %39
  %45 = load %struct.intel_dsi*, %struct.intel_dsi** %3, align 8
  %46 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %52, align 8
  store %struct.mipi_dsi_device* %53, %struct.mipi_dsi_device** %6, align 8
  %54 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %55 = icmp ne %struct.mipi_dsi_device* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @port_name(i32 %57)
  %59 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %129

60:                                               ; preds = %44
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @MIPI_TRANSFER_MODE_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %70 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %79

73:                                               ; preds = %60
  %74 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %75 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %76 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %66
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @MIPI_VIRTUAL_CHANNEL_SHIFT, align 4
  %82 = ashr i32 %80, %81
  %83 = and i32 %82, 3
  %84 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %85 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  switch i32 %86, label %120 [
    i32 130, label %87
    i32 129, label %90
    i32 128, label %94
    i32 133, label %98
    i32 132, label %98
    i32 131, label %98
    i32 134, label %100
    i32 136, label %105
    i32 135, label %109
    i32 137, label %113
    i32 138, label %115
  ]

87:                                               ; preds = %79
  %88 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %89 = call i32 @mipi_dsi_generic_write(%struct.mipi_dsi_device* %88, i32* null, i32 0)
  br label %120

90:                                               ; preds = %79
  %91 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @mipi_dsi_generic_write(%struct.mipi_dsi_device* %91, i32* %92, i32 1)
  br label %120

94:                                               ; preds = %79
  %95 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @mipi_dsi_generic_write(%struct.mipi_dsi_device* %95, i32* %96, i32 2)
  br label %120

98:                                               ; preds = %79, %79, %79
  %99 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %120

100:                                              ; preds = %79
  %101 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @mipi_dsi_generic_write(%struct.mipi_dsi_device* %101, i32* %102, i32 %103)
  br label %120

105:                                              ; preds = %79
  %106 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @mipi_dsi_dcs_write_buffer(%struct.mipi_dsi_device* %106, i32* %107, i32 1)
  br label %120

109:                                              ; preds = %79
  %110 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @mipi_dsi_dcs_write_buffer(%struct.mipi_dsi_device* %110, i32* %111, i32 2)
  br label %120

113:                                              ; preds = %79
  %114 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %120

115:                                              ; preds = %79
  %116 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @mipi_dsi_dcs_write_buffer(%struct.mipi_dsi_device* %116, i32* %117, i32 %118)
  br label %120

120:                                              ; preds = %79, %115, %113, %109, %105, %100, %98, %94, %90, %87
  %121 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %122 = call i32 @INTEL_GEN(%struct.drm_i915_private* %121)
  %123 = icmp slt i32 %122, 11
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load %struct.intel_dsi*, %struct.intel_dsi** %3, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @vlv_dsi_wait_for_fifo_empty(%struct.intel_dsi* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %120
  br label %129

129:                                              ; preds = %128, %56
  %130 = load i32, i32* %10, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %4, align 8
  %134 = load i32*, i32** %4, align 8
  ret i32* %134
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @intel_dsi_seq_port_to_port(i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @mipi_dsi_generic_write(%struct.mipi_dsi_device*, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @mipi_dsi_dcs_write_buffer(%struct.mipi_dsi_device*, i32*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_dsi_wait_for_fifo_empty(%struct.intel_dsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
