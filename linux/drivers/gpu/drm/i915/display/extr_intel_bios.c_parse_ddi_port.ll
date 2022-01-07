; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_ddi_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_ddi_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ddi_vbt_port_info* }
%struct.ddi_vbt_port_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.child_device_config*, i32, i32, i32 }
%struct.child_device_config = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32 }

@PORT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"More than one child device for port %c in VBT, using the first.\0A\00", align 1
@DEVICE_TYPE_TMDS_DVI_SIGNALING = common dso_local global i32 0, align 4
@DEVICE_TYPE_DISPLAYPORT_OUTPUT = common dso_local global i32 0, align 4
@DEVICE_TYPE_ANALOG_OUTPUT = common dso_local global i32 0, align 4
@DEVICE_TYPE_NOT_HDMI_OUTPUT = common dso_local global i32 0, align 4
@DEVICE_TYPE_INTERNAL_CONNECTOR = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"VBT claims port A supports DVI%s, ignoring\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/HDMI\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d LSPCON:%d USB-Type-C:%d TBT:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Internal DP port %c is TMDS compatible\0A\00", align 1
@PORT_E = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Port %c is analog\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Analog port %c is also DP or TMDS compatible\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Port %c is TMDS compatible\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Port %c is not DP/TMDS/CRT compatible\0A\00", align 1
@PORT_B = common dso_local global i32 0, align 4
@PORT_C = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"Port %c is internal DP\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"Port %c has invalid DDC pin %d, sticking to defaults\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"VBT HDMI level shift for port %c: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"VBT HDMI max TMDS clock for port %c: %d kHz\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"VBT (e)DP boost level for port %c: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"VBT HDMI boost level for port %c: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"VBT DP max link rate for port %c: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.child_device_config*, i32)* @parse_ddi_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_ddi_port(%struct.drm_i915_private* %0, %struct.child_device_config* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.child_device_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ddi_vbt_port_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.child_device_config* %1, %struct.child_device_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %18 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dvo_port_to_port(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @PORT_NONE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %402

25:                                               ; preds = %3
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %29, i64 %31
  store %struct.ddi_vbt_port_info* %32, %struct.ddi_vbt_port_info** %7, align 8
  %33 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %34 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %33, i32 0, i32 10
  %35 = load %struct.child_device_config*, %struct.child_device_config** %34, align 8
  %36 = icmp ne %struct.child_device_config* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @port_name(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %402

43:                                               ; preds = %25
  %44 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %45 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DEVICE_TYPE_TMDS_DVI_SIGNALING, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %50 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DEVICE_TYPE_DISPLAYPORT_OUTPUT, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %55 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DEVICE_TYPE_ANALOG_OUTPUT, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %43
  %62 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %63 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DEVICE_TYPE_NOT_HDMI_OUTPUT, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br label %68

68:                                               ; preds = %61, %43
  %69 = phi i1 [ false, %43 ], [ %67, %61 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %75 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @DEVICE_TYPE_INTERNAL_CONNECTOR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %73, %68
  %81 = phi i1 [ false, %68 ], [ %79, %73 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @PORT_A, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %94 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %89, %86, %80
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %98 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %101 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %104 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %107 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp sge i32 %108, 195
  br i1 %109, label %110, label %116

110:                                              ; preds = %95
  %111 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %112 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %111, i32 0, i32 11
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %115 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %114, i32 0, i32 13
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %110, %95
  %117 = load i32, i32* %6, align 4
  %118 = icmp sge i32 %117, 209
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %121 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %124 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %123, i32 0, i32 12
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %116
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @port_name(i32 %126)
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %136 = call i64 @HAS_LSPCON(%struct.drm_i915_private* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %125
  %139 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %140 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %139, i32 0, i32 9
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br label %143

143:                                              ; preds = %138, %125
  %144 = phi i1 [ false, %125 ], [ %142, %138 ]
  %145 = zext i1 %144 to i32
  %146 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %147 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %146, i32 0, i32 13
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %150 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %149, i32 0, i32 12
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i8* %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %145, i32 %148, i32 %151)
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %143
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @port_name(i32 %159)
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %158, %155, %143
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* @PORT_E, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @port_name(i32 %172)
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to i8*
  %176 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %171, %167, %164
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %177
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %183, %180
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @port_name(i32 %187)
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i8*
  %191 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %186, %183, %177
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %209

195:                                              ; preds = %192
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* @PORT_A, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* @PORT_E, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %199, %195
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @port_name(i32 %204)
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8*
  %208 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %207)
  br label %209

209:                                              ; preds = %203, %199, %192
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %224, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %224, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %12, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @port_name(i32 %219)
  %221 = sext i32 %220 to i64
  %222 = inttoptr i64 %221 to i8*
  %223 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %222)
  br label %224

224:                                              ; preds = %218, %215, %212, %209
  %225 = load i32, i32* %11, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %245

227:                                              ; preds = %224
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* @PORT_B, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %239, label %231

231:                                              ; preds = %227
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* @PORT_C, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %239, label %235

235:                                              ; preds = %231
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* @PORT_E, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %235, %231, %227
  %240 = load i32, i32* %13, align 4
  %241 = call i32 @port_name(i32 %240)
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to i8*
  %244 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %243)
  br label %245

