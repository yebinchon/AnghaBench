; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_hfcmulti_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_hfcmulti_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { i32, i64*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.dchannel*, i32 }
%struct.dchannel = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@poll = common dso_local global i8* null, align 8
@R_GPIO_OUT1 = common dso_local global i32 0, align 4
@ISDN_P_NT_S0 = common dso_local global i32 0, align 4
@HFC_CHIP_B410P = common dso_local global i32 0, align 4
@R_GPIO_EN1 = common dso_local global i32 0, align 4
@R_BRG_PCM_CFG = common dso_local global i32 0, align 4
@V_PCM_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_multi*)* @hfcmulti_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcmulti_leds(%struct.hfc_multi* %0) #0 {
  %2 = alloca %struct.hfc_multi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dchannel*, align 8
  %10 = alloca [4 x i32], align 16
  store %struct.hfc_multi* %0, %struct.hfc_multi** %2, align 8
  %11 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %12 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %880 [
    i32 1, label %14
    i32 2, label %224
    i32 3, label %495
    i32 8, label %696
  ]

14:                                               ; preds = %1
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %15, align 16
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 0, i32* %18, align 4
  %19 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %20 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %19, i32 0, i32 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %23 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.dchannel*, %struct.dchannel** %28, align 8
  store %struct.dchannel* %29, %struct.dchannel** %9, align 8
  %30 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %31 = icmp ne %struct.dchannel* %30, null
  br i1 %31, label %32, label %194

32:                                               ; preds = %14
  %33 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %34 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %33, i32 0, i32 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %37 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %32
  %48 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %49 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 1, i32* %53, align 16
  %54 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %55 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 0, i32* %57, align 4
  %58 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %59 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 0, i32* %61, align 4
  br label %193

62:                                               ; preds = %47
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 1, i32* %63, align 8
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 1, i32* %64, align 4
  %65 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %66 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %62
  %72 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %73 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i8*, i8** @poll, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %80 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %71, %62
  %84 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %85 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %83
  %91 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %92 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i8*, i8** @poll, align 8
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %99 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  store i32 %97, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %90, %83
  %103 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %104 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %102
  %110 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %111 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 1024
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %116, %109, %102
  %119 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %120 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %127 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %130, 1024
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %132, %125, %118
  %135 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %136 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %139, 2048
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %143 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %141, %134
  %147 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %148 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp sge i32 %151, 2048
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %155 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  store i32 0, i32* %157, align 4
  br label %158

158:                                              ; preds = %153, %146
  %159 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %160 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load i8*, i8** @poll, align 8
  %167 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %168 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr i8, i8* %166, i64 %172
  %174 = ptrtoint i8* %173 to i32
  store i32 %174, i32* %170, align 4
  br label %175

175:                                              ; preds = %165, %158
  %176 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %177 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 3
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %175
  %183 = load i8*, i8** @poll, align 8
  %184 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %185 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 3
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr i8, i8* %183, i64 %189
  %191 = ptrtoint i8* %190 to i32
  store i32 %191, i32* %187, align 4
  br label %192

192:                                              ; preds = %182, %175
  br label %193

193:                                              ; preds = %192, %52
  br label %194

194:                                              ; preds = %193, %14
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %196 = load i32, i32* %195, align 16
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = shl i32 %198, 2
  %200 = or i32 %196, %199
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %202 = load i32, i32* %201, align 8
  %203 = shl i32 %202, 1
  %204 = or i32 %200, %203
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 3
  %208 = or i32 %204, %207
  %209 = xor i32 %208, 15
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %212 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %210, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %194
  %216 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %217 = load i32, i32* @R_GPIO_OUT1, align 4
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %216, i32 %217, i32 %218)
  %220 = load i32, i32* %8, align 4
  %221 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %222 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %221, i32 0, i32 6
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %215, %194
  br label %880

224:                                              ; preds = %1
  store i32 0, i32* %5, align 4
  br label %225

225:                                              ; preds = %374, %224
  %226 = load i32, i32* %5, align 4
  %227 = icmp slt i32 %226, 4
  br i1 %227, label %228, label %377

