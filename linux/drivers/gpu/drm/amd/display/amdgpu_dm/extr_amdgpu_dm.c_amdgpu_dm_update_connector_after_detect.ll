; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_update_connector_after_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_update_connector_after_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_dm_connector = type { %struct.edid*, %struct.dc_sink*, i64, %struct.TYPE_9__, i32, %struct.dc_sink*, %struct.drm_connector, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.edid = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.dc_sink = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.drm_connector = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.dc_sink* }
%struct.TYPE_6__ = type { i32 }

@DRM_FORCE_UNSPECIFIED = common dso_local global i64 0, align 8
@SIGNAL_TYPE_DISPLAY_PORT_MST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"DCHPD: connector_id=%d: dc_sink didn't change.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"DCHPD: connector_id=%d: Old sink=%p New sink=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_dm_connector*)* @amdgpu_dm_update_connector_after_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_dm_update_connector_after_detect(%struct.amdgpu_dm_connector* %0) #0 {
  %2 = alloca %struct.amdgpu_dm_connector*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.dc_sink*, align 8
  store %struct.amdgpu_dm_connector* %0, %struct.amdgpu_dm_connector** %2, align 8
  %6 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %6, i32 0, i32 6
  store %struct.drm_connector* %7, %struct.drm_connector** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 1
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %4, align 8
  %11 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %11, i32 0, i32 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %228

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %19 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %18, i32 0, i32 7
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.dc_sink*, %struct.dc_sink** %21, align 8
  store %struct.dc_sink* %22, %struct.dc_sink** %5, align 8
  %23 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %24 = icmp ne %struct.dc_sink* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %27 = call i32 @dc_sink_retain(%struct.dc_sink* %26)
  br label %28

28:                                               ; preds = %25, %17
  %29 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DRM_FORCE_UNSPECIFIED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %101

35:                                               ; preds = %28
  %36 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %36, i32 0, i32 5
  %38 = load %struct.dc_sink*, %struct.dc_sink** %37, align 8
  %39 = icmp ne %struct.dc_sink* %38, null
  br i1 %39, label %40, label %101

40:                                               ; preds = %35
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %46 = icmp ne %struct.dc_sink* %45, null
  br i1 %46, label %47, label %72

47:                                               ; preds = %40
  %48 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %48, i32 0, i32 1
  %50 = load %struct.dc_sink*, %struct.dc_sink** %49, align 8
  %51 = icmp ne %struct.dc_sink* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %54 = call i32 @amdgpu_dm_update_freesync_caps(%struct.drm_connector* %53, %struct.edid* null)
  %55 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %55, i32 0, i32 1
  %57 = load %struct.dc_sink*, %struct.dc_sink** %56, align 8
  %58 = call i32 @dc_sink_release(%struct.dc_sink* %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %61 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %62 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %61, i32 0, i32 1
  store %struct.dc_sink* %60, %struct.dc_sink** %62, align 8
  %63 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %64 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %63, i32 0, i32 1
  %65 = load %struct.dc_sink*, %struct.dc_sink** %64, align 8
  %66 = call i32 @dc_sink_retain(%struct.dc_sink* %65)
  %67 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %68 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %69 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %68, i32 0, i32 0
  %70 = load %struct.edid*, %struct.edid** %69, align 8
  %71 = call i32 @amdgpu_dm_update_freesync_caps(%struct.drm_connector* %67, %struct.edid* %70)
  br label %90

72:                                               ; preds = %40
  %73 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %74 = call i32 @amdgpu_dm_update_freesync_caps(%struct.drm_connector* %73, %struct.edid* null)
  %75 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %76 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %75, i32 0, i32 1
  %77 = load %struct.dc_sink*, %struct.dc_sink** %76, align 8
  %78 = icmp ne %struct.dc_sink* %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %72
  %80 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %81 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %80, i32 0, i32 5
  %82 = load %struct.dc_sink*, %struct.dc_sink** %81, align 8
  %83 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %84 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %83, i32 0, i32 1
  store %struct.dc_sink* %82, %struct.dc_sink** %84, align 8
  %85 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %86 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %85, i32 0, i32 1
  %87 = load %struct.dc_sink*, %struct.dc_sink** %86, align 8
  %88 = call i32 @dc_sink_retain(%struct.dc_sink* %87)
  br label %89

89:                                               ; preds = %79, %72
  br label %90

90:                                               ; preds = %89, %59
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %96 = icmp ne %struct.dc_sink* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %99 = call i32 @dc_sink_release(%struct.dc_sink* %98)
  br label %100

100:                                              ; preds = %97, %90
  br label %228

101:                                              ; preds = %35, %28
  %102 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %103 = icmp ne %struct.dc_sink* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %106 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SIGNAL_TYPE_DISPLAY_PORT_MST, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %112 = call i32 @dc_sink_release(%struct.dc_sink* %111)
  br label %228

113:                                              ; preds = %104, %101
  %114 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %115 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %114, i32 0, i32 1
  %116 = load %struct.dc_sink*, %struct.dc_sink** %115, align 8
  %117 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %118 = icmp eq %struct.dc_sink* %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %121 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %125 = icmp ne %struct.dc_sink* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %128 = call i32 @dc_sink_release(%struct.dc_sink* %127)
  br label %129

129:                                              ; preds = %126, %119
  br label %228

130:                                              ; preds = %113
  %131 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %132 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %135 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %134, i32 0, i32 1
  %136 = load %struct.dc_sink*, %struct.dc_sink** %135, align 8
  %137 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %138 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %133, %struct.dc_sink* %136, %struct.dc_sink* %137)
  %139 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %140 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = call i32 @mutex_lock(i32* %141)
  %143 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %144 = icmp ne %struct.dc_sink* %143, null
  br i1 %144, label %145, label %199

