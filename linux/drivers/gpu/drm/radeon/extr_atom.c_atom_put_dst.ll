; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atom.c_atom_put_dst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atom.c_atom_put_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32*, %struct.atom_context* }
%struct.atom_context = type { i64, i32, i64*, i64, i64, i64, i64, i64, i64*, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i64, i64)*, i32 (%struct.TYPE_8__*, i64, i64)*, i32 (%struct.TYPE_8__*, i64, i64)* }

@atom_dst_to_src = common dso_local global i64** null, align 8
@atom_arg_mask = common dso_local global i64* null, align 8
@atom_arg_shift = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"REG[0x%04X]\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"PCI registers are not implemented\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"SYSIO registers are not implemented\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Bad IO mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Undefined indirect IO write method %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"PS[0x%02X]\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"WS[0x%02X]\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"ATOM: fb write beyond scratch region: %d vs. %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"FB[0x%02X]\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"PLL[0x%02X]\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"MC[0x%02X]\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c".[31:0] <- 0x%08X\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c".[15:0] <- 0x%04X\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c".[23:8] <- 0x%04X\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c".[31:16] <- 0x%04X\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c".[7:0] <- 0x%02X\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c".[15:8] <- 0x%02X\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c".[23:16] <- 0x%02X\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c".[31:24] <- 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i32*, i64, i64)* @atom_put_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atom_put_dst(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.atom_context*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i64**, i64*** @atom_dst_to_src, align 8
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 3
  %20 = and i32 %19, 7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64*, i64** %17, i64 %21
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 6
  %26 = and i32 %25, 3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %23, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %11, align 8
  store i64 %30, i64* %14, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load %struct.atom_context*, %struct.atom_context** %32, align 8
  store %struct.atom_context* %33, %struct.atom_context** %16, align 8
  %34 = load i64*, i64** @atom_arg_mask, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** @atom_arg_shift, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = lshr i64 %37, %41
  %43 = load i64, i64* %14, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %14, align 8
  %45 = load i64*, i64** @atom_arg_shift, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = shl i64 %49, %48
  store i64 %50, i64* %11, align 8
  %51 = load i64*, i64** @atom_arg_mask, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %11, align 8
  %57 = load i64*, i64** @atom_arg_mask, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %12, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %11, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %11, align 8
  %67 = load i32, i32* %8, align 4
  switch i32 %67, label %310 [
    i32 149, label %68
    i32 150, label %160
    i32 148, label %176
    i32 153, label %227
    i32 151, label %270
    i32 152, label %290
  ]

68:                                               ; preds = %6
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @U16(i32 %70)
  store i64 %71, i64* %15, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 2
  store i32 %74, i32* %72, align 4
  %75 = load i64, i64* %15, align 8
  %76 = call i32 @DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %78 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %15, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %15, align 8
  %82 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %83 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %118 [
    i32 147, label %85
    i32 146, label %114
    i32 145, label %116
  ]

85:                                               ; preds = %68
  %86 = load i64, i64* %15, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %90 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %89, i32 0, i32 9
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32 (%struct.TYPE_8__*, i64, i64)*, i32 (%struct.TYPE_8__*, i64, i64)** %92, align 8
  %94 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %95 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %94, i32 0, i32 9
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %11, align 8
  %99 = shl i64 %98, 2
  %100 = call i32 %93(%struct.TYPE_8__* %96, i64 %97, i64 %99)
  br label %113

101:                                              ; preds = %85
  %102 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %103 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %102, i32 0, i32 9
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32 (%struct.TYPE_8__*, i64, i64)*, i32 (%struct.TYPE_8__*, i64, i64)** %105, align 8
  %107 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %108 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %107, i32 0, i32 9
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 %106(%struct.TYPE_8__* %109, i64 %110, i64 %111)
  br label %113

113:                                              ; preds = %101, %88
  br label %159

114:                                              ; preds = %68
  %115 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %336

116:                                              ; preds = %68
  %117 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %336

118:                                              ; preds = %68
  %119 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %120 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, 128
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %118
  %125 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %336

126:                                              ; preds = %118
  %127 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %128 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %127, i32 0, i32 10
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %131 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, 255
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %129, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %126
  %139 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %140 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 127
  %143 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  br label %336