228:                                              ; preds = %225
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %229 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %230 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %229, i32 0, i32 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = shl i32 %232, 2
  %234 = or i32 %233, 2
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load %struct.dchannel*, %struct.dchannel** %237, align 8
  store %struct.dchannel* %238, %struct.dchannel** %9, align 8
  %239 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %240 = icmp ne %struct.dchannel* %239, null
  br i1 %240, label %241, label %255

241:                                              ; preds = %228
  %242 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %243 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %6, align 4
  %245 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %246 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @ISDN_P_NT_S0, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %241
  store i32 3, i32* %7, align 4
  br label %254

253:                                              ; preds = %241
  store i32 7, i32* %7, align 4
  br label %254

254:                                              ; preds = %253, %252
  br label %255

255:                                              ; preds = %254, %228
  %256 = load i32, i32* %6, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %369

258:                                              ; preds = %255
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %7, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %358

262:                                              ; preds = %258
  %263 = load i32, i32* %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %264
  store i32 1, i32* %265, align 4
  %266 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %267 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %270 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  %273 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %274 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %5, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %298, label %281

281:                                              ; preds = %262
  %282 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %283 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %5, align 4
  %286 = shl i32 1, %285
  %287 = and i32 %284, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %281
  %290 = load i8*, i8** @poll, align 8
  %291 = ptrtoint i8* %290 to i32
  %292 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %293 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %292, i32 0, i32 3
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %291, i32* %297, align 4
  br label %298

298:                                              ; preds = %289, %281, %262
  %299 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %300 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %299, i32 0, i32 3
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %5, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %320

307:                                              ; preds = %298
  %308 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %309 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %308, i32 0, i32 3
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %5, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = icmp slt i32 %314, 1024
  br i1 %315, label %316, label %320

316:                                              ; preds = %307
  %317 = load i32, i32* %5, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %318
  store i32 0, i32* %319, align 4
  br label %320

320:                                              ; preds = %316, %307, %298
  %321 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %322 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %321, i32 0, i32 3
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = icmp sge i32 %327, 2048
  br i1 %328, label %329, label %336

329:                                              ; preds = %320
  %330 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %331 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %330, i32 0, i32 3
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %5, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32 0, i32* %335, align 4
  br label %336

336:                                              ; preds = %329, %320
  %337 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %338 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %337, i32 0, i32 3
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %5, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %357

345:                                              ; preds = %336
  %346 = load i8*, i8** @poll, align 8
  %347 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %348 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %347, i32 0, i32 3
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %5, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr i8, i8* %346, i64 %354
  %356 = ptrtoint i8* %355 to i32
  store i32 %356, i32* %352, align 4
  br label %357

357:                                              ; preds = %345, %336
  br label %368

358:                                              ; preds = %258
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %360
  store i32 2, i32* %361, align 4
  %362 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %363 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %362, i32 0, i32 3
  %364 = load i32*, i32** %363, align 8
  %365 = load i32, i32* %5, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  store i32 0, i32* %367, align 4
  br label %368

368:                                              ; preds = %358, %357
  br label %373

369:                                              ; preds = %255
  %370 = load i32, i32* %5, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %371
  store i32 0, i32* %372, align 4
  br label %373

373:                                              ; preds = %369, %368
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* %5, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %5, align 4
  br label %225

377:                                              ; preds = %225
  %378 = load i32, i32* @HFC_CHIP_B410P, align 4
  %379 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %380 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %379, i32 0, i32 9
  %381 = call i32 @test_bit(i32 %378, i32* %380)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %430

383:                                              ; preds = %377
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %384

384:                                              ; preds = %413, %383
  %385 = load i32, i32* %5, align 4
  %386 = icmp slt i32 %385, 4
  br i1 %386, label %387, label %416

387:                                              ; preds = %384
  %388 = load i32, i32* %5, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = icmp eq i32 %391, 1
  br i1 %392, label %393, label %399

393:                                              ; preds = %387
  %394 = load i32, i32* %5, align 4
  %395 = mul nsw i32 %394, 2
  %396 = shl i32 2, %395
  %397 = load i32, i32* %8, align 4
  %398 = or i32 %397, %396
  store i32 %398, i32* %8, align 4
  br label %412

