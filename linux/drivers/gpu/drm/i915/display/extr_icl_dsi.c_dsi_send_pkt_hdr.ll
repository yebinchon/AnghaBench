; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_dsi_send_pkt_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_dsi_send_pkt_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dsi_host = type { i32, %struct.intel_dsi* }
%struct.intel_dsi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mipi_dsi_packet = type { i32*, i64 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"send pkt header failed, not enough hdr credits\0A\00", align 1
@PAYLOAD_PRESENT = common dso_local global i32 0, align 4
@VBLANK_FENCE = common dso_local global i32 0, align 4
@LP_DATA_TRANSFER = common dso_local global i32 0, align 4
@PARAM_WC_MASK = common dso_local global i32 0, align 4
@VC_MASK = common dso_local global i32 0, align 4
@DT_MASK = common dso_local global i32 0, align 4
@VC_SHIFT = common dso_local global i32 0, align 4
@DT_SHIFT = common dso_local global i32 0, align 4
@PARAM_WC_LOWER_SHIFT = common dso_local global i32 0, align 4
@PARAM_WC_UPPER_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dsi_host*, i32*, i64, i32)* @dsi_send_pkt_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_send_pkt_hdr(%struct.intel_dsi_host* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mipi_dsi_packet, align 8
  %7 = alloca %struct.intel_dsi_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_dsi*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = bitcast %struct.mipi_dsi_packet* %6 to { i32*, i64 }*
  %15 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %14, i32 0, i32 0
  store i32* %1, i32** %15, align 8
  %16 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %14, i32 0, i32 1
  store i64 %2, i64* %16, align 8
  store %struct.intel_dsi_host* %0, %struct.intel_dsi_host** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.intel_dsi_host*, %struct.intel_dsi_host** %7, align 8
  %18 = getelementptr inbounds %struct.intel_dsi_host, %struct.intel_dsi_host* %17, i32 0, i32 1
  %19 = load %struct.intel_dsi*, %struct.intel_dsi** %18, align 8
  store %struct.intel_dsi* %19, %struct.intel_dsi** %9, align 8
  %20 = load %struct.intel_dsi*, %struct.intel_dsi** %9, align 8
  %21 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.drm_i915_private* @to_i915(i32 %24)
  store %struct.drm_i915_private* %25, %struct.drm_i915_private** %10, align 8
  %26 = load %struct.intel_dsi_host*, %struct.intel_dsi_host** %7, align 8
  %27 = getelementptr inbounds %struct.intel_dsi_host, %struct.intel_dsi_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dsi_port_to_transcoder(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @header_credits_available(%struct.drm_i915_private* %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %113

37:                                               ; preds = %4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @DSI_CMD_TXHDR(i32 %38)
  %40 = call i32 @I915_READ(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %6, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @PAYLOAD_PRESENT, align 4
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  br label %53

48:                                               ; preds = %37
  %49 = load i32, i32* @PAYLOAD_PRESENT, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* @VBLANK_FENCE, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @LP_DATA_TRANSFER, align 4
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load i32, i32* @PARAM_WC_MASK, align 4
  %66 = load i32, i32* @VC_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @DT_MASK, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %6, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @VC_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @VC_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %12, align 4
  %83 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %6, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DT_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @DT_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %12, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %12, align 4
  %93 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %6, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PARAM_WC_LOWER_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %12, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %12, align 4
  %101 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %6, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PARAM_WC_UPPER_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @DSI_CMD_TXHDR(i32 %109)
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @I915_WRITE(i32 %110, i32 %111)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %64, %35
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @dsi_port_to_transcoder(i32) #1

declare dso_local i32 @header_credits_available(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DSI_CMD_TXHDR(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