145:                                              ; preds = %130
  %146 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %147 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %146, i32 0, i32 1
  %148 = load %struct.dc_sink*, %struct.dc_sink** %147, align 8
  %149 = icmp ne %struct.dc_sink* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %152 = call i32 @amdgpu_dm_update_freesync_caps(%struct.drm_connector* %151, %struct.edid* null)
  br label %153

153:                                              ; preds = %150, %145
  %154 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %155 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %156 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %155, i32 0, i32 1
  store %struct.dc_sink* %154, %struct.dc_sink** %156, align 8
  %157 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %158 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %157, i32 0, i32 1
  %159 = load %struct.dc_sink*, %struct.dc_sink** %158, align 8
  %160 = call i32 @dc_sink_retain(%struct.dc_sink* %159)
  %161 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %162 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %153
  %167 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %168 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %167, i32 0, i32 0
  store %struct.edid* null, %struct.edid** %168, align 8
  %169 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %170 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = call i32 @drm_dp_cec_unset_edid(i32* %171)
  br label %193

173:                                              ; preds = %153
  %174 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %175 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to %struct.edid*
  %179 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %180 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %179, i32 0, i32 0
  store %struct.edid* %178, %struct.edid** %180, align 8
  %181 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %182 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %183 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %182, i32 0, i32 0
  %184 = load %struct.edid*, %struct.edid** %183, align 8
  %185 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %181, %struct.edid* %184)
  %186 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %187 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %190 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %189, i32 0, i32 0
  %191 = load %struct.edid*, %struct.edid** %190, align 8
  %192 = call i32 @drm_dp_cec_set_edid(i32* %188, %struct.edid* %191)
  br label %193

193:                                              ; preds = %173, %166
  %194 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %195 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %196 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %195, i32 0, i32 0
  %197 = load %struct.edid*, %struct.edid** %196, align 8
  %198 = call i32 @amdgpu_dm_update_freesync_caps(%struct.drm_connector* %194, %struct.edid* %197)
  br label %218

199:                                              ; preds = %130
  %200 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %201 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = call i32 @drm_dp_cec_unset_edid(i32* %202)
  %204 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %205 = call i32 @amdgpu_dm_update_freesync_caps(%struct.drm_connector* %204, %struct.edid* null)
  %206 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %207 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %206, %struct.edid* null)
  %208 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %209 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %208, i32 0, i32 2
  store i64 0, i64* %209, align 8
  %210 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %211 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %210, i32 0, i32 1
  %212 = load %struct.dc_sink*, %struct.dc_sink** %211, align 8
  %213 = call i32 @dc_sink_release(%struct.dc_sink* %212)
  %214 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %215 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %214, i32 0, i32 1
  store %struct.dc_sink* null, %struct.dc_sink** %215, align 8
  %216 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %217 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %216, i32 0, i32 0
  store %struct.edid* null, %struct.edid** %217, align 8
  br label %218

218:                                              ; preds = %199, %193
  %219 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %220 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = call i32 @mutex_unlock(i32* %221)
  %223 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %224 = icmp ne %struct.dc_sink* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  %227 = call i32 @dc_sink_release(%struct.dc_sink* %226)
  br label %228

228:                                              ; preds = %16, %100, %110, %129, %225, %218
  ret void
}

declare dso_local i32 @dc_sink_retain(%struct.dc_sink*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdgpu_dm_update_freesync_caps(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @dc_sink_release(%struct.dc_sink*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, ...) #1

declare dso_local i32 @drm_dp_cec_unset_edid(i32*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_dp_cec_set_edid(i32*, %struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