399:                                              ; preds = %387
  %400 = load i32, i32* %5, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = icmp eq i32 %403, 2
  br i1 %404, label %405, label %411

405:                                              ; preds = %399
  %406 = load i32, i32* %5, align 4
  %407 = mul nsw i32 %406, 2
  %408 = shl i32 1, %407
  %409 = load i32, i32* %8, align 4
  %410 = or i32 %409, %408
  store i32 %410, i32* %8, align 4
  br label %411

411:                                              ; preds = %405, %399
  br label %412

412:                                              ; preds = %411, %393
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %5, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %5, align 4
  br label %384

416:                                              ; preds = %384
  %417 = load i32, i32* %8, align 4
  %418 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %419 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %418, i32 0, i32 6
  %420 = load i32, i32* %419, align 8
  %421 = icmp ne i32 %417, %420
  br i1 %421, label %422, label %429

422:                                              ; preds = %416
  %423 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %424 = load i32, i32* %8, align 4
  %425 = call i32 @vpm_out(%struct.hfc_multi* %423, i32 0, i32 427, i32 %424)
  %426 = load i32, i32* %8, align 4
  %427 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %428 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %427, i32 0, i32 6
  store i32 %426, i32* %428, align 8
  br label %429

429:                                              ; preds = %422, %416
  br label %494

430:                                              ; preds = %377
  %431 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %432 = load i32, i32* %431, align 4
  %433 = icmp sgt i32 %432, 0
  %434 = zext i1 %433 to i32
  %435 = shl i32 %434, 0
  %436 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %437 = load i32, i32* %436, align 4
  %438 = icmp sgt i32 %437, 0
  %439 = zext i1 %438 to i32
  %440 = shl i32 %439, 1
  %441 = or i32 %435, %440
  %442 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %443 = load i32, i32* %442, align 16
  %444 = icmp sgt i32 %443, 0
  %445 = zext i1 %444 to i32
  %446 = shl i32 %445, 2
  %447 = or i32 %441, %446
  %448 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %449 = load i32, i32* %448, align 8
  %450 = icmp sgt i32 %449, 0
  %451 = zext i1 %450 to i32
  %452 = shl i32 %451, 3
  %453 = or i32 %447, %452
  %454 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %455 = load i32, i32* %454, align 4
  %456 = and i32 %455, 1
  %457 = shl i32 %456, 4
  %458 = or i32 %453, %457
  %459 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %460 = load i32, i32* %459, align 4
  %461 = and i32 %460, 1
  %462 = shl i32 %461, 5
  %463 = or i32 %458, %462
  %464 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %465 = load i32, i32* %464, align 16
  %466 = and i32 %465, 1
  %467 = shl i32 %466, 6
  %468 = or i32 %463, %467
  %469 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %470 = load i32, i32* %469, align 8
  %471 = and i32 %470, 1
  %472 = shl i32 %471, 7
  %473 = or i32 %468, %472
  store i32 %473, i32* %8, align 4
  %474 = load i32, i32* %8, align 4
  %475 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %476 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %475, i32 0, i32 6
  %477 = load i32, i32* %476, align 8
  %478 = icmp ne i32 %474, %477
  br i1 %478, label %479, label %493

479:                                              ; preds = %430
  %480 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %481 = load i32, i32* @R_GPIO_EN1, align 4
  %482 = load i32, i32* %8, align 4
  %483 = and i32 %482, 15
  %484 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %480, i32 %481, i32 %483)
  %485 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %486 = load i32, i32* @R_GPIO_OUT1, align 4
  %487 = load i32, i32* %8, align 4
  %488 = ashr i32 %487, 4
  %489 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %485, i32 %486, i32 %488)
  %490 = load i32, i32* %8, align 4
  %491 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %492 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %491, i32 0, i32 6
  store i32 %490, i32* %492, align 8
  br label %493

493:                                              ; preds = %479, %430
  br label %494

494:                                              ; preds = %493, %429
  br label %880

495:                                              ; preds = %1
  store i32 0, i32* %5, align 4
  br label %496

