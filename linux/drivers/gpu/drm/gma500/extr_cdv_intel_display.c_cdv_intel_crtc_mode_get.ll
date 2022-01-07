; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_intel_crtc_mode_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_intel_crtc_mode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_offset*, %struct.TYPE_2__ }
%struct.psb_offset = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.psb_pipe* }
%struct.psb_pipe = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { i32 }
%struct.gma_crtc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_display_mode* @cdv_intel_crtc_mode_get(%struct.drm_device* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.gma_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_psb_private*, align 8
  %9 = alloca %struct.psb_pipe*, align 8
  %10 = alloca %struct.psb_offset*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %5, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %17 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %16)
  store %struct.gma_crtc* %17, %struct.gma_crtc** %6, align 8
  %18 = load %struct.gma_crtc*, %struct.gma_crtc** %6, align 8
  %19 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.drm_psb_private*, %struct.drm_psb_private** %22, align 8
  store %struct.drm_psb_private* %23, %struct.drm_psb_private** %8, align 8
  %24 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %25 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.psb_pipe*, %struct.psb_pipe** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %27, i64 %29
  store %struct.psb_pipe* %30, %struct.psb_pipe** %9, align 8
  %31 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %32 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %31, i32 0, i32 0
  %33 = load %struct.psb_offset*, %struct.psb_offset** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %33, i64 %35
  store %struct.psb_offset* %36, %struct.psb_offset** %10, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = call i64 @gma_power_begin(%struct.drm_device* %37, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %2
  %41 = load %struct.psb_offset*, %struct.psb_offset** %10, align 8
  %42 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @REG_READ(i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.psb_offset*, %struct.psb_offset** %10, align 8
  %46 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @REG_READ(i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.psb_offset*, %struct.psb_offset** %10, align 8
  %50 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @REG_READ(i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load %struct.psb_offset*, %struct.psb_offset** %10, align 8
  %54 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @REG_READ(i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %58 = call i32 @gma_power_end(%struct.drm_device* %57)
  br label %72

59:                                               ; preds = %2
  %60 = load %struct.psb_pipe*, %struct.psb_pipe** %9, align 8
  %61 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load %struct.psb_pipe*, %struct.psb_pipe** %9, align 8
  %64 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %13, align 4
  %66 = load %struct.psb_pipe*, %struct.psb_pipe** %9, align 8
  %67 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %14, align 4
  %69 = load %struct.psb_pipe*, %struct.psb_pipe** %9, align 8
  %70 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %59, %40
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.drm_display_mode* @kzalloc(i32 36, i32 %73)
  store %struct.drm_display_mode* %74, %struct.drm_display_mode** %11, align 8
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %76 = icmp ne %struct.drm_display_mode* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  br label %133

78:                                               ; preds = %72
  %79 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %80 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %81 = call i32 @cdv_intel_crtc_clock_get(%struct.drm_device* %79, %struct.drm_crtc* %80)
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %84, 65535
  %86 = add nsw i32 %85, 1
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, -65536
  %91 = lshr i32 %90, 16
  %92 = add i32 %91, 1
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %13, align 4
  %96 = and i32 %95, 65535
  %97 = add nsw i32 %96, 1
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %13, align 4
  %101 = and i32 %100, -65536
  %102 = lshr i32 %101, 16
  %103 = add i32 %102, 1
  %104 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %105 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %14, align 4
  %107 = and i32 %106, 65535
  %108 = add nsw i32 %107, 1
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %14, align 4
  %112 = and i32 %111, -65536
  %113 = lshr i32 %112, 16
  %114 = add i32 %113, 1
  %115 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %116 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %15, align 4
  %118 = and i32 %117, 65535
  %119 = add nsw i32 %118, 1
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %15, align 4
  %123 = and i32 %122, -65536
  %124 = lshr i32 %123, 16
  %125 = add i32 %124, 1
  %126 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %127 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  %128 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %129 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %128)
  %130 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %131 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %130, i32 0)
  %132 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  store %struct.drm_display_mode* %132, %struct.drm_display_mode** %3, align 8
  br label %133

133:                                              ; preds = %78, %77
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  ret %struct.drm_display_mode* %134
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

declare dso_local %struct.drm_display_mode* @kzalloc(i32, i32) #1

declare dso_local i32 @cdv_intel_crtc_clock_get(%struct.drm_device*, %struct.drm_crtc*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