245:                                              ; preds = %239, %235, %224
  %246 = load i32, i32* %8, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %273

248:                                              ; preds = %245
  %249 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %250 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %251 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %250, i32 0, i32 8
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @map_ddc_pin(%struct.drm_i915_private* %249, i32 %252)
  store i32 %253, i32* %14, align 4
  %254 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %255 = load i32, i32* %14, align 4
  %256 = call i64 @intel_gmbus_is_valid_pin(%struct.drm_i915_private* %254, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %248
  %259 = load i32, i32* %14, align 4
  %260 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %261 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %260, i32 0, i32 4
  store i32 %259, i32* %261, align 8
  %262 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %263 = load i32, i32* %13, align 4
  %264 = call i32 @sanitize_ddc_pin(%struct.drm_i915_private* %262, i32 %263)
  br label %272

265:                                              ; preds = %248
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @port_name(i32 %266)
  %268 = sext i32 %267 to i64
  %269 = inttoptr i64 %268 to i8*
  %270 = load i32, i32* %14, align 4
  %271 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i8* %269, i32 %270)
  br label %272

272:                                              ; preds = %265, %258
  br label %273

273:                                              ; preds = %272, %245
  %274 = load i32, i32* %10, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %273
  %277 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %278 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %281 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %280, i32 0, i32 11
  store i32 %279, i32* %281, align 8
  %282 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %283 = load i32, i32* %13, align 4
  %284 = call i32 @sanitize_aux_ch(%struct.drm_i915_private* %282, i32 %283)
  br label %285

285:                                              ; preds = %276, %273
  %286 = load i32, i32* %6, align 4
  %287 = icmp sge i32 %286, 158
  br i1 %287, label %288, label %301

288:                                              ; preds = %285
  %289 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %290 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %15, align 4
  %292 = load i32, i32* %13, align 4
  %293 = call i32 @port_name(i32 %292)
  %294 = sext i32 %293 to i64
  %295 = inttoptr i64 %294 to i8*
  %296 = load i32, i32* %15, align 4
  %297 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8* %295, i32 %296)
  %298 = load i32, i32* %15, align 4
  %299 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %300 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %299, i32 0, i32 5
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %288, %285
  %302 = load i32, i32* %6, align 4
  %303 = icmp sge i32 %302, 204
  br i1 %303, label %304, label %330

304:                                              ; preds = %301
  %305 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %306 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  switch i32 %307, label %308 [
    i32 132, label %313
    i32 133, label %314
    i32 134, label %315
  ]

308:                                              ; preds = %304
  %309 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %310 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @MISSING_CASE(i32 %311)
  br label %313

313:                                              ; preds = %304, %308
  store i32 0, i32* %16, align 4
  br label %316

314:                                              ; preds = %304
  store i32 297000, i32* %16, align 4
  br label %316

315:                                              ; preds = %304
  store i32 165000, i32* %16, align 4
  br label %316

316:                                              ; preds = %315, %314, %313
  %317 = load i32, i32* %16, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %326

