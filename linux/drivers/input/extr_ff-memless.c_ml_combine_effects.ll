; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_ff-memless.c_ml_combine_effects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_ff-memless.c_ml_combine_effects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_effect = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ml_effect_state = type { %struct.ff_effect* }

@.str = private unnamed_addr constant [38 x i8] c"invalid type in ml_combine_effects()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ff_effect*, %struct.ml_effect_state*, i32)* @ml_combine_effects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ml_combine_effects(%struct.ff_effect* %0, %struct.ml_effect_state* %1, i32 %2) #0 {
  %4 = alloca %struct.ff_effect*, align 8
  %5 = alloca %struct.ml_effect_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ff_effect* %0, %struct.ff_effect** %4, align 8
  store %struct.ml_effect_state* %1, %struct.ml_effect_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ml_effect_state*, %struct.ml_effect_state** %5, align 8
  %15 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %14, i32 0, i32 0
  %16 = load %struct.ff_effect*, %struct.ff_effect** %15, align 8
  store %struct.ff_effect* %16, %struct.ff_effect** %7, align 8
  %17 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %18 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %261 [
    i32 130, label %20
    i32 128, label %81
    i32 129, label %186
  ]

20:                                               ; preds = %3
  %21 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %22 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 360
  %25 = sdiv i32 %24, 65535
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ml_effect_state*, %struct.ml_effect_state** %5, align 8
  %27 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %28 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %33 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @apply_envelope(%struct.ml_effect_state* %26, i32 %31, i32* %35)
  %37 = call i32 @fixp_new16(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @fixp_sin16(i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @fixp_mult(i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sdiv i32 %43, 65535
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @fixp_cos16(i32 %45)
  %47 = sub nsw i32 0, %46
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @fixp_mult(i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sdiv i32 %51, 65535
  store i32 %52, i32* %12, align 4
  %53 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %54 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, i8* %57, i64 %59
  %61 = ptrtoint i8* %60 to i32
  %62 = call i8* @clamp_val(i32 %61, i32 -128, i32 127)
  %63 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %64 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i8* %62, i8** %66, align 8
  %67 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %68 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %71, i64 %73
  %75 = ptrtoint i8* %74 to i32
  %76 = call i8* @clamp_val(i32 %75, i32 -128, i32 127)
  %77 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %78 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i8* %76, i8** %80, align 8
  br label %263

81:                                               ; preds = %3
  %82 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %83 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32, i32* %6, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sdiv i32 %89, 65535
  store i32 %90, i32* %8, align 4
  %91 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %92 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load i32, i32* %6, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sdiv i32 %98, 65535
  store i32 %99, i32* %9, align 4
  %100 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %101 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr i8, i8* %104, i64 %106
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %126

109:                                              ; preds = %81
  %110 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %111 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %114 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %119 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i8* @ml_calculate_direction(i32 %112, i8* %117, i32 %120, i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %125 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %157

126:                                              ; preds = %81
  %127 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %128 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr i8, i8* %131, i64 %133
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %153

136:                                              ; preds = %126
  %137 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %138 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %141 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %146 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i8* @ml_calculate_direction(i32 %139, i8* %144, i32 %147, i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %152 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %156

153:                                              ; preds = %126
  %154 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %155 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %154, i32 0, i32 1
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %136
  br label %157

157:                                              ; preds = %156, %109
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %160 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = zext i32 %158 to i64
  %165 = getelementptr i8, i8* %163, i64 %164
  %166 = ptrtoint i8* %165 to i32
  %167 = call i8* @min(i32 %166, i32 65535)
  %168 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %169 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  store i8* %167, i8** %171, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %174 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = zext i32 %172 to i64
  %179 = getelementptr i8, i8* %177, i64 %178
  %180 = ptrtoint i8* %179 to i32
  %181 = call i8* @min(i32 %180, i32 65535)
  %182 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %183 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  store i8* %181, i8** %185, align 8
  br label %263

186:                                              ; preds = %3
  %187 = load %struct.ml_effect_state*, %struct.ml_effect_state** %5, align 8
  %188 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %189 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @abs(i32 %192) #3
  %194 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %195 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = call i32 @apply_envelope(%struct.ml_effect_state* %187, i32 %193, i32* %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %6, align 4
  %201 = mul i32 %199, %200
  %202 = udiv i32 %201, 32767
  store i32 %202, i32* %10, align 4
  %203 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %204 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr i8, i8* %207, i64 %209
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %229

212:                                              ; preds = %186
  %213 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %214 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %217 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %222 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %10, align 4
  %225 = call i8* @ml_calculate_direction(i32 %215, i8* %220, i32 %223, i32 %224)
  %226 = ptrtoint i8* %225 to i32
  %227 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %228 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  br label %232

229:                                              ; preds = %186
  %230 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %231 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %230, i32 0, i32 1
  store i32 0, i32* %231, align 4
  br label %232

232:                                              ; preds = %229, %212
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %235 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = zext i32 %233 to i64
  %240 = getelementptr i8, i8* %238, i64 %239
  %241 = ptrtoint i8* %240 to i32
  %242 = call i8* @min(i32 %241, i32 65535)
  %243 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %244 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 1
  store i8* %242, i8** %246, align 8
  %247 = load i32, i32* %10, align 4
  %248 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %249 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = zext i32 %247 to i64
  %254 = getelementptr i8, i8* %252, i64 %253
  %255 = ptrtoint i8* %254 to i32
  %256 = call i8* @min(i32 %255, i32 65535)
  %257 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %258 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  store i8* %256, i8** %260, align 8
  br label %263

261:                                              ; preds = %3
  %262 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %263

263:                                              ; preds = %261, %232, %157, %20
  ret void
}

declare dso_local i32 @fixp_new16(i32) #1

declare dso_local i32 @apply_envelope(%struct.ml_effect_state*, i32, i32*) #1

declare dso_local i32 @fixp_mult(i32, i32) #1

declare dso_local i32 @fixp_sin16(i32) #1

declare dso_local i32 @fixp_cos16(i32) #1

declare dso_local i8* @clamp_val(i32, i32, i32) #1

declare dso_local i8* @ml_calculate_direction(i32, i8*, i32, i32) #1

declare dso_local i8* @min(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
