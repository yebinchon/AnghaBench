; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_setup_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_setup_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmob_drm_crtc = type { %struct.drm_crtc }
%struct.drm_crtc = type { %struct.drm_display_mode, %struct.TYPE_4__* }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.shmob_drm_device* }
%struct.shmob_drm_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.shmob_drm_interface_data }
%struct.shmob_drm_interface_data = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@LDMT1R_VPOL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@LDMT1R_HPOL = common dso_local global i32 0, align 4
@SHMOB_DRM_IFACE_FL_DWPOL = common dso_local global i32 0, align 4
@LDMT1R_DWPOL = common dso_local global i32 0, align 4
@SHMOB_DRM_IFACE_FL_DIPOL = common dso_local global i32 0, align 4
@LDMT1R_DIPOL = common dso_local global i32 0, align 4
@SHMOB_DRM_IFACE_FL_DAPOL = common dso_local global i32 0, align 4
@LDMT1R_DAPOL = common dso_local global i32 0, align 4
@SHMOB_DRM_IFACE_FL_HSCNT = common dso_local global i32 0, align 4
@LDMT1R_HSCNT = common dso_local global i32 0, align 4
@SHMOB_DRM_IFACE_FL_DWCNT = common dso_local global i32 0, align 4
@LDMT1R_DWCNT = common dso_local global i32 0, align 4
@LDMT1R = common dso_local global i32 0, align 4
@SHMOB_DRM_IFACE_SYS8A = common dso_local global i64 0, align 8
@SHMOB_DRM_IFACE_SYS24 = common dso_local global i64 0, align 8
@LDMT2R_CSUP_SHIFT = common dso_local global i32 0, align 4
@LDMT2R_RSV = common dso_local global i32 0, align 4
@LDMT2R_VSEL = common dso_local global i32 0, align 4
@LDMT2R_WCSC_SHIFT = common dso_local global i32 0, align 4
@LDMT2R_WCEC_SHIFT = common dso_local global i32 0, align 4
@LDMT2R_WCLW_SHIFT = common dso_local global i32 0, align 4
@LDMT2R = common dso_local global i32 0, align 4
@LDMT3R_RDLC_SHIFT = common dso_local global i32 0, align 4
@LDMT3R_RCSC_SHIFT = common dso_local global i32 0, align 4
@LDMT3R_RCEC_SHIFT = common dso_local global i32 0, align 4
@LDMT3R_RCLW_SHIFT = common dso_local global i32 0, align 4
@LDMT3R = common dso_local global i32 0, align 4
@LDHCNR = common dso_local global i32 0, align 4
@LDHSYNR = common dso_local global i32 0, align 4
@LDHAJR = common dso_local global i32 0, align 4
@LDVLNR = common dso_local global i32 0, align 4
@LDVSYNR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shmob_drm_crtc*)* @shmob_drm_crtc_setup_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shmob_drm_crtc_setup_geometry(%struct.shmob_drm_crtc* %0) #0 {
  %2 = alloca %struct.shmob_drm_crtc*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.shmob_drm_device*, align 8
  %5 = alloca %struct.shmob_drm_interface_data*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  store %struct.shmob_drm_crtc* %0, %struct.shmob_drm_crtc** %2, align 8
  %8 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %8, i32 0, i32 0
  store %struct.drm_crtc* %9, %struct.drm_crtc** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %13, align 8
  store %struct.shmob_drm_device* %14, %struct.shmob_drm_device** %4, align 8
  %15 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.shmob_drm_interface_data* %18, %struct.shmob_drm_interface_data** %5, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  store %struct.drm_display_mode* %20, %struct.drm_display_mode** %6, align 8
  %21 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %22 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @LDMT1R_VPOL, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 0, %30 ], [ %32, %31 ]
  %35 = or i32 %23, %34
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @LDMT1R_HPOL, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i32 [ 0, %42 ], [ %44, %43 ]
  %47 = or i32 %35, %46
  %48 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %49 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SHMOB_DRM_IFACE_FL_DWPOL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @LDMT1R_DWPOL, align 4
  br label %57

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = or i32 %47, %58
  %60 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %61 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SHMOB_DRM_IFACE_FL_DIPOL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @LDMT1R_DIPOL, align 4
  br label %69

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = or i32 %59, %70
  %72 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %73 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SHMOB_DRM_IFACE_FL_DAPOL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @LDMT1R_DAPOL, align 4
  br label %81

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = or i32 %71, %82
  %84 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %85 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SHMOB_DRM_IFACE_FL_HSCNT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* @LDMT1R_HSCNT, align 4
  br label %93

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = or i32 %83, %94
  %96 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %97 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SHMOB_DRM_IFACE_FL_DWCNT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* @LDMT1R_DWCNT, align 4
  br label %105

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i32 [ %103, %102 ], [ 0, %104 ]
  %107 = or i32 %95, %106
  store i32 %107, i32* %7, align 4
  %108 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %109 = load i32, i32* @LDMT1R, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @lcdc_write(%struct.shmob_drm_device* %108, i32 %109, i32 %110)
  %112 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %113 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SHMOB_DRM_IFACE_SYS8A, align 8
  %116 = icmp sge i64 %114, %115
  br i1 %116, label %117, label %208