496:                                              ; preds = %636, %495
  %497 = load i32, i32* %5, align 4
  %498 = icmp slt i32 %497, 2
  br i1 %498, label %499, label %639

499:                                              ; preds = %496
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %500 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %501 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %500, i32 0, i32 8
  %502 = load %struct.TYPE_4__*, %struct.TYPE_4__** %501, align 8
  %503 = load i32, i32* %5, align 4
  %504 = shl i32 %503, 2
  %505 = or i32 %504, 2
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %502, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %507, i32 0, i32 0
  %509 = load %struct.dchannel*, %struct.dchannel** %508, align 8
  store %struct.dchannel* %509, %struct.dchannel** %9, align 8
  %510 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %511 = icmp ne %struct.dchannel* %510, null
  br i1 %511, label %512, label %526

512:                                              ; preds = %499
  %513 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %514 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 4
  store i32 %515, i32* %6, align 4
  %516 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %517 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = load i32, i32* @ISDN_P_NT_S0, align 4
  %522 = icmp eq i32 %520, %521
  br i1 %522, label %523, label %524

523:                                              ; preds = %512
  store i32 3, i32* %7, align 4
  br label %525

524:                                              ; preds = %512
  store i32 7, i32* %7, align 4
  br label %525

525:                                              ; preds = %524, %523
  br label %526

526:                                              ; preds = %525, %499
  %527 = load i32, i32* %6, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %631

529:                                              ; preds = %526
  %530 = load i32, i32* %6, align 4
  %531 = load i32, i32* %7, align 4
  %532 = icmp eq i32 %530, %531
  br i1 %532, label %533, label %620

533:                                              ; preds = %529
  %534 = load i32, i32* %5, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %535
  store i32 1, i32* %536, align 4
  %537 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %538 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %537, i32 0, i32 5
  %539 = load i32, i32* %538, align 4
  %540 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %541 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %540, i32 0, i32 4
  %542 = load i32, i32* %541, align 8
  %543 = or i32 %542, %539
  store i32 %543, i32* %541, align 8
  %544 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %545 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %544, i32 0, i32 3
  %546 = load i32*, i32** %545, align 8
  %547 = load i32, i32* %5, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32, i32* %546, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %569, label %552

552:                                              ; preds = %533
  %553 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %554 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %553, i32 0, i32 4
  %555 = load i32, i32* %554, align 8
  %556 = load i32, i32* %5, align 4
  %557 = shl i32 1, %556
  %558 = and i32 %555, %557
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %569

560:                                              ; preds = %552
  %561 = load i8*, i8** @poll, align 8
  %562 = ptrtoint i8* %561 to i32
  %563 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %564 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %563, i32 0, i32 3
  %565 = load i32*, i32** %564, align 8
  %566 = load i32, i32* %5, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i32, i32* %565, i64 %567
  store i32 %562, i32* %568, align 4
  br label %569

569:                                              ; preds = %560, %552, %533
  %570 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %571 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %570, i32 0, i32 3
  %572 = load i32*, i32** %571, align 8
  %573 = load i32, i32* %5, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %572, i64 %574
  %576 = load i32, i32* %575, align 4
  %577 = icmp slt i32 %576, 1024
  br i1 %577, label %578, label %582

578:                                              ; preds = %569
  %579 = load i32, i32* %5, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %580
  store i32 0, i32* %581, align 4
  br label %582

582:                                              ; preds = %578, %569
  %583 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %584 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %583, i32 0, i32 3
  %585 = load i32*, i32** %584, align 8
  %586 = load i32, i32* %5, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i32, i32* %585, i64 %587
  %589 = load i32, i32* %588, align 4
  %590 = icmp sge i32 %589, 2048
  br i1 %590, label %591, label %598

591:                                              ; preds = %582
  %592 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %593 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %592, i32 0, i32 3
  %594 = load i32*, i32** %593, align 8
  %595 = load i32, i32* %5, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %594, i64 %596
  store i32 0, i32* %597, align 4
  br label %598

598:                                              ; preds = %591, %582
  %599 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %600 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %599, i32 0, i32 3
  %601 = load i32*, i32** %600, align 8
  %602 = load i32, i32* %5, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, i32* %601, i64 %603
  %605 = load i32, i32* %604, align 4
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %619

