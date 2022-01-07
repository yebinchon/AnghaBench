; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_crtc = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8* }

@COMMAND = common dso_local global i32 0, align 4
@SetCRTC_Timing = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@ATOM_VSYNC_POLARITY = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@ATOM_HSYNC_POLARITY = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_CSYNC = common dso_local global i32 0, align 4
@ATOM_COMPOSITESYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@ATOM_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@ATOM_DOUBLE_CLOCK_MODE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@ATOM_H_REPLICATIONBY2 = common dso_local global i32 0, align 4
@ATOM_V_REPLICATIONBY2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*)* @atombios_crtc_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_crtc_set_timing(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %11)
  store %struct.radeon_crtc* %12, %struct.radeon_crtc** %5, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %7, align 8
  %19 = load i32, i32* @COMMAND, align 4
  %20 = load i32, i32* @SetCRTC_Timing, align 4
  %21 = call i32 @GetIndexIntoMasterTable(i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = call i32 @memset(%struct.TYPE_7__* %8, i32 0, i32 96)
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 13
  store i8* %26, i8** %27, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 12
  store i8* %31, i8** %32, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 11
  store i8* %36, i8** %37, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 10
  store i8* %45, i8** %46, align 8
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 9
  store i8* %50, i8** %51, align 8
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 8
  store i8* %55, i8** %56, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @cpu_to_le16(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 7
  store i8* %60, i8** %61, align 8
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  %69 = call i8* @cpu_to_le16(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  store i8* %69, i8** %70, align 8
  %71 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %72 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  store i32 %73, i32* %74, align 4
  %75 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %76 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  store i32 %77, i32* %78, align 8
  %79 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %80 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %84 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %2
  %94 = load i32, i32* @ATOM_VSYNC_POLARITY, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %93, %2
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @ATOM_HSYNC_POLARITY, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %104, %97
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @DRM_MODE_FLAG_CSYNC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32, i32* @ATOM_COMPOSITESYNC, align 4
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %115, %108
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32, i32* @ATOM_INTERLACE, align 4
  %128 = load i32, i32* %10, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %126, %119
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @ATOM_DOUBLE_CLOCK_MODE, align 4
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %137, %130
  %142 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %143 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load i32, i32* @ATOM_H_REPLICATIONBY2, align 4
  %150 = load i32, i32* @ATOM_V_REPLICATIONBY2, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %10, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %148, %141
  %155 = load i32, i32* %10, align 4
  %156 = call i8* @cpu_to_le16(i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %160 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %161, i32* %162, align 8
  %163 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %9, align 4
  %168 = bitcast %struct.TYPE_7__* %8 to i32*
  %169 = call i32 @atom_execute_table(i32 %166, i32 %167, i32* %168)
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
