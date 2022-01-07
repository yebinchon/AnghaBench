; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_parse_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_parse_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_private = type { %struct.TYPE_4__*, %struct.dvb_ca_slot* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dvb_ca_slot = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"DVB_CI_V\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"1.00\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"dvb_ca adapter %d: Unsupported DVB CAM module version %c%c%c%c\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"DVB_HOST\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"DVB_CI_MODULE\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"dvb_ca: Skipping unknown tuple type:0x%x length:0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"Valid DVB CAM detected MANID:%x DEVID:%x CONFIGBASE:0x%x CONFIGOPTION:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_private*, i32)* @dvb_ca_en50221_parse_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_ca_en50221_parse_attributes(%struct.dvb_ca_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_ca_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [257 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dvb_ca_private* %0, %struct.dvb_ca_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %22 = call i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %19, i32 %20, i32* %7, i32* %9, i32* %8, i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %3, align 4
  br label %284

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 29
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %284

33:                                               ; preds = %27
  %34 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %37 = call i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %34, i32 %35, i32* %7, i32* %9, i32* %8, i32* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %3, align 4
  br label %284

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 28
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %284

48:                                               ; preds = %42
  %49 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %52 = call i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %49, i32 %50, i32* %7, i32* %9, i32* %8, i32* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %3, align 4
  br label %284

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 21
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %284

63:                                               ; preds = %57
  %64 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %67 = call i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %64, i32 %65, i32* %7, i32* %9, i32* %8, i32* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %3, align 4
  br label %284

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 32
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %284

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 4
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %284

84:                                               ; preds = %78
  %85 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %89 = load i32, i32* %88, align 16
  %90 = or i32 %87, %89
  store i32 %90, i32* %17, align 4
  %91 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %93, %95
  store i32 %96, i32* %18, align 4
  %97 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %100 = call i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %97, i32 %98, i32* %7, i32* %9, i32* %8, i32* %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %84
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %3, align 4
  br label %284

105:                                              ; preds = %84
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 26
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %284

111:                                              ; preds = %105
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 3
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %284

117:                                              ; preds = %111
  %118 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %119 = load i32, i32* %118, align 16
  %120 = and i32 %119, 3
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 3, %122
  %124 = add nsw i32 %123, 14
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %117
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %284

129:                                              ; preds = %117
  %130 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %131 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %130, i32 0, i32 1
  %132 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %132, i64 %134
  store %struct.dvb_ca_slot* %135, %struct.dvb_ca_slot** %6, align 8
  %136 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %137 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %136, i32 0, i32 0
  store i32 0, i32* %137, align 4
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %156, %129
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %138
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 2, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %16, align 4
  %150 = mul nsw i32 8, %149
  %151 = shl i32 %148, %150
  %152 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %153 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %143
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  br label %138

159:                                              ; preds = %138
  %160 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %161 = bitcast i32* %160 to i8*
  %162 = load i32, i32* %8, align 4
  %163 = call i8* @findstr(i8* %161, i32 %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  store i8* %163, i8** %11, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %159
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %284

169:                                              ; preds = %159
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = load i8*, i8** %11, align 8
  %173 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %174 = bitcast i32* %173 to i8*
  %175 = ptrtoint i8* %172 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = add nsw i64 %177, 12
  %179 = icmp slt i64 %171, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %169
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %3, align 4
  br label %284

183:                                              ; preds = %169
  %184 = load i8*, i8** %11, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 8
  %186 = call i64 @strncmp(i8* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %211

188:                                              ; preds = %183
  %189 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %190 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %189, i32 0, i32 0
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i8*, i8** %11, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 8
  %198 = load i8, i8* %197, align 1
  %199 = load i8*, i8** %11, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 9
  %201 = load i8, i8* %200, align 1
  %202 = load i8*, i8** %11, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 10
  %204 = load i8, i8* %203, align 1
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 11
  %207 = load i8, i8* %206, align 1
  %208 = call i32 @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %195, i8 signext %198, i8 signext %201, i8 signext %204, i8 signext %207)
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %3, align 4
  br label %284

211:                                              ; preds = %183
  br label %212

212:                                              ; preds = %264, %211
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %216, 4096
  br label %218

218:                                              ; preds = %215, %212
  %219 = phi i1 [ false, %212 ], [ %217, %215 ]
  br i1 %219, label %220, label %265

220:                                              ; preds = %218
  %221 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %222 = load i32, i32* %5, align 4
  %223 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %224 = call i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %221, i32 %222, i32* %7, i32* %9, i32* %8, i32* %223)
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %13, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %220
  %228 = load i32, i32* %13, align 4
  store i32 %228, i32* %3, align 4
  br label %284

229:                                              ; preds = %220
  %230 = load i32, i32* %9, align 4
  switch i32 %230, label %260 [
    i32 27, label %231
    i32 20, label %258
    i32 255, label %259
  ]

231:                                              ; preds = %229
  %232 = load i32, i32* %8, align 4
  %233 = icmp slt i32 %232, 30
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  br label %264

235:                                              ; preds = %231
  %236 = load i32, i32* %14, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  br label %264

239:                                              ; preds = %235
  %240 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %241 = load i32, i32* %240, align 16
  %242 = and i32 %241, 63
  %243 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %244 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  %245 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %246 = bitcast i32* %245 to i8*
  %247 = load i32, i32* %8, align 4
  %248 = call i8* @findstr(i8* %246, i32 %247, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %256

250:                                              ; preds = %239
  %251 = getelementptr inbounds [257 x i32], [257 x i32]* %10, i64 0, i64 0
  %252 = bitcast i32* %251 to i8*
  %253 = load i32, i32* %8, align 4
  %254 = call i8* @findstr(i8* %252, i32 %253, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 13)
  %255 = icmp ne i8* %254, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %250, %239
  br label %264

257:                                              ; preds = %250
  store i32 1, i32* %14, align 4
  br label %264

258:                                              ; preds = %229
  br label %264

259:                                              ; preds = %229
  store i32 1, i32* %15, align 4
  br label %264

260:                                              ; preds = %229
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %8, align 4
  %263 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %260, %259, %258, %257, %256, %238, %234
  br label %212

265:                                              ; preds = %218
  %266 = load i32, i32* %7, align 4
  %267 = icmp sgt i32 %266, 4096
  br i1 %267, label %271, label %268

268:                                              ; preds = %265
  %269 = load i32, i32* %14, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %268, %265
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %3, align 4
  br label %284

274:                                              ; preds = %268
  %275 = load i32, i32* %17, align 4
  %276 = load i32, i32* %18, align 4
  %277 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %278 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %281 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 %275, i32 %276, i32 %279, i32 %282)
  store i32 0, i32* %3, align 4
  br label %284

284:                                              ; preds = %274, %271, %227, %188, %180, %166, %126, %114, %108, %103, %81, %75, %70, %60, %55, %45, %40, %30, %25
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @findstr(i8*, i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @dprintk(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