607:                                              ; preds = %598
  %608 = load i8*, i8** @poll, align 8
  %609 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %610 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %609, i32 0, i32 3
  %611 = load i32*, i32** %610, align 8
  %612 = load i32, i32* %5, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i32, i32* %611, i64 %613
  %615 = load i32, i32* %614, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr i8, i8* %608, i64 %616
  %618 = ptrtoint i8* %617 to i32
  store i32 %618, i32* %614, align 4
  br label %619

619:                                              ; preds = %607, %598
  br label %630

620:                                              ; preds = %529
  %621 = load i32, i32* %5, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %622
  store i32 2, i32* %623, align 4
  %624 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %625 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %624, i32 0, i32 3
  %626 = load i32*, i32** %625, align 8
  %627 = load i32, i32* %5, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i32, i32* %626, i64 %628
  store i32 0, i32* %629, align 4
  br label %630

630:                                              ; preds = %620, %619
  br label %635

631:                                              ; preds = %526
  %632 = load i32, i32* %5, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %633
  store i32 0, i32* %634, align 4
  br label %635

635:                                              ; preds = %631, %630
  br label %636

636:                                              ; preds = %635
  %637 = load i32, i32* %5, align 4
  %638 = add nsw i32 %637, 1
  store i32 %638, i32* %5, align 4
  br label %496

639:                                              ; preds = %496
  %640 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %641 = load i32, i32* %640, align 16
  %642 = icmp sgt i32 %641, 0
  %643 = zext i1 %642 to i32
  %644 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %645 = load i32, i32* %644, align 4
  %646 = icmp sgt i32 %645, 0
  %647 = zext i1 %646 to i32
  %648 = shl i32 %647, 1
  %649 = or i32 %643, %648
  %650 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %651 = load i32, i32* %650, align 16
  %652 = and i32 %651, 1
  %653 = shl i32 %652, 2
  %654 = or i32 %649, %653
  %655 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %656 = load i32, i32* %655, align 4
  %657 = and i32 %656, 1
  %658 = shl i32 %657, 3
  %659 = or i32 %654, %658
  store i32 %659, i32* %8, align 4
  %660 = load i32, i32* %8, align 4
  %661 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %662 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %661, i32 0, i32 6
  %663 = load i32, i32* %662, align 8
  %664 = icmp ne i32 %660, %663
  br i1 %664, label %665, label %695

665:                                              ; preds = %639
  %666 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %667 = load i32, i32* @R_GPIO_EN1, align 4
  %668 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %669 = load i32, i32* %668, align 16
  %670 = icmp sgt i32 %669, 0
  %671 = zext i1 %670 to i32
  %672 = shl i32 %671, 2
  %673 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %674 = load i32, i32* %673, align 4
  %675 = icmp sgt i32 %674, 0
  %676 = zext i1 %675 to i32
  %677 = shl i32 %676, 3
  %678 = or i32 %672, %677
  %679 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %666, i32 %667, i32 %678)
  %680 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %681 = load i32, i32* @R_GPIO_OUT1, align 4
  %682 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %683 = load i32, i32* %682, align 16
  %684 = and i32 %683, 1
  %685 = shl i32 %684, 2
  %686 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %687 = load i32, i32* %686, align 4
  %688 = and i32 %687, 1
  %689 = shl i32 %688, 3
  %690 = or i32 %685, %689
  %691 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %680, i32 %681, i32 %690)
  %692 = load i32, i32* %8, align 4
  %693 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %694 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %693, i32 0, i32 6
  store i32 %692, i32* %694, align 8
  br label %695

695:                                              ; preds = %665, %639
  br label %880

696:                                              ; preds = %1
  store i64 255, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %697

697:                                              ; preds = %835, %696
  %698 = load i32, i32* %5, align 4
  %699 = icmp slt i32 %698, 8
  br i1 %699, label %700, label %838

