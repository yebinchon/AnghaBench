; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_vga_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_vga_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_4__, %struct.drm_device* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.drm_device = type { i64 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mga_device = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MODE_VIRTUAL_X = common dso_local global i32 0, align 4
@MODE_VIRTUAL_Y = common dso_local global i32 0, align 4
@MODE_BANDWIDTH = common dso_local global i32 0, align 4
@G200_WB = common dso_local global i64 0, align 8
@G200_EV = common dso_local global i64 0, align 8
@G200_EH = common dso_local global i64 0, align 8
@G200_ER = common dso_local global i64 0, align 8
@MODE_H_ILLEGAL = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @mga_vga_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_vga_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.mga_device*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 1
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.mga_device*
  store %struct.mga_device* %15, %struct.mga_device** %7, align 8
  store i32 32, i32* %8, align 4
  %16 = load %struct.mga_device*, %struct.mga_device** %7, align 8
  %17 = call i64 @IS_G200_SE(%struct.mga_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %83

19:                                               ; preds = %2
  %20 = load %struct.mga_device*, %struct.mga_device** %7, align 8
  %21 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1600
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @MODE_VIRTUAL_X, align 4
  store i32 %30, i32* %3, align 4
  br label %270

31:                                               ; preds = %24
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 1200
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @MODE_VIRTUAL_Y, align 4
  store i32 %37, i32* %3, align 4
  br label %270

38:                                               ; preds = %31
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @mga_vga_calculate_mode_bandwidth(%struct.drm_display_mode* %39, i32 %40)
  %42 = icmp sgt i32 %41, 24985600
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @MODE_BANDWIDTH, align 4
  store i32 %44, i32* %3, align 4
  br label %270

45:                                               ; preds = %38
  br label %82

46:                                               ; preds = %19
  %47 = load %struct.mga_device*, %struct.mga_device** %7, align 8
  %48 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %73

51:                                               ; preds = %46
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 1920
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @MODE_VIRTUAL_X, align 4
  store i32 %57, i32* %3, align 4
  br label %270

58:                                               ; preds = %51
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 1200
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @MODE_VIRTUAL_Y, align 4
  store i32 %64, i32* %3, align 4
  br label %270

65:                                               ; preds = %58
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @mga_vga_calculate_mode_bandwidth(%struct.drm_display_mode* %66, i32 %67)
  %69 = icmp sgt i32 %68, 30822400
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @MODE_BANDWIDTH, align 4
  store i32 %71, i32* %3, align 4
  br label %270

72:                                               ; preds = %65
  br label %81

73:                                               ; preds = %46
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @mga_vga_calculate_mode_bandwidth(%struct.drm_display_mode* %74, i32 %75)
  %77 = icmp sgt i32 %76, 56320000
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @MODE_BANDWIDTH, align 4
  store i32 %79, i32* %3, align 4
  br label %270

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %72
  br label %82

82:                                               ; preds = %81, %45
  br label %154

83:                                               ; preds = %2
  %84 = load %struct.mga_device*, %struct.mga_device** %7, align 8
  %85 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @G200_WB, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %83
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 1280
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @MODE_VIRTUAL_X, align 4
  store i32 %95, i32* %3, align 4
  br label %270

96:                                               ; preds = %89
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 1024
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @MODE_VIRTUAL_Y, align 4
  store i32 %102, i32* %3, align 4
  br label %270

103:                                              ; preds = %96
  %104 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @mga_vga_calculate_mode_bandwidth(%struct.drm_display_mode* %104, i32 %105)
  %107 = icmp sgt i32 %106, 32642048
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @MODE_BANDWIDTH, align 4
  store i32 %109, i32* %3, align 4
  br label %270

110:                                              ; preds = %103
  br label %153

111:                                              ; preds = %83
  %112 = load %struct.mga_device*, %struct.mga_device** %7, align 8
  %113 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @G200_EV, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @mga_vga_calculate_mode_bandwidth(%struct.drm_display_mode* %118, i32 %119)
  %121 = icmp sgt i32 %120, 33484800
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @MODE_BANDWIDTH, align 4
  store i32 %123, i32* %3, align 4
  br label %270

124:                                              ; preds = %117, %111
  %125 = load %struct.mga_device*, %struct.mga_device** %7, align 8
  %126 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @G200_EH, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @mga_vga_calculate_mode_bandwidth(%struct.drm_display_mode* %131, i32 %132)
  %134 = icmp sgt i32 %133, 38400000
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @MODE_BANDWIDTH, align 4
  store i32 %136, i32* %3, align 4
  br label %270

137:                                              ; preds = %130, %124
  %138 = load %struct.mga_device*, %struct.mga_device** %7, align 8
  %139 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @G200_ER, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @mga_vga_calculate_mode_bandwidth(%struct.drm_display_mode* %144, i32 %145)
  %147 = icmp sgt i32 %146, 56320000
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @MODE_BANDWIDTH, align 4
  store i32 %149, i32* %3, align 4
  br label %270

150:                                              ; preds = %143, %137
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152, %110
  br label %154

154:                                              ; preds = %153, %82
  %155 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %156 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = srem i32 %157, 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %178, label %160

160:                                              ; preds = %154
  %161 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %162 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = srem i32 %163, 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %160
  %167 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %168 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = srem i32 %169, 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %174 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = srem i32 %175, 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %172, %166, %160, %154
  %179 = load i32, i32* @MODE_H_ILLEGAL, align 4
  store i32 %179, i32* %3, align 4
  br label %270

180:                                              ; preds = %172
  %181 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %182 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = icmp sgt i32 %183, 2048
  br i1 %184, label %220, label %185

185:                                              ; preds = %180
  %186 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %187 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, 4096
  br i1 %189, label %220, label %190

190:                                              ; preds = %185
  %191 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %192 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %193, 4096
  br i1 %194, label %220, label %195

195:                                              ; preds = %190
  %196 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %197 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 4
  %199 = icmp sgt i32 %198, 4096
  br i1 %199, label %220, label %200

200:                                              ; preds = %195
  %201 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %202 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 4
  %204 = icmp sgt i32 %203, 2048
  br i1 %204, label %220, label %205

205:                                              ; preds = %200
  %206 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %207 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %206, i32 0, i32 10
  %208 = load i32, i32* %207, align 4
  %209 = icmp sgt i32 %208, 4096
  br i1 %209, label %220, label %210

210:                                              ; preds = %205
  %211 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %212 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %211, i32 0, i32 11
  %213 = load i32, i32* %212, align 4
  %214 = icmp sgt i32 %213, 4096
  br i1 %214, label %220, label %215

215:                                              ; preds = %210
  %216 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %217 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %216, i32 0, i32 12
  %218 = load i32, i32* %217, align 4
  %219 = icmp sgt i32 %218, 4096
  br i1 %219, label %220, label %222

220:                                              ; preds = %215, %210, %205, %200, %195, %190, %185, %180
  %221 = load i32, i32* @MODE_BAD, align 4
  store i32 %221, i32* %3, align 4
  br label %270

222:                                              ; preds = %215
  %223 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %224 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %240

228:                                              ; preds = %222
  %229 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %230 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %228
  %235 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %236 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %8, align 4
  br label %239

239:                                              ; preds = %234, %228
  br label %240

240:                                              ; preds = %239, %222
  %241 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %242 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %245 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %243, %246
  %248 = load i32, i32* %8, align 4
  %249 = sdiv i32 %248, 8
  %250 = mul nsw i32 %247, %249
  %251 = load %struct.mga_device*, %struct.mga_device** %7, align 8
  %252 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp sgt i32 %250, %254
  br i1 %255, label %256, label %268

256:                                              ; preds = %240
  %257 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %258 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %264 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  store i32 0, i32* %265, align 8
  br label %266

266:                                              ; preds = %262, %256
  %267 = load i32, i32* @MODE_BAD, align 4
  store i32 %267, i32* %3, align 4
  br label %270

268:                                              ; preds = %240
  %269 = load i32, i32* @MODE_OK, align 4
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %268, %266, %220, %178, %148, %135, %122, %108, %101, %94, %78, %70, %63, %56, %43, %36, %29
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i64 @IS_G200_SE(%struct.mga_device*) #1

declare dso_local i32 @mga_vga_calculate_mode_bandwidth(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
