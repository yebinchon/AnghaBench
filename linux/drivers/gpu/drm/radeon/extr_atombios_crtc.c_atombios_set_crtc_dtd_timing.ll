; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_set_crtc_dtd_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_set_crtc_dtd_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_crtc = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_5__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8* }

@COMMAND = common dso_local global i32 0, align 4
@SetCRTC_UsingDTDTiming = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*)* @atombios_set_crtc_dtd_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_set_crtc_dtd_timing(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
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
  %20 = load i32, i32* @SetCRTC_UsingDTDTiming, align 4
  %21 = call i32 @GetIndexIntoMasterTable(i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = call i32 @memset(%struct.TYPE_7__* %8, i32 0, i32 88)
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 2
  %30 = sub nsw i32 %25, %29
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 11
  store i8* %31, i8** %32, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  %40 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 2
  %44 = add nsw i32 %39, %43
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 10
  store i8* %45, i8** %46, align 8
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %51 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 2
  %54 = sub nsw i32 %49, %53
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 9
  store i8* %55, i8** %56, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %65 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 2
  %68 = add nsw i32 %63, %67
  %69 = call i8* @cpu_to_le16(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 8
  store i8* %69, i8** %70, align 8
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %73, %76
  %78 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %79 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = call i8* @cpu_to_le16(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 7
  store i8* %82, i8** %83, align 8
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %86, %89
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  store i8* %91, i8** %92, align 8
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %97 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %101 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = call i8* @cpu_to_le16(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  store i8* %104, i8** %105, align 8
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %108, %111
  %113 = call i8* @cpu_to_le16(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  store i8* %113, i8** %114, align 8
  %115 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %116 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %117, i32* %118, align 8
  %119 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %120 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %124 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %2
  %130 = load i32, i32* @ATOM_VSYNC_POLARITY, align 4
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %129, %2
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %135 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i32, i32* @ATOM_HSYNC_POLARITY, align 4
  %142 = load i32, i32* %10, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %140, %133
  %145 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %146 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @DRM_MODE_FLAG_CSYNC, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32, i32* @ATOM_COMPOSITESYNC, align 4
  %153 = load i32, i32* %10, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %151, %144
  %156 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %157 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load i32, i32* @ATOM_INTERLACE, align 4
  %164 = load i32, i32* %10, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %162, %155
  %167 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %168 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load i32, i32* @ATOM_DOUBLE_CLOCK_MODE, align 4
  %175 = load i32, i32* %10, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %173, %166
  %178 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %179 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %178, i32 0, i32 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  %185 = load i32, i32* @ATOM_H_REPLICATIONBY2, align 4
  %186 = load i32, i32* @ATOM_V_REPLICATIONBY2, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* %10, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %184, %177
  %191 = load i32, i32* %10, align 4
  %192 = call i8* @cpu_to_le16(i32 %191)
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  store i8* %192, i8** %194, align 8
  %195 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %196 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %197, i32* %198, align 8
  %199 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %200 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %9, align 4
  %204 = bitcast %struct.TYPE_7__* %8 to i32*
  %205 = call i32 @atom_execute_table(i32 %202, i32 %203, i32* %204)
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
