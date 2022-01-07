; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi.c_intel_dsi_host_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi.c_intel_dsi_host_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_msg = type { i32, i32, i32 }
%struct.intel_dsi_host = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.mipi_dsi_packet = type { i32*, i32*, i64 }

@MIPI_DSI_MSG_USE_LPM = common dso_local global i32 0, align 4
@LP_DATA_FIFO_FULL = common dso_local global i32 0, align 4
@LP_CTRL_FIFO_FULL = common dso_local global i32 0, align 4
@HS_DATA_FIFO_FULL = common dso_local global i32 0, align 4
@HS_CTRL_FIFO_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Timeout waiting for HS/LP DATA FIFO !full\0A\00", align 1
@GEN_READ_DATA_AVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Timeout waiting for HS/LP CTRL FIFO !full\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Timeout waiting for read data.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mipi_dsi_host*, %struct.mipi_dsi_msg*)* @intel_dsi_host_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_dsi_host_transfer(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca %struct.intel_dsi_host*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mipi_dsi_packet, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  %18 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %19 = call %struct.intel_dsi_host* @to_intel_dsi_host(%struct.mipi_dsi_host* %18)
  store %struct.intel_dsi_host* %19, %struct.intel_dsi_host** %6, align 8
  %20 = load %struct.intel_dsi_host*, %struct.intel_dsi_host** %6, align 8
  %21 = getelementptr inbounds %struct.intel_dsi_host, %struct.intel_dsi_host* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.drm_device*, %struct.drm_device** %25, align 8
  store %struct.drm_device* %26, %struct.drm_device** %7, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %28 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %27)
  store %struct.drm_i915_private* %28, %struct.drm_i915_private** %8, align 8
  %29 = load %struct.intel_dsi_host*, %struct.intel_dsi_host** %6, align 8
  %30 = getelementptr inbounds %struct.intel_dsi_host, %struct.intel_dsi_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %33 = call i64 @mipi_dsi_create_packet(%struct.mipi_dsi_packet* %10, %struct.mipi_dsi_msg* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i64, i64* %11, align 8
  store i64 %37, i64* %3, align 8
  br label %147

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %10, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %12, align 8
  %41 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %10, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %13, align 8
  %43 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %44 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MIPI_DSI_MSG_USE_LPM, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @MIPI_LP_GEN_DATA(i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* @LP_DATA_FIFO_FULL, align 4
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @MIPI_LP_GEN_CTRL(i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* @LP_CTRL_FIFO_FULL, align 4
  store i32 %55, i32* %17, align 4
  br label %63

56:                                               ; preds = %38
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @MIPI_HS_GEN_DATA(i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* @HS_DATA_FIFO_FULL, align 4
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @MIPI_HS_GEN_CTRL(i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* @HS_CTRL_FIFO_FULL, align 4
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %56, %49
  %64 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %10, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @MIPI_GEN_FIFO_STAT(i32 %69)
  %71 = load i32, i32* %16, align 4
  %72 = call i64 @intel_de_wait_for_clear(%struct.drm_i915_private* %68, i32 %70, i32 %71, i32 50)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %67
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %78 = load i32, i32* %14, align 4
  %79 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %10, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %10, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @write_data(%struct.drm_i915_private* %77, i32 %78, i32* %80, i64 %82)
  br label %84

84:                                               ; preds = %76, %63
  %85 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %86 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @MIPI_INTR_STAT(i32 %90)
  %92 = load i32, i32* @GEN_READ_DATA_AVAIL, align 4
  %93 = call i32 @I915_WRITE(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @MIPI_GEN_FIFO_STAT(i32 %96)
  %98 = load i32, i32* %17, align 4
  %99 = call i64 @intel_de_wait_for_clear(%struct.drm_i915_private* %95, i32 %97, i32 %98, i32 50)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %94
  %104 = load i32, i32* %15, align 4
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 16
  %109 = load i32*, i32** %12, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 8
  %113 = or i32 %108, %112
  %114 = load i32*, i32** %12, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %113, %116
  %118 = call i32 @I915_WRITE(i32 %104, i32 %117)
  %119 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %120 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %103
  %124 = load i32, i32* @GEN_READ_DATA_AVAIL, align 4
  store i32 %124, i32* %16, align 4
  %125 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @MIPI_INTR_STAT(i32 %126)
  %128 = load i32, i32* %16, align 4
  %129 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %125, i32 %127, i32 %128, i32 50)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %123
  %134 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %137 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %140 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @read_data(%struct.drm_i915_private* %134, i32 %135, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %133, %103
  %144 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %10, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 4, %145
  store i64 %146, i64* %3, align 8
  br label %147

147:                                              ; preds = %143, %36
  %148 = load i64, i64* %3, align 8
  ret i64 %148
}

declare dso_local %struct.intel_dsi_host* @to_intel_dsi_host(%struct.mipi_dsi_host*) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @mipi_dsi_create_packet(%struct.mipi_dsi_packet*, %struct.mipi_dsi_msg*) #1

declare dso_local i32 @MIPI_LP_GEN_DATA(i32) #1

declare dso_local i32 @MIPI_LP_GEN_CTRL(i32) #1

declare dso_local i32 @MIPI_HS_GEN_DATA(i32) #1

declare dso_local i32 @MIPI_HS_GEN_CTRL(i32) #1

declare dso_local i64 @intel_de_wait_for_clear(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @MIPI_GEN_FIFO_STAT(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @write_data(%struct.drm_i915_private*, i32, i32*, i64) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @MIPI_INTR_STAT(i32) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @read_data(%struct.drm_i915_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