700:                                              ; preds = %697
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %701 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %702 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %701, i32 0, i32 8
  %703 = load %struct.TYPE_4__*, %struct.TYPE_4__** %702, align 8
  %704 = load i32, i32* %5, align 4
  %705 = shl i32 %704, 2
  %706 = or i32 %705, 2
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %703, i64 %707
  %709 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %708, i32 0, i32 0
  %710 = load %struct.dchannel*, %struct.dchannel** %709, align 8
  store %struct.dchannel* %710, %struct.dchannel** %9, align 8
  %711 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %712 = icmp ne %struct.dchannel* %711, null
  br i1 %712, label %713, label %727

713:                                              ; preds = %700
  %714 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %715 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %714, i32 0, i32 0
  %716 = load i32, i32* %715, align 4
  store i32 %716, i32* %6, align 4
  %717 = load %struct.dchannel*, %struct.dchannel** %9, align 8
  %718 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %718, i32 0, i32 0
  %720 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %719, i32 0, i32 0
  %721 = load i32, i32* %720, align 4
  %722 = load i32, i32* @ISDN_P_NT_S0, align 4
  %723 = icmp eq i32 %721, %722
  br i1 %723, label %724, label %725

724:                                              ; preds = %713
  store i32 3, i32* %7, align 4
  br label %726

725:                                              ; preds = %713
  store i32 7, i32* %7, align 4
  br label %726

726:                                              ; preds = %725, %724
  br label %727

727:                                              ; preds = %726, %700
  %728 = load i32, i32* %6, align 4
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %730, label %834

730:                                              ; preds = %727
  %731 = load i32, i32* %6, align 4
  %732 = load i32, i32* %7, align 4
  %733 = icmp eq i32 %731, %732
  br i1 %733, label %734, label %826

734:                                              ; preds = %730
  %735 = load i32, i32* %5, align 4
  %736 = shl i32 1, %735
  %737 = xor i32 %736, -1
  %738 = sext i32 %737 to i64
  %739 = load i64, i64* %3, align 8
  %740 = and i64 %739, %738
  store i64 %740, i64* %3, align 8
  %741 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %742 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %741, i32 0, i32 5
  %743 = load i32, i32* %742, align 4
  %744 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %745 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %744, i32 0, i32 4
  %746 = load i32, i32* %745, align 8
  %747 = or i32 %746, %743
  store i32 %747, i32* %745, align 8
  %748 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %749 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %748, i32 0, i32 3
  %750 = load i32*, i32** %749, align 8
  %751 = load i32, i32* %5, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds i32, i32* %750, i64 %752
  %754 = load i32, i32* %753, align 4
  %755 = icmp ne i32 %754, 0
  br i1 %755, label %773, label %756

756:                                              ; preds = %734
  %757 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %758 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %757, i32 0, i32 4
  %759 = load i32, i32* %758, align 8
  %760 = load i32, i32* %5, align 4
  %761 = shl i32 1, %760
  %762 = and i32 %759, %761
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %764, label %773

764:                                              ; preds = %756
  %765 = load i8*, i8** @poll, align 8
  %766 = ptrtoint i8* %765 to i32
  %767 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %768 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %767, i32 0, i32 3
  %769 = load i32*, i32** %768, align 8
  %770 = load i32, i32* %5, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i32, i32* %769, i64 %771
  store i32 %766, i32* %772, align 4
  br label %773

773:                                              ; preds = %764, %756, %734
  %774 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %775 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %774, i32 0, i32 3
  %776 = load i32*, i32** %775, align 8
  %777 = load i32, i32* %5, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds i32, i32* %776, i64 %778
  %780 = load i32, i32* %779, align 4
  %781 = icmp slt i32 %780, 1024
  br i1 %781, label %782, label %788

782:                                              ; preds = %773
  %783 = load i32, i32* %5, align 4
  %784 = shl i32 1, %783
  %785 = sext i32 %784 to i64
  %786 = load i64, i64* %3, align 8
  %787 = or i64 %786, %785
  store i64 %787, i64* %3, align 8
  br label %788

788:                                              ; preds = %782, %773
  %789 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %790 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %789, i32 0, i32 3
  %791 = load i32*, i32** %790, align 8
  %792 = load i32, i32* %5, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds i32, i32* %791, i64 %793
  %795 = load i32, i32* %794, align 4
  %796 = icmp sge i32 %795, 2048
  br i1 %796, label %797, label %804