144:                                              ; preds = %126
  %145 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %146 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %147 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %146, i32 0, i32 10
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %150 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, 255
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %148, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* %15, align 8
  %157 = load i64, i64* %11, align 8
  %158 = call i32 @atom_iio_execute(%struct.atom_context* %145, i32 %155, i64 %156, i64 %157)
  br label %159

159:                                              ; preds = %144, %113
  br label %310

160:                                              ; preds = %6
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @U8(i32 %162)
  store i64 %163, i64* %15, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  %167 = load i64, i64* %15, align 8
  %168 = call i32 @DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %167)
  %169 = load i64, i64* %11, align 8
  %170 = call i32 @cpu_to_le32(i64 %169)
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* %15, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32 %170, i32* %175, align 4
  br label %310

176:                                              ; preds = %6
  %177 = load i32*, i32** %10, align 8
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @U8(i32 %178)
  store i64 %179, i64* %15, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load i64, i64* %15, align 8
  %184 = call i32 @DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 %183)
  %185 = load i64, i64* %15, align 8
  switch i64 %185, label %219 [
    i64 131, label %186
    i64 129, label %192
    i64 134, label %198
    i64 128, label %202
    i64 132, label %206
    i64 136, label %206
    i64 133, label %207
    i64 135, label %211
    i64 130, label %215
  ]

186:                                              ; preds = %176
  %187 = load i64, i64* %11, align 8
  %188 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %189 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %188, i32 0, i32 2
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 0
  store i64 %187, i64* %191, align 8
  br label %226

192:                                              ; preds = %176
  %193 = load i64, i64* %11, align 8
  %194 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %195 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %194, i32 0, i32 2
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 1
  store i64 %193, i64* %197, align 8
  br label %226

198:                                              ; preds = %176
  %199 = load i64, i64* %11, align 8
  %200 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %201 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %200, i32 0, i32 3
  store i64 %199, i64* %201, align 8
  br label %226

202:                                              ; preds = %176
  %203 = load i64, i64* %11, align 8
  %204 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %205 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %204, i32 0, i32 4
  store i64 %203, i64* %205, align 8
  br label %226

206:                                              ; preds = %176, %176
  br label %226

207:                                              ; preds = %176
  %208 = load i64, i64* %11, align 8
  %209 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %210 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %209, i32 0, i32 5
  store i64 %208, i64* %210, align 8
  br label %226

211:                                              ; preds = %176
  %212 = load i64, i64* %11, align 8
  %213 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %214 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %213, i32 0, i32 6
  store i64 %212, i64* %214, align 8
  br label %226

215:                                              ; preds = %176
  %216 = load i64, i64* %11, align 8
  %217 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %218 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  br label %226

219:                                              ; preds = %176
  %220 = load i64, i64* %11, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i64*, i64** %222, align 8
  %224 = load i64, i64* %15, align 8
  %225 = getelementptr inbounds i64, i64* %223, i64 %224
  store i64 %220, i64* %225, align 8
  br label %226

226:                                              ; preds = %219, %215, %211, %207, %206, %202, %198, %192, %186
  br label %310

227:                                              ; preds = %6
  %228 = load i32*, i32** %10, align 8
  %229 = load i32, i32* %228, align 4
  %230 = call i64 @U8(i32 %229)
  store i64 %230, i64* %15, align 8
  %231 = load i32*, i32** %10, align 8
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  %234 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %235 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* %15, align 8
  %238 = mul i64 %237, 4
  %239 = add i64 %236, %238
  %240 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %241 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %240, i32 0, i32 7
  %242 = load i64, i64* %241, align 8
  %243 = icmp ugt i64 %239, %242
  br i1 %243, label %244, label %255

244:                                              ; preds = %227
  %245 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %246 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %245, i32 0, i32 5
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* %15, align 8
  %249 = mul i64 %248, 4
  %250 = add i64 %247, %249
  %251 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %252 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %251, i32 0, i32 7
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i64 %250, i64 %253)
  br label %267