319:                                              ; preds = %316
  %320 = load i32, i32* %13, align 4
  %321 = call i32 @port_name(i32 %320)
  %322 = sext i32 %321 to i64
  %323 = inttoptr i64 %322 to i8*
  %324 = load i32, i32* %16, align 4
  %325 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i8* %323, i32 %324)
  br label %326

326:                                              ; preds = %319, %316
  %327 = load i32, i32* %16, align 4
  %328 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %329 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %328, i32 0, i32 6
  store i32 %327, i32* %329, align 8
  br label %330

330:                                              ; preds = %326, %301
  %331 = load i32, i32* %6, align 4
  %332 = icmp sge i32 %331, 196
  br i1 %332, label %333, label %369

333:                                              ; preds = %330
  %334 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %335 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %334, i32 0, i32 6
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %369

338:                                              ; preds = %333
  %339 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %340 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %339, i32 0, i32 5
  %341 = load i32, i32* %340, align 4
  %342 = call i8* @translate_iboost(i32 %341)
  %343 = ptrtoint i8* %342 to i32
  %344 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %345 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %344, i32 0, i32 7
  store i32 %343, i32* %345, align 4
  %346 = load i32, i32* %13, align 4
  %347 = call i32 @port_name(i32 %346)
  %348 = sext i32 %347 to i64
  %349 = inttoptr i64 %348 to i8*
  %350 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %351 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %350, i32 0, i32 7
  %352 = load i32, i32* %351, align 4
  %353 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* %349, i32 %352)
  %354 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %355 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = call i8* @translate_iboost(i32 %356)
  %358 = ptrtoint i8* %357 to i32
  %359 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %360 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %359, i32 0, i32 8
  store i32 %358, i32* %360, align 8
  %361 = load i32, i32* %13, align 4
  %362 = call i32 @port_name(i32 %361)
  %363 = sext i32 %362 to i64
  %364 = inttoptr i64 %363 to i8*
  %365 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %366 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %365, i32 0, i32 8
  %367 = load i32, i32* %366, align 8
  %368 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i8* %364, i32 %367)
  br label %369

369:                                              ; preds = %338, %333, %330
  %370 = load i32, i32* %6, align 4
  %371 = icmp sge i32 %370, 216
  br i1 %371, label %372, label %398

372:                                              ; preds = %369
  %373 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %374 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  switch i32 %375, label %376 [
    i32 129, label %377
    i32 130, label %380
    i32 131, label %383
    i32 128, label %386
  ]

376:                                              ; preds = %372
  br label %377

377:                                              ; preds = %372, %376
  %378 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %379 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %378, i32 0, i32 9
  store i32 810000, i32* %379, align 4
  br label %389

380:                                              ; preds = %372
  %381 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %382 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %381, i32 0, i32 9
  store i32 540000, i32* %382, align 4
  br label %389

383:                                              ; preds = %372
  %384 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %385 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %384, i32 0, i32 9
  store i32 270000, i32* %385, align 4
  br label %389

386:                                              ; preds = %372
  %387 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %388 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %387, i32 0, i32 9
  store i32 162000, i32* %388, align 4
  br label %389

389:                                              ; preds = %386, %383, %380, %377
  %390 = load i32, i32* %13, align 4
  %391 = call i32 @port_name(i32 %390)
  %392 = sext i32 %391 to i64
  %393 = inttoptr i64 %392 to i8*
  %394 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %395 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %394, i32 0, i32 9
  %396 = load i32, i32* %395, align 4
  %397 = call i32 (i8*, i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i8* %393, i32 %396)
  br label %398

398:                                              ; preds = %389, %369
  %399 = load %struct.child_device_config*, %struct.child_device_config** %5, align 8
  %400 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %7, align 8
  %401 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %400, i32 0, i32 10
  store %struct.child_device_config* %399, %struct.child_device_config** %401, align 8
  br label %402

402:                                              ; preds = %398, %37, %24
  ret void
}

declare dso_local i32 @dvo_port_to_port(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*, ...) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i64 @HAS_LSPCON(%struct.drm_i915_private*) #1

declare dso_local i32 @map_ddc_pin(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_gmbus_is_valid_pin(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @sanitize_ddc_pin(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @sanitize_aux_ch(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i8* @translate_iboost(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
