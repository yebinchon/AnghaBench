; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_parade-ps8622.c_ps8622_send_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_parade-ps8622.c_ps8622_send_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps8622_bridge = type { i32, i32, %struct.TYPE_4__*, %struct.i2c_client* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps8622_bridge*)* @ps8622_send_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps8622_send_config(%struct.ps8622_bridge* %0) #0 {
  %2 = alloca %struct.ps8622_bridge*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.ps8622_bridge* %0, %struct.ps8622_bridge** %2, align 8
  %5 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %2, align 8
  %6 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %5, i32 0, i32 3
  %7 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call i32 @ps8622_set(%struct.i2c_client* %8, i32 2, i32 161, i32 1)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %295

13:                                               ; preds = %1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = call i32 @ps8622_set(%struct.i2c_client* %14, i32 4, i32 20, i32 1)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %295

19:                                               ; preds = %13
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = call i32 @ps8622_set(%struct.i2c_client* %20, i32 4, i32 227, i32 32)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %295

25:                                               ; preds = %19
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = call i32 @ps8622_set(%struct.i2c_client* %26, i32 4, i32 226, i32 128)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %295

31:                                               ; preds = %25
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = call i32 @ps8622_set(%struct.i2c_client* %32, i32 4, i32 138, i32 12)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %295

37:                                               ; preds = %31
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = call i32 @ps8622_set(%struct.i2c_client* %38, i32 4, i32 137, i32 8)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %295

43:                                               ; preds = %37
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = call i32 @ps8622_set(%struct.i2c_client* %44, i32 4, i32 113, i32 45)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %295

49:                                               ; preds = %43
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = call i32 @ps8622_set(%struct.i2c_client* %50, i32 4, i32 125, i32 7)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %295

55:                                               ; preds = %49
  %56 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %57 = call i32 @ps8622_set(%struct.i2c_client* %56, i32 4, i32 123, i32 0)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %295

61:                                               ; preds = %55
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = call i32 @ps8622_set(%struct.i2c_client* %62, i32 4, i32 122, i32 253)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %295

67:                                               ; preds = %61
  %68 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %69 = call i32 @ps8622_set(%struct.i2c_client* %68, i32 4, i32 192, i32 18)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %295

73:                                               ; preds = %67
  %74 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %75 = call i32 @ps8622_set(%struct.i2c_client* %74, i32 4, i32 193, i32 146)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %295

79:                                               ; preds = %73
  %80 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %81 = call i32 @ps8622_set(%struct.i2c_client* %80, i32 4, i32 194, i32 28)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %295

85:                                               ; preds = %79
  %86 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %87 = call i32 @ps8622_set(%struct.i2c_client* %86, i32 4, i32 50, i32 128)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %295

91:                                               ; preds = %85
  %92 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %93 = call i32 @ps8622_set(%struct.i2c_client* %92, i32 4, i32 0, i32 176)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %295

97:                                               ; preds = %91
  %98 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %99 = call i32 @ps8622_set(%struct.i2c_client* %98, i32 4, i32 21, i32 64)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %295

103:                                              ; preds = %97
  %104 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %105 = call i32 @ps8622_set(%struct.i2c_client* %104, i32 4, i32 84, i32 16)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %295

