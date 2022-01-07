; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_get_table_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_get_table_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @combios_get_table_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combios_get_table_offset(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %275

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %250 [
    i32 172, label %21
    i32 167, label %22
    i32 162, label %23
    i32 147, label %24
    i32 164, label %25
    i32 139, label %26
    i32 129, label %27
    i32 160, label %28
    i32 152, label %29
    i32 142, label %30
    i32 128, label %31
    i32 148, label %32
    i32 143, label %33
    i32 138, label %34
    i32 145, label %35
    i32 133, label %36
    i32 153, label %37
    i32 171, label %38
    i32 165, label %39
    i32 159, label %40
    i32 134, label %41
    i32 156, label %42
    i32 146, label %43
    i32 157, label %44
    i32 144, label %45
    i32 163, label %46
    i32 150, label %47
    i32 166, label %48
    i32 155, label %49
    i32 140, label %50
    i32 141, label %51
    i32 158, label %52
    i32 136, label %53
    i32 151, label %54
    i32 170, label %55
    i32 169, label %76
    i32 161, label %97
    i32 168, label %118
    i32 135, label %139
    i32 137, label %160
    i32 154, label %175
    i32 149, label %190
    i32 130, label %205
    i32 131, label %220
    i32 132, label %235
  ]

21:                                               ; preds = %19
  store i32 12, i32* %10, align 4
  br label %251

22:                                               ; preds = %19
  store i32 20, i32* %10, align 4
  br label %251

23:                                               ; preds = %19
  store i32 42, i32* %10, align 4
  br label %251

24:                                               ; preds = %19
  store i32 44, i32* %10, align 4
  br label %251

25:                                               ; preds = %19
  store i32 46, i32* %10, align 4
  br label %251

26:                                               ; preds = %19
  store i32 48, i32* %10, align 4
  br label %251

27:                                               ; preds = %19
  store i32 50, i32* %10, align 4
  br label %251

28:                                               ; preds = %19
  store i32 52, i32* %10, align 4
  br label %251

29:                                               ; preds = %19
  store i32 54, i32* %10, align 4
  br label %251

30:                                               ; preds = %19
  store i32 56, i32* %10, align 4
  br label %251

31:                                               ; preds = %19
  store i32 62, i32* %10, align 4
  br label %251

32:                                               ; preds = %19
  store i32 64, i32* %10, align 4
  br label %251

33:                                               ; preds = %19
  store i32 66, i32* %10, align 4
  br label %251

34:                                               ; preds = %19
  store i32 70, i32* %10, align 4
  br label %251

35:                                               ; preds = %19
  store i32 72, i32* %10, align 4
  br label %251

36:                                               ; preds = %19
  store i32 74, i32* %10, align 4
  br label %251

37:                                               ; preds = %19
  store i32 76, i32* %10, align 4
  br label %251

38:                                               ; preds = %19
  store i32 78, i32* %10, align 4
  br label %251

39:                                               ; preds = %19
  store i32 80, i32* %10, align 4
  br label %251

40:                                               ; preds = %19
  store i32 82, i32* %10, align 4
  br label %251

41:                                               ; preds = %19
  store i32 84, i32* %10, align 4
  br label %251

42:                                               ; preds = %19
  store i32 88, i32* %10, align 4
  br label %251

43:                                               ; preds = %19
  store i32 90, i32* %10, align 4
  br label %251

44:                                               ; preds = %19
  store i32 92, i32* %10, align 4
  br label %251

45:                                               ; preds = %19
  store i32 94, i32* %10, align 4
  br label %251

46:                                               ; preds = %19
  store i32 96, i32* %10, align 4
  br label %251

47:                                               ; preds = %19
  store i32 98, i32* %10, align 4
  br label %251

48:                                               ; preds = %19
  store i32 100, i32* %10, align 4
  br label %251

49:                                               ; preds = %19
  store i32 102, i32* %10, align 4
  br label %251

50:                                               ; preds = %19
  store i32 104, i32* %10, align 4
  br label %251

51:                                               ; preds = %19
  store i32 106, i32* %10, align 4
  br label %251

52:                                               ; preds = %19
  store i32 108, i32* %10, align 4
  br label %251

53:                                               ; preds = %19
  store i32 110, i32* %10, align 4
  br label %251

54:                                               ; preds = %19
  store i32 112, i32* %10, align 4
  br label %251

55:                                               ; preds = %19
  %56 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %57 = call i32 @combios_get_table_offset(%struct.drm_device* %56, i32 144)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @RBIOS8(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 3
  %68 = call i32 @RBIOS16(i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %65
  br label %74

74:                                               ; preds = %73, %60
  br label %75

75:                                               ; preds = %74, %55
  br label %251

76:                                               ; preds = %19
  %77 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %78 = call i32 @combios_get_table_offset(%struct.drm_device* %77, i32 144)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @RBIOS8(i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 5
  %89 = call i32 @RBIOS16(i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %92, %86
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95, %76
  br label %251

97:                                               ; preds = %19
  %98 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %99 = call i32 @combios_get_table_offset(%struct.drm_device* %98, i32 144)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @RBIOS8(i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 7
  %110 = call i32 @RBIOS16(i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %113, %107
  br label %116

116:                                              ; preds = %115, %102
  br label %117

117:                                              ; preds = %116, %97
  br label %251

118:                                              ; preds = %19
  %119 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %120 = call i32 @combios_get_table_offset(%struct.drm_device* %119, i32 144)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %118
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @RBIOS8(i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 9
  %131 = call i32 @RBIOS16(i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %134, %128
  br label %137

137:                                              ; preds = %136, %123
  br label %138

138:                                              ; preds = %137, %118
  br label %251

139:                                              ; preds = %19
  %140 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %141 = call i32 @combios_get_table_offset(%struct.drm_device* %140, i32 145)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %150, %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  %148 = call i32 @RBIOS8(i32 %146)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %145

151:                                              ; preds = %145
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 2
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %9, align 4
  br label %158

158:                                              ; preds = %156, %151
  br label %159

159:                                              ; preds = %158, %139
  br label %251

160:                                              ; preds = %19
  %161 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %162 = call i32 @combios_get_table_offset(%struct.drm_device* %161, i32 143)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 17
  %168 = call i32 @RBIOS16(i32 %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i32, i32* %10, align 4
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %171, %165
  br label %174

174:                                              ; preds = %173, %160
  br label %251

175:                                              ; preds = %19
  %176 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %177 = call i32 @combios_get_table_offset(%struct.drm_device* %176, i32 143)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %175
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 19
  %183 = call i32 @RBIOS16(i32 %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %9, align 4
  br label %188

188:                                              ; preds = %186, %180
  br label %189

189:                                              ; preds = %188, %175
  br label %251

190:                                              ; preds = %19
  %191 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %192 = call i32 @combios_get_table_offset(%struct.drm_device* %191, i32 143)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, 21
  %198 = call i32 @RBIOS16(i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %201, %195
  br label %204

204:                                              ; preds = %203, %190
  br label %251

205:                                              ; preds = %19
  %206 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %207 = call i32 @combios_get_table_offset(%struct.drm_device* %206, i32 143)
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %205
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 23
  %213 = call i32 @RBIOS16(i32 %212)
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = load i32, i32* %10, align 4
  store i32 %217, i32* %9, align 4
  br label %218

218:                                              ; preds = %216, %210
  br label %219

219:                                              ; preds = %218, %205
  br label %251

220:                                              ; preds = %19
  %221 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %222 = call i32 @combios_get_table_offset(%struct.drm_device* %221, i32 130)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %220
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 2
  %228 = call i32 @RBIOS16(i32 %227)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %9, align 4
  br label %233

233:                                              ; preds = %231, %225
  br label %234

234:                                              ; preds = %233, %220
  br label %251

235:                                              ; preds = %19
  %236 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %237 = call i32 @combios_get_table_offset(%struct.drm_device* %236, i32 130)
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %235
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, 4
  %243 = call i32 @RBIOS16(i32 %242)
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = load i32, i32* %10, align 4
  store i32 %247, i32* %9, align 4
  br label %248

248:                                              ; preds = %246, %240
  br label %249

249:                                              ; preds = %248, %235
  br label %251

250:                                              ; preds = %19
  store i32 0, i32* %10, align 4
  br label %251

251:                                              ; preds = %250, %249, %234, %219, %204, %189, %174, %159, %138, %117, %96, %75, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21
  %252 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %253 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 6
  %256 = call i32 @RBIOS8(i32 %255)
  store i32 %256, i32* %8, align 4
  %257 = load i32, i32* %5, align 4
  %258 = icmp ult i32 %257, 170
  br i1 %258, label %259, label %273

259:                                              ; preds = %251
  %260 = load i32, i32* %10, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %273

262:                                              ; preds = %259
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* %8, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %262
  %267 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %268 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %10, align 4
  %271 = add nsw i32 %269, %270
  %272 = call i32 @RBIOS16(i32 %271)
  store i32 %272, i32* %9, align 4
  br label %273

273:                                              ; preds = %266, %262, %259, %251
  %274 = load i32, i32* %9, align 4
  store i32 %274, i32* %3, align 4
  br label %275

275:                                              ; preds = %273, %18
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32 @RBIOS8(i32) #1

declare dso_local i32 @RBIOS16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