117:                                              ; preds = %105
  %118 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %119 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SHMOB_DRM_IFACE_SYS24, align 8
  %122 = icmp sle i64 %120, %121
  br i1 %122, label %123, label %208

123:                                              ; preds = %117
  %124 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %125 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @LDMT2R_CSUP_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %131 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 9
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %123
  %136 = load i32, i32* @LDMT2R_RSV, align 4
  br label %138

137:                                              ; preds = %123
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i32 [ %136, %135 ], [ 0, %137 ]
  %140 = or i32 %129, %139
  %141 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %142 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 8
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* @LDMT2R_VSEL, align 4
  br label %149

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %146
  %150 = phi i32 [ %147, %146 ], [ 0, %148 ]
  %151 = or i32 %140, %150
  %152 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %153 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @LDMT2R_WCSC_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = or i32 %151, %157
  %159 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %160 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @LDMT2R_WCEC_SHIFT, align 4
  %164 = shl i32 %162, %163
  %165 = or i32 %158, %164
  %166 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %167 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @LDMT2R_WCLW_SHIFT, align 4
  %171 = shl i32 %169, %170
  %172 = or i32 %165, %171
  store i32 %172, i32* %7, align 4
  %173 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %174 = load i32, i32* @LDMT2R, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @lcdc_write(%struct.shmob_drm_device* %173, i32 %174, i32 %175)
  %177 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %178 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @LDMT3R_RDLC_SHIFT, align 4
  %182 = shl i32 %180, %181
  %183 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %184 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @LDMT3R_RCSC_SHIFT, align 4
  %188 = shl i32 %186, %187
  %189 = or i32 %182, %188
  %190 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %191 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @LDMT3R_RCEC_SHIFT, align 4
  %195 = shl i32 %193, %194
  %196 = or i32 %189, %195
  %197 = load %struct.shmob_drm_interface_data*, %struct.shmob_drm_interface_data** %5, align 8
  %198 = getelementptr inbounds %struct.shmob_drm_interface_data, %struct.shmob_drm_interface_data* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @LDMT3R_RCLW_SHIFT, align 4
  %202 = shl i32 %200, %201
  %203 = or i32 %196, %202
  store i32 %203, i32* %7, align 4
  %204 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %205 = load i32, i32* @LDMT3R, align 4
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @lcdc_write(%struct.shmob_drm_device* %204, i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %149, %117, %105
  %209 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %210 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sdiv i32 %211, 8
  %213 = shl i32 %212, 16
  %214 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %215 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = sdiv i32 %216, 8
  %218 = or i32 %213, %217
  store i32 %218, i32* %7, align 4
  %219 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %220 = load i32, i32* @LDHCNR, align 4
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @lcdc_write(%struct.shmob_drm_device* %219, i32 %220, i32 %221)
  %223 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %224 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %227 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %225, %228
  %230 = sdiv i32 %229, 8
  %231 = shl i32 %230, 16
  %232 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %233 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = sdiv i32 %234, 8
  %236 = or i32 %231, %235
  store i32 %236, i32* %7, align 4
  %237 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %238 = load i32, i32* @LDHSYNR, align 4
  %239 = load i32, i32* %7, align 4
  %240 = call i32 @lcdc_write(%struct.shmob_drm_device* %237, i32 %238, i32 %239)
  %241 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %242 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, 7
  %245 = shl i32 %244, 24
  %246 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %247 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, 7
  %250 = shl i32 %249, 16
  %251 = or i32 %245, %250
  %252 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %253 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %256 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 %254, %257
  %259 = and i32 %258, 7
  %260 = shl i32 %259, 8
  %261 = or i32 %251, %260
  %262 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %263 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, 7
  %266 = or i32 %261, %265
  store i32 %266, i32* %7, align 4
  %267 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %268 = load i32, i32* @LDHAJR, align 4
  %269 = load i32, i32* %7, align 4
  %270 = call i32 @lcdc_write(%struct.shmob_drm_device* %267, i32 %268, i32 %269)
  %271 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %272 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = shl i32 %273, 16
  %275 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %276 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %274, %277
  store i32 %278, i32* %7, align 4
  %279 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %280 = load i32, i32* @LDVLNR, align 4
  %281 = load i32, i32* %7, align 4
  %282 = call i32 @lcdc_write(%struct.shmob_drm_device* %279, i32 %280, i32 %281)
  %283 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %284 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %283, i32 0, i32 7
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %287 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %286, i32 0, i32 8
  %288 = load i32, i32* %287, align 4
  %289 = sub nsw i32 %285, %288
  %290 = shl i32 %289, 16
  %291 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %292 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %290, %293
  store i32 %294, i32* %7, align 4
  %295 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %296 = load i32, i32* @LDVSYNR, align 4
  %297 = load i32, i32* %7, align 4
  %298 = call i32 @lcdc_write(%struct.shmob_drm_device* %295, i32 %296, i32 %297)
  ret void
}

declare dso_local i32 @lcdc_write(%struct.shmob_drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