109:                                              ; preds = %103
  %110 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %111 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %2, align 8
  %112 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 128, %113
  %115 = call i32 @ps8622_set(%struct.i2c_client* %110, i32 1, i32 2, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %295

119:                                              ; preds = %109
  %120 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %121 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %2, align 8
  %122 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 128, %123
  %125 = call i32 @ps8622_set(%struct.i2c_client* %120, i32 1, i32 33, i32 %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %295

129:                                              ; preds = %119
  %130 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %131 = call i32 @ps8622_set(%struct.i2c_client* %130, i32 0, i32 82, i32 32)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %295

135:                                              ; preds = %129
  %136 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %137 = call i32 @ps8622_set(%struct.i2c_client* %136, i32 0, i32 241, i32 3)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %295

141:                                              ; preds = %135
  %142 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %143 = call i32 @ps8622_set(%struct.i2c_client* %142, i32 0, i32 98, i32 65)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %295

147:                                              ; preds = %141
  %148 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %149 = call i32 @ps8622_set(%struct.i2c_client* %148, i32 0, i32 246, i32 1)
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %295

153:                                              ; preds = %147
  %154 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %155 = call i32 @ps8622_set(%struct.i2c_client* %154, i32 0, i32 119, i32 6)
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %4, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %295

159:                                              ; preds = %153
  %160 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %161 = call i32 @ps8622_set(%struct.i2c_client* %160, i32 0, i32 76, i32 4)
  store i32 %161, i32* %4, align 4
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %295

165:                                              ; preds = %159
  %166 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %167 = call i32 @ps8622_set(%struct.i2c_client* %166, i32 1, i32 192, i32 0)
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %295

171:                                              ; preds = %165
  %172 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %173 = call i32 @ps8622_set(%struct.i2c_client* %172, i32 1, i32 193, i32 28)
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %4, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %295

177:                                              ; preds = %171
  %178 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %179 = call i32 @ps8622_set(%struct.i2c_client* %178, i32 1, i32 194, i32 248)
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %295

183:                                              ; preds = %177
  %184 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %185 = call i32 @ps8622_set(%struct.i2c_client* %184, i32 1, i32 195, i32 68)
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* %4, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %295

189:                                              ; preds = %183
  %190 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %191 = call i32 @ps8622_set(%struct.i2c_client* %190, i32 1, i32 196, i32 50)
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %4, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %295

195:                                              ; preds = %189
  %196 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %197 = call i32 @ps8622_set(%struct.i2c_client* %196, i32 1, i32 197, i32 83)
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* %4, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %295

201:                                              ; preds = %195
  %202 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %203 = call i32 @ps8622_set(%struct.i2c_client* %202, i32 1, i32 198, i32 76)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* %4, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %295

207:                                              ; preds = %201
  %208 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %209 = call i32 @ps8622_set(%struct.i2c_client* %208, i32 1, i32 199, i32 86)
  store i32 %209, i32* %4, align 4
  %210 = load i32, i32* %4, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %295

213:                                              ; preds = %207
  %214 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %215 = call i32 @ps8622_set(%struct.i2c_client* %214, i32 1, i32 200, i32 53)
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* %4, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %295

219:                                              ; preds = %213
  %220 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %221 = call i32 @ps8622_set(%struct.i2c_client* %220, i32 1, i32 202, i32 1)
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* %4, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  br label %295

225:                                              ; preds = %219
  %226 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %227 = call i32 @ps8622_set(%struct.i2c_client* %226, i32 1, i32 203, i32 5)
  store i32 %227, i32* %4, align 4
  %228 = load i32, i32* %4, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  br label %295

231:                                              ; preds = %225
  %232 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %2, align 8
  %233 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %232, i32 0, i32 2
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = icmp ne %struct.TYPE_4__* %234, null
  br i1 %235, label %236, label %255

236:                                              ; preds = %231
  %237 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %238 = call i32 @ps8622_set(%struct.i2c_client* %237, i32 1, i32 165, i32 160)
  store i32 %238, i32* %4, align 4
  %239 = load i32, i32* %4, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %236
  br label %295

242:                                              ; preds = %236
  %243 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %244 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %2, align 8
  %245 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %244, i32 0, i32 2
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @ps8622_set(%struct.i2c_client* %243, i32 1, i32 167, i32 %249)
  store i32 %250, i32* %4, align 4
  %251 = load i32, i32* %4, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %242
  br label %295

254:                                              ; preds = %242
  br label %262

255:                                              ; preds = %231
  %256 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %257 = call i32 @ps8622_set(%struct.i2c_client* %256, i32 1, i32 165, i32 128)
  store i32 %257, i32* %4, align 4
  %258 = load i32, i32* %4, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  br label %295

261:                                              ; preds = %255
  br label %262

262:                                              ; preds = %261, %254
  %263 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %264 = call i32 @ps8622_set(%struct.i2c_client* %263, i32 1, i32 204, i32 19)
  store i32 %264, i32* %4, align 4
  %265 = load i32, i32* %4, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  br label %295

268:                                              ; preds = %262
  %269 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %270 = call i32 @ps8622_set(%struct.i2c_client* %269, i32 2, i32 177, i32 32)
  store i32 %270, i32* %4, align 4
  %271 = load i32, i32* %4, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  br label %295

274:                                              ; preds = %268
  %275 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %276 = call i32 @ps8622_set(%struct.i2c_client* %275, i32 4, i32 16, i32 22)
  store i32 %276, i32* %4, align 4
  %277 = load i32, i32* %4, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  br label %295

280:                                              ; preds = %274
  %281 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %282 = call i32 @ps8622_set(%struct.i2c_client* %281, i32 4, i32 89, i32 96)
  store i32 %282, i32* %4, align 4
  %283 = load i32, i32* %4, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  br label %295

286:                                              ; preds = %280
  %287 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %288 = call i32 @ps8622_set(%struct.i2c_client* %287, i32 4, i32 84, i32 20)
  store i32 %288, i32* %4, align 4
  %289 = load i32, i32* %4, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  br label %295

292:                                              ; preds = %286
  %293 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %294 = call i32 @ps8622_set(%struct.i2c_client* %293, i32 2, i32 161, i32 145)
  store i32 %294, i32* %4, align 4
  br label %295

295:                                              ; preds = %292, %291, %285, %279, %273, %267, %260, %253, %241, %230, %224, %218, %212, %206, %200, %194, %188, %182, %176, %170, %164, %158, %152, %146, %140, %134, %128, %118, %108, %102, %96, %90, %84, %78, %72, %66, %60, %54, %48, %42, %36, %30, %24, %18, %12
  %296 = load i32, i32* %4, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32, i32* @EIO, align 4
  %300 = sub nsw i32 0, %299
  br label %302

301:                                              ; preds = %295
  br label %302

302:                                              ; preds = %301, %298
  %303 = phi i32 [ %300, %298 ], [ 0, %301 ]
  ret i32 %303
}

declare dso_local i32 @ps8622_set(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
