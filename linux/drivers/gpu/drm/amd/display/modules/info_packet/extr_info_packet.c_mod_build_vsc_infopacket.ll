; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/info_packet/extr_info_packet.c_mod_build_vsc_infopacket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/info_packet/extr_info_packet.c_mod_build_vsc_infopacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { i64, i64, i64, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.dc_info_packet = type { i32, i32, i32, i32, i32*, i32 }

@TIMING_3D_FORMAT_NONE = common dso_local global i32 0, align 4
@VIEW_3D_FORMAT_NONE = common dso_local global i64 0, align 8
@COLOR_SPACE_SRGB = common dso_local global i64 0, align 8
@COLOR_SPACE_SRGB_LIMITED = common dso_local global i64 0, align 8
@ColorimetryRGB_DP_sRGB = common dso_local global i32 0, align 4
@COLOR_SPACE_ADOBERGB = common dso_local global i64 0, align 8
@ColorimetryRGB_DP_AdobeRGB = common dso_local global i32 0, align 4
@COLOR_SPACE_2020_RGB_FULLRANGE = common dso_local global i64 0, align 8
@COLOR_SPACE_2020_RGB_LIMITEDRANGE = common dso_local global i64 0, align 8
@ColorimetryRGB_DP_ITU_R_BT2020RGB = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR601 = common dso_local global i64 0, align 8
@ColorimetryYCC_DP_ITU601 = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709 = common dso_local global i64 0, align 8
@ColorimetryYCC_DP_ITU709 = common dso_local global i32 0, align 4
@ColorimetryYCC_DP_AdobeYCC = common dso_local global i32 0, align 4
@COLOR_SPACE_2020_YCBCR = common dso_local global i64 0, align 8
@ColorimetryYCC_DP_ITU2020YCbCr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_build_vsc_infopacket(%struct.dc_stream_state* %0, %struct.dc_info_packet* %1) #0 {
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.dc_info_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %3, align 8
  store %struct.dc_info_packet* %1, %struct.dc_info_packet** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %11 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TIMING_3D_FORMAT_NONE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %18 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VIEW_3D_FORMAT_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %16, %2
  %24 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %25 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 2, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %31 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %30, i32 0, i32 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 20
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %40 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %39, i32 0, i32 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 5, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %38, %29
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %299

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  %57 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %58 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %60 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %59, i32 0, i32 1
  store i32 7, i32* %60, align 4
  %61 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %62 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %61, i32 0, i32 2
  store i32 2, i32* %62, align 8
  %63 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %64 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %63, i32 0, i32 3
  store i32 8, i32* %64, align 4
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %75, %56
  %66 = load i32, i32* %6, align 4
  %67 = icmp ult i32 %66, 28
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %70 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %65

78:                                               ; preds = %65
  %79 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %80 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %79, i32 0, i32 5
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %53
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %86 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %88 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %87, i32 0, i32 1
  store i32 7, i32* %88, align 4
  %89 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %90 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %92 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %91, i32 0, i32 3
  store i32 1, i32* %92, align 4
  %93 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %94 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %93, i32 0, i32 5
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %84, %81
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %95
  %99 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %100 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %118 [
    i32 134, label %103
    i32 130, label %103
    i32 128, label %103
    i32 129, label %103
    i32 135, label %108
    i32 133, label %108
    i32 131, label %113
    i32 132, label %113
  ]

103:                                              ; preds = %98, %98, %98, %98
  %104 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %105 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 2, i32* %107, align 4
  br label %123

108:                                              ; preds = %98, %98
  %109 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %110 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 1, i32* %112, align 4
  br label %123

113:                                              ; preds = %98, %98
  %114 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %115 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 4, i32* %117, align 4
  br label %123

118:                                              ; preds = %98
  %119 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %120 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %118, %113, %108, %103
  br label %124

124:                                              ; preds = %123, %95
  %125 = load i32, i32* %5, align 4
  %126 = icmp eq i32 %125, 5
  br i1 %126, label %127, label %299

127:                                              ; preds = %124
  %128 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %129 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %131 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %130, i32 0, i32 1
  store i32 7, i32* %131, align 4
  %132 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %133 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %132, i32 0, i32 2
  store i32 5, i32* %133, align 8
  %134 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %135 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %134, i32 0, i32 3
  store i32 19, i32* %135, align 4
  %136 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %137 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %136, i32 0, i32 5
  store i32 1, i32* %137, align 8
  %138 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %139 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  switch i32 %141, label %146 [
    i32 139, label %142
    i32 136, label %143
    i32 137, label %144
    i32 138, label %145
  ]

142:                                              ; preds = %127
  store i32 0, i32* %7, align 4
  br label %147

143:                                              ; preds = %127
  store i32 1, i32* %7, align 4
  br label %147

144:                                              ; preds = %127
  store i32 2, i32* %7, align 4
  br label %147

145:                                              ; preds = %127
  store i32 3, i32* %7, align 4
  br label %147

146:                                              ; preds = %127
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %146, %145, %144, %143, %142
  %148 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %149 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  switch i32 %151, label %227 [
    i32 139, label %152
    i32 136, label %191
    i32 137, label %191
    i32 138, label %191
  ]

152:                                              ; preds = %147
  %153 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %154 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @COLOR_SPACE_SRGB, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %160 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @COLOR_SPACE_SRGB_LIMITED, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %158, %152
  %165 = load i32, i32* @ColorimetryRGB_DP_sRGB, align 4
  store i32 %165, i32* %8, align 4
  br label %190

166:                                              ; preds = %158
  %167 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %168 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @COLOR_SPACE_ADOBERGB, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* @ColorimetryRGB_DP_AdobeRGB, align 4
  store i32 %173, i32* %8, align 4
  br label %189

174:                                              ; preds = %166
  %175 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %176 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @COLOR_SPACE_2020_RGB_FULLRANGE, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %182 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @COLOR_SPACE_2020_RGB_LIMITEDRANGE, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %180, %174
  %187 = load i32, i32* @ColorimetryRGB_DP_ITU_R_BT2020RGB, align 4
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %186, %180
  br label %189

189:                                              ; preds = %188, %172
  br label %190

190:                                              ; preds = %189, %164
  br label %229

191:                                              ; preds = %147, %147, %147
  %192 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %193 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @COLOR_SPACE_YCBCR601, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = load i32, i32* @ColorimetryYCC_DP_ITU601, align 4
  store i32 %198, i32* %8, align 4
  br label %226

199:                                              ; preds = %191
  %200 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %201 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @COLOR_SPACE_YCBCR709, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load i32, i32* @ColorimetryYCC_DP_ITU709, align 4
  store i32 %206, i32* %8, align 4
  br label %225

207:                                              ; preds = %199
  %208 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %209 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @COLOR_SPACE_ADOBERGB, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  %214 = load i32, i32* @ColorimetryYCC_DP_AdobeYCC, align 4
  store i32 %214, i32* %8, align 4
  br label %224

215:                                              ; preds = %207
  %216 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %217 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @COLOR_SPACE_2020_YCBCR, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %215
  %222 = load i32, i32* @ColorimetryYCC_DP_ITU2020YCbCr, align 4
  store i32 %222, i32* %8, align 4
  br label %223

223:                                              ; preds = %221, %215
  br label %224

224:                                              ; preds = %223, %213
  br label %225

225:                                              ; preds = %224, %205
  br label %226

226:                                              ; preds = %225, %197
  br label %229

227:                                              ; preds = %147
  %228 = load i32, i32* @ColorimetryRGB_DP_sRGB, align 4
  store i32 %228, i32* %8, align 4
  br label %229

229:                                              ; preds = %227, %226, %190
  %230 = load i32, i32* %7, align 4
  %231 = shl i32 %230, 4
  %232 = load i32, i32* %8, align 4
  %233 = or i32 %231, %232
  %234 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %235 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 16
  store i32 %233, i32* %237, align 4
  %238 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %239 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  switch i32 %241, label %267 [
    i32 141, label %242
    i32 140, label %247
    i32 144, label %252
    i32 143, label %257
    i32 142, label %262
  ]

242:                                              ; preds = %229
  %243 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %244 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %243, i32 0, i32 4
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 17
  store i32 0, i32* %246, align 4
  br label %272

247:                                              ; preds = %229
  %248 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %249 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 17
  store i32 1, i32* %251, align 4
  br label %272

252:                                              ; preds = %229
  %253 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %254 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %253, i32 0, i32 4
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 17
  store i32 2, i32* %256, align 4
  br label %272

257:                                              ; preds = %229
  %258 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %259 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %258, i32 0, i32 4
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 17
  store i32 3, i32* %261, align 4
  br label %272

262:                                              ; preds = %229
  %263 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %264 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %263, i32 0, i32 4
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 17
  store i32 4, i32* %266, align 4
  br label %272

267:                                              ; preds = %229
  %268 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %269 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %268, i32 0, i32 4
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 17
  store i32 0, i32* %271, align 4
  br label %272

272:                                              ; preds = %267, %262, %257, %252, %247, %242
  %273 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %274 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @COLOR_SPACE_SRGB_LIMITED, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %287, label %278

278:                                              ; preds = %272
  %279 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %280 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @COLOR_SPACE_2020_RGB_LIMITEDRANGE, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %287, label %284

284:                                              ; preds = %278
  %285 = load i32, i32* %7, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %284, %278, %272
  %288 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %289 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %288, i32 0, i32 4
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 17
  %292 = load i32, i32* %291, align 4
  %293 = or i32 %292, 128
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %287, %284
  %295 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %296 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %295, i32 0, i32 4
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 18
  store i32 0, i32* %298, align 4
  br label %299

299:                                              ; preds = %52, %294, %124
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