797:                                              ; preds = %788
  %798 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %799 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %798, i32 0, i32 3
  %800 = load i32*, i32** %799, align 8
  %801 = load i32, i32* %5, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds i32, i32* %800, i64 %802
  store i32 0, i32* %803, align 4
  br label %804

804:                                              ; preds = %797, %788
  %805 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %806 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %805, i32 0, i32 3
  %807 = load i32*, i32** %806, align 8
  %808 = load i32, i32* %5, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds i32, i32* %807, i64 %809
  %811 = load i32, i32* %810, align 4
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %825

813:                                              ; preds = %804
  %814 = load i8*, i8** @poll, align 8
  %815 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %816 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %815, i32 0, i32 3
  %817 = load i32*, i32** %816, align 8
  %818 = load i32, i32* %5, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds i32, i32* %817, i64 %819
  %821 = load i32, i32* %820, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr i8, i8* %814, i64 %822
  %824 = ptrtoint i8* %823 to i32
  store i32 %824, i32* %820, align 4
  br label %825

825:                                              ; preds = %813, %804
  br label %833

826:                                              ; preds = %730
  %827 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %828 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %827, i32 0, i32 3
  %829 = load i32*, i32** %828, align 8
  %830 = load i32, i32* %5, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds i32, i32* %829, i64 %831
  store i32 0, i32* %832, align 4
  br label %833

833:                                              ; preds = %826, %825
  br label %834

834:                                              ; preds = %833, %727
  br label %835

835:                                              ; preds = %834
  %836 = load i32, i32* %5, align 4
  %837 = add nsw i32 %836, 1
  store i32 %837, i32* %5, align 4
  br label %697

838:                                              ; preds = %697
  %839 = load i64, i64* %3, align 8
  %840 = shl i64 %839, 24
  %841 = load i64, i64* %3, align 8
  %842 = shl i64 %841, 16
  %843 = or i64 %840, %842
  %844 = load i64, i64* %3, align 8
  %845 = shl i64 %844, 8
  %846 = or i64 %843, %845
  %847 = load i64, i64* %3, align 8
  %848 = or i64 %846, %847
  store i64 %848, i64* %4, align 8
  %849 = load i64, i64* %4, align 8
  %850 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %851 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %850, i32 0, i32 6
  %852 = load i32, i32* %851, align 8
  %853 = sext i32 %852 to i64
  %854 = icmp ne i64 %849, %853
  br i1 %854, label %855, label %879

855:                                              ; preds = %838
  %856 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %857 = load i32, i32* @R_BRG_PCM_CFG, align 4
  %858 = load i32, i32* @V_PCM_CLK, align 4
  %859 = or i32 1, %858
  %860 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %856, i32 %857, i32 %859)
  %861 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %862 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %861, i32 0, i32 7
  %863 = load i32, i32* %862, align 4
  %864 = add nsw i32 %863, 4
  %865 = call i32 @outw(i32 16384, i32 %864)
  %866 = load i64, i64* %4, align 8
  %867 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %868 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %867, i32 0, i32 7
  %869 = load i32, i32* %868, align 4
  %870 = call i32 @outl(i64 %866, i32 %869)
  %871 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %872 = load i32, i32* @R_BRG_PCM_CFG, align 4
  %873 = load i32, i32* @V_PCM_CLK, align 4
  %874 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %871, i32 %872, i32 %873)
  %875 = load i64, i64* %4, align 8
  %876 = trunc i64 %875 to i32
  %877 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %878 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %877, i32 0, i32 6
  store i32 %876, i32* %878, align 8
  br label %879

879:                                              ; preds = %855, %838
  br label %880

880:                                              ; preds = %1, %879, %695, %494, %223
  %881 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %882 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %881, i32 0, i32 4
  store i32 0, i32* %882, align 8
  %883 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %884 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %883, i32 0, i32 5
  store i32 0, i32* %884, align 4
  ret void
}

declare dso_local i32 @HFC_outb_nodebug(%struct.hfc_multi*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @vpm_out(%struct.hfc_multi*, i32, i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
