; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adbhid.c_adbhid_buttons_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adbhid.c_adbhid_buttons_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@adbhid = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [37 x i8] c"ADB HID on ID %d not yet registered\0A\00", align 1
@KEY_SOUND = common dso_local global i32 0, align 4
@KEY_MUTE = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Unhandled ADB_MISC event %02x, %02x, %02x, %02x\0A\00", align 1
@KEY_EJECTCD = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSDOWN = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSUP = common dso_local global i32 0, align 4
@KEY_SWITCHVIDEOMODE = common dso_local global i32 0, align 4
@KEY_KBDILLUMTOGGLE = common dso_local global i32 0, align 4
@KEY_KBDILLUMDOWN = common dso_local global i32 0, align 4
@KEY_KBDILLUMUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @adbhid_buttons_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adbhid_buttons_input(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = ashr i32 %13, 4
  %15 = and i32 %14, 15
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %282

25:                                               ; preds = %3
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %33 [
    i32 2, label %34
    i32 31, label %110
  ]

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %25, %33
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 15
  %44 = icmp eq i32 %38, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 15
  switch i32 %50, label %95 [
    i32 0, label %51
    i32 1, label %62
    i32 2, label %73
    i32 3, label %84
  ]

51:                                               ; preds = %34
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @KEY_SOUND, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @input_report_key(i32 %58, i32 %59, i32 %60)
  br label %109

62:                                               ; preds = %34
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @KEY_MUTE, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @input_report_key(i32 %69, i32 %70, i32 %71)
  br label %109

73:                                               ; preds = %34
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %74, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @input_report_key(i32 %80, i32 %81, i32 %82)
  br label %109

84:                                               ; preds = %34
  %85 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %85, i64 %87
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @KEY_VOLUMEUP, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @input_report_key(i32 %91, i32 %92, i32 %93)
  br label %109

95:                                               ; preds = %34
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 3
  %107 = load i8, i8* %106, align 1
  %108 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %98, i8 zeroext %101, i8 zeroext %104, i8 zeroext %107)
  br label %109

109:                                              ; preds = %95, %84, %73, %62, %51
  br label %273

110:                                              ; preds = %25
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, 15
  %120 = icmp eq i32 %114, %119
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %9, align 4
  %122 = load i8*, i8** %4, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %125, 15
  switch i32 %126, label %258 [
    i32 8, label %127
    i32 7, label %138
    i32 6, label %149
    i32 11, label %160
    i32 10, label %171
    i32 9, label %182
    i32 12, label %193
    i32 13, label %204
    i32 14, label %215
    i32 15, label %226
  ]

127:                                              ; preds = %110
  %128 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %128, i64 %130
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @KEY_MUTE, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @input_report_key(i32 %134, i32 %135, i32 %136)
  br label %272

138:                                              ; preds = %110
  %139 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %139, i64 %141
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @input_report_key(i32 %145, i32 %146, i32 %147)
  br label %272

149:                                              ; preds = %110
  %150 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %150, i64 %152
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @KEY_VOLUMEUP, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @input_report_key(i32 %156, i32 %157, i32 %158)
  br label %272

160:                                              ; preds = %110
  %161 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %161, i64 %163
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @KEY_EJECTCD, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @input_report_key(i32 %167, i32 %168, i32 %169)
  br label %272

171:                                              ; preds = %110
  %172 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %172, i64 %174
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @KEY_BRIGHTNESSDOWN, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @input_report_key(i32 %178, i32 %179, i32 %180)
  br label %272

182:                                              ; preds = %110
  %183 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %183, i64 %185
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @KEY_BRIGHTNESSUP, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @input_report_key(i32 %189, i32 %190, i32 %191)
  br label %272

193:                                              ; preds = %110
  %194 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %194, i64 %196
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @KEY_SWITCHVIDEOMODE, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @input_report_key(i32 %200, i32 %201, i32 %202)
  br label %272

204:                                              ; preds = %110
  %205 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %205, i64 %207
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @KEY_KBDILLUMTOGGLE, align 4
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @input_report_key(i32 %211, i32 %212, i32 %213)
  br label %272

215:                                              ; preds = %110
  %216 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %216, i64 %218
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @KEY_KBDILLUMDOWN, align 4
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @input_report_key(i32 %222, i32 %223, i32 %224)
  br label %272

226:                                              ; preds = %110
  %227 = load i8*, i8** %4, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  switch i32 %230, label %243 [
    i32 143, label %231
    i32 15, label %231
    i32 127, label %242
    i32 255, label %242
  ]

231:                                              ; preds = %226, %226
  %232 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %232, i64 %234
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @KEY_KBDILLUMUP, align 4
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @input_report_key(i32 %238, i32 %239, i32 %240)
  br label %257

242:                                              ; preds = %226, %226
  br label %257

243:                                              ; preds = %226
  %244 = load i8*, i8** %4, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 0
  %246 = load i8, i8* %245, align 1
  %247 = load i8*, i8** %4, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 1
  %249 = load i8, i8* %248, align 1
  %250 = load i8*, i8** %4, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 2
  %252 = load i8, i8* %251, align 1
  %253 = load i8*, i8** %4, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 3
  %255 = load i8, i8* %254, align 1
  %256 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %246, i8 zeroext %249, i8 zeroext %252, i8 zeroext %255)
  br label %257

257:                                              ; preds = %243, %242, %231
  br label %272

258:                                              ; preds = %110
  %259 = load i8*, i8** %4, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 0
  %261 = load i8, i8* %260, align 1
  %262 = load i8*, i8** %4, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 1
  %264 = load i8, i8* %263, align 1
  %265 = load i8*, i8** %4, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 2
  %267 = load i8, i8* %266, align 1
  %268 = load i8*, i8** %4, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 3
  %270 = load i8, i8* %269, align 1
  %271 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %261, i8 zeroext %264, i8 zeroext %267, i8 zeroext %270)
  br label %272

272:                                              ; preds = %258, %257, %215, %204, %193, %182, %171, %160, %149, %138, %127
  br label %273

273:                                              ; preds = %272, %109
  %274 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %274, i64 %276
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @input_sync(i32 %280)
  br label %282

282:                                              ; preds = %273, %22
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