255:                                              ; preds = %227
  %256 = load i64, i64* %11, align 8
  %257 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %258 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %257, i32 0, i32 8
  %259 = load i64*, i64** %258, align 8
  %260 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %261 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %260, i32 0, i32 5
  %262 = load i64, i64* %261, align 8
  %263 = udiv i64 %262, 4
  %264 = load i64, i64* %15, align 8
  %265 = add i64 %263, %264
  %266 = getelementptr inbounds i64, i64* %259, i64 %265
  store i64 %256, i64* %266, align 8
  br label %267

267:                                              ; preds = %255, %244
  %268 = load i64, i64* %15, align 8
  %269 = call i32 @DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 %268)
  br label %310

270:                                              ; preds = %6
  %271 = load i32*, i32** %10, align 8
  %272 = load i32, i32* %271, align 4
  %273 = call i64 @U8(i32 %272)
  store i64 %273, i64* %15, align 8
  %274 = load i32*, i32** %10, align 8
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  %277 = load i64, i64* %15, align 8
  %278 = call i32 @DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 %277)
  %279 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %280 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %279, i32 0, i32 9
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  %283 = load i32 (%struct.TYPE_8__*, i64, i64)*, i32 (%struct.TYPE_8__*, i64, i64)** %282, align 8
  %284 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %285 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %284, i32 0, i32 9
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %285, align 8
  %287 = load i64, i64* %15, align 8
  %288 = load i64, i64* %11, align 8
  %289 = call i32 %283(%struct.TYPE_8__* %286, i64 %287, i64 %288)
  br label %310

290:                                              ; preds = %6
  %291 = load i32*, i32** %10, align 8
  %292 = load i32, i32* %291, align 4
  %293 = call i64 @U8(i32 %292)
  store i64 %293, i64* %15, align 8
  %294 = load i32*, i32** %10, align 8
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %294, align 4
  %297 = load i64, i64* %15, align 8
  %298 = call i32 @DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i64 %297)
  %299 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %300 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %299, i32 0, i32 9
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  %303 = load i32 (%struct.TYPE_8__*, i64, i64)*, i32 (%struct.TYPE_8__*, i64, i64)** %302, align 8
  %304 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  %305 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %304, i32 0, i32 9
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %305, align 8
  %307 = load i64, i64* %15, align 8
  %308 = load i64, i64* %11, align 8
  %309 = call i32 %303(%struct.TYPE_8__* %306, i64 %307, i64 %308)
  br label %336

310:                                              ; preds = %6, %270, %267, %226, %160, %159
  %311 = load i64, i64* %13, align 8
  switch i64 %311, label %336 [
    i64 140, label %312
    i64 139, label %315
    i64 137, label %318
    i64 138, label %321
    i64 144, label %324
    i64 141, label %327
    i64 143, label %330
    i64 142, label %333
  ]

312:                                              ; preds = %310
  %313 = load i64, i64* %14, align 8
  %314 = call i32 @DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 %313)
  br label %336

315:                                              ; preds = %310
  %316 = load i64, i64* %14, align 8
  %317 = call i32 @DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 %316)
  br label %336

318:                                              ; preds = %310
  %319 = load i64, i64* %14, align 8
  %320 = call i32 @DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i64 %319)
  br label %336

321:                                              ; preds = %310
  %322 = load i64, i64* %14, align 8
  %323 = call i32 @DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i64 %322)
  br label %336

324:                                              ; preds = %310
  %325 = load i64, i64* %14, align 8
  %326 = call i32 @DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i64 %325)
  br label %336

327:                                              ; preds = %310
  %328 = load i64, i64* %14, align 8
  %329 = call i32 @DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i64 %328)
  br label %336

330:                                              ; preds = %310
  %331 = load i64, i64* %14, align 8
  %332 = call i32 @DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i64 %331)
  br label %336

333:                                              ; preds = %310
  %334 = load i64, i64* %14, align 8
  %335 = call i32 @DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i64 %334)
  br label %336

336:                                              ; preds = %114, %116, %124, %138, %290, %310, %333, %330, %327, %324, %321, %318, %315, %312
  ret void
}

declare dso_local i64 @U16(i32) #1

declare dso_local i32 @DEBUG(i8*, i64) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @atom_iio_execute(%struct.atom_context*, i32, i64, i64) #1

declare dso_local i64 @U8(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
