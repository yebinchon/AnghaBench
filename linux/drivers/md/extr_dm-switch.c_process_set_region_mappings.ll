; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_process_set_region_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_process_set_region_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_ctx = type { i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"invalid set_region_mappings argument: '%s'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"invalid set_region_mappings cycle length: %lu > %lu\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"invalid set_region_mappings region number: %lu + %lu >= %lu\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"invalid set_region_mappings region number: %lu >= %lu\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"invalid set_region_mappings device: %lu >= %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_ctx*, i32, i8**)* @process_set_region_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_set_region_mappings(%struct.switch_ctx* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.switch_ctx* %0, %struct.switch_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i64 0, i64* %9, align 8
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %280, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %283

18:                                               ; preds = %14
  %19 = load i8**, i8*** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = and i32 %26, 223
  %28 = icmp eq i32 %27, 82
  br i1 %28, label %29, label %176

29:                                               ; preds = %18
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 44
  %36 = zext i1 %35 to i32
  %37 = trunc i32 %36 to i8
  %38 = call i64 @unlikely(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load i8**, i8*** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %284

49:                                               ; preds = %29
  %50 = call i64 @parse_hex(i8** %11)
  store i64 %50, i64* %12, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 44
  %55 = zext i1 %54 to i32
  %56 = trunc i32 %55 to i8
  %57 = call i64 @unlikely(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %49
  %60 = load i8**, i8*** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %284

68:                                               ; preds = %49
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = trunc i32 %75 to i8
  %77 = call i64 @unlikely(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %68
  %80 = load i8**, i8*** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %284

88:                                               ; preds = %68
  %89 = call i64 @parse_hex(i8** %11)
  store i64 %89, i64* %13, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @unlikely(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load i8**, i8*** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %284

103:                                              ; preds = %88
  %104 = load i64, i64* %12, align 8
  %105 = icmp ne i64 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = trunc i32 %107 to i8
  %109 = call i64 @unlikely(i8 signext %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %103
  %112 = load i64, i64* %12, align 8
  %113 = sub i64 %112, 1
  %114 = load i64, i64* %9, align 8
  %115 = icmp ugt i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = trunc i32 %116 to i8
  %118 = call i64 @unlikely(i8 signext %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %111, %103
  %121 = load i64, i64* %12, align 8
  %122 = sub i64 %121, 1
  %123 = load i64, i64* %9, align 8
  %124 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %122, i64 %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %284

127:                                              ; preds = %111
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %13, align 8
  %130 = add i64 %128, %129
  %131 = load i64, i64* %9, align 8
  %132 = icmp ult i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = trunc i32 %133 to i8
  %135 = call i64 @unlikely(i8 signext %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %149, label %137

137:                                              ; preds = %127
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* %13, align 8
  %140 = add i64 %138, %139
  %141 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %142 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp uge i64 %140, %143
  %145 = zext i1 %144 to i32
  %146 = trunc i32 %145 to i8
  %147 = call i64 @unlikely(i8 signext %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %137, %127
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* %13, align 8
  %152 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %153 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %150, i64 %151, i64 %154)
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %284

158:                                              ; preds = %137
  br label %159

159:                                              ; preds = %163, %158
  %160 = load i64, i64* %13, align 8
  %161 = add i64 %160, -1
  store i64 %161, i64* %13, align 8
  %162 = icmp ne i64 %160, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %159
  %164 = load i64, i64* %9, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %9, align 8
  %166 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %167 = load i64, i64* %9, align 8
  %168 = load i64, i64* %12, align 8
  %169 = sub i64 %167, %168
  %170 = call i64 @switch_region_table_read(%struct.switch_ctx* %166, i64 %169)
  store i64 %170, i64* %10, align 8
  %171 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %172 = load i64, i64* %9, align 8
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @switch_region_table_write(%struct.switch_ctx* %171, i64 %172, i64 %173)
  br label %159

175:                                              ; preds = %159
  br label %280

176:                                              ; preds = %18
  %177 = load i8*, i8** %11, align 8
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 58
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i64, i64* %9, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %9, align 8
  br label %204

184:                                              ; preds = %176
  %185 = call i64 @parse_hex(i8** %11)
  store i64 %185, i64* %9, align 8
  %186 = load i8*, i8** %11, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp ne i32 %188, 58
  %190 = zext i1 %189 to i32
  %191 = trunc i32 %190 to i8
  %192 = call i64 @unlikely(i8 signext %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %184
  %195 = load i8**, i8*** %7, align 8
  %196 = load i32, i32* %8, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %199)
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %4, align 4
  br label %284

203:                                              ; preds = %184
  br label %204

204:                                              ; preds = %203, %181
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %11, align 8
  %207 = load i8*, i8** %11, align 8
  %208 = load i8, i8* %207, align 1
  %209 = icmp ne i8 %208, 0
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = trunc i32 %211 to i8
  %213 = call i64 @unlikely(i8 signext %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %204
  %216 = load i8**, i8*** %7, align 8
  %217 = load i32, i32* %8, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %220)
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %4, align 4
  br label %284

224:                                              ; preds = %204
  %225 = call i64 @parse_hex(i8** %11)
  store i64 %225, i64* %10, align 8
  %226 = load i8*, i8** %11, align 8
  %227 = load i8, i8* %226, align 1
  %228 = call i64 @unlikely(i8 signext %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %224
  %231 = load i8**, i8*** %7, align 8
  %232 = load i32, i32* %8, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %235)
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %4, align 4
  br label %284

239:                                              ; preds = %224
  %240 = load i64, i64* %9, align 8
  %241 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %242 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp uge i64 %240, %243
  %245 = zext i1 %244 to i32
  %246 = trunc i32 %245 to i8
  %247 = call i64 @unlikely(i8 signext %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %239
  %250 = load i64, i64* %9, align 8
  %251 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %252 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %250, i64 %253)
  %255 = load i32, i32* @EINVAL, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %4, align 4
  br label %284

257:                                              ; preds = %239
  %258 = load i64, i64* %10, align 8
  %259 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %260 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp uge i64 %258, %261
  %263 = zext i1 %262 to i32
  %264 = trunc i32 %263 to i8
  %265 = call i64 @unlikely(i8 signext %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %257
  %268 = load i64, i64* %10, align 8
  %269 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %270 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %268, i64 %271)
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %4, align 4
  br label %284

275:                                              ; preds = %257
  %276 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  %277 = load i64, i64* %9, align 8
  %278 = load i64, i64* %10, align 8
  %279 = call i32 @switch_region_table_write(%struct.switch_ctx* %276, i64 %277, i64 %278)
  br label %280

280:                                              ; preds = %275, %175
  %281 = load i32, i32* %8, align 4
  %282 = add i32 %281, 1
  store i32 %282, i32* %8, align 4
  br label %14

283:                                              ; preds = %14
  store i32 0, i32* %4, align 4
  br label %284

284:                                              ; preds = %283, %267, %249, %230, %215, %194, %149, %120, %94, %79, %59, %40
  %285 = load i32, i32* %4, align 4
  ret i32 %285
}

declare dso_local i64 @unlikely(i8 signext) #1

declare dso_local i32 @DMWARN(i8*, ...) #1

declare dso_local i64 @parse_hex(i8**) #1

declare dso_local i64 @switch_region_table_read(%struct.switch_ctx*, i64) #1

declare dso_local i32 @switch_region_table_write(%struct.switch_ctx*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
