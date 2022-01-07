; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_trap_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_trap_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@gf100_dispatch_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"DISPATCH %08x [%s]\0A\00", align 1
@gf100_m2mf_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"M2MF %08x [%s]\0A\00", align 1
@gf100_ccache_error = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"CCACHE %08x [%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"SHADER %08x, sph: 0x%06x, stage: 0x%02x\0A\00", align 1
@gf100_unk6_error = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"UNK6 %08x [%s]\0A\00", align 1
@gf100_macro_error = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"MACRO %08x [%s], pc: 0x%03x%s, op: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" (invalid)\00", align 1
@gk104_sked_error = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"SKED: %08x [%s]\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ROP%d %08x %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"TRAP UNHANDLED %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*)* @gf100_gr_trap_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_gr_trap_intr(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %22 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %23 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.nvkm_subdev* %25, %struct.nvkm_subdev** %3, align 8
  %26 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %26, i32 0, i32 0
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %27, align 8
  store %struct.nvkm_device* %28, %struct.nvkm_device** %4, align 8
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %30 = call i32 @nvkm_rd32(%struct.nvkm_device* %29, i32 4194568)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %1
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %36 = call i32 @nvkm_rd32(%struct.nvkm_device* %35, i32 4210688)
  store i32 %36, i32* %9, align 4
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %38 = load i32, i32* @gf100_dispatch_error, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 1073741823
  %41 = call i32 @nvkm_snprintbf(i8* %37, i32 128, i32 %38, i32 %40)
  %42 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %45 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %44)
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %47 = call i32 @nvkm_wr32(%struct.nvkm_device* %46, i32 4210688, i32 -1073741824)
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %49 = call i32 @nvkm_wr32(%struct.nvkm_device* %48, i32 4194568, i32 1)
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, -2
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %34, %1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 2
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %58 = call i32 @nvkm_rd32(%struct.nvkm_device* %57, i32 4212224)
  store i32 %58, i32* %10, align 4
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %60 = load i32, i32* @gf100_m2mf_error, align 4
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 1073741823
  %63 = call i32 @nvkm_snprintbf(i8* %59, i32 128, i32 %60, i32 %62)
  %64 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %65 = load i32, i32* %10, align 4
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %67 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %65, i8* %66)
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %69 = call i32 @nvkm_wr32(%struct.nvkm_device* %68, i32 4212224, i32 -1073741824)
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %71 = call i32 @nvkm_wr32(%struct.nvkm_device* %70, i32 4194568, i32 2)
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, -3
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %56, %52
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %80 = call i32 @nvkm_rd32(%struct.nvkm_device* %79, i32 4227120)
  store i32 %80, i32* %11, align 4
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %82 = load i32, i32* @gf100_ccache_error, align 4
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 1073741823
  %85 = call i32 @nvkm_snprintbf(i8* %81, i32 128, i32 %82, i32 %84)
  %86 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %87 = load i32, i32* %11, align 4
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %89 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %87, i8* %88)
  %90 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %91 = call i32 @nvkm_wr32(%struct.nvkm_device* %90, i32 4227120, i32 -1073741824)
  %92 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %93 = call i32 @nvkm_wr32(%struct.nvkm_device* %92, i32 4194568, i32 8)
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, -9
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %78, %74
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, 16
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %102 = call i32 @nvkm_rd32(%struct.nvkm_device* %101, i32 4216896)
  store i32 %102, i32* %12, align 4
  %103 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = and i32 %105, 16777215
  %107 = load i32, i32* %12, align 4
  %108 = ashr i32 %107, 24
  %109 = and i32 %108, 63
  %110 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %106, i32 %109)
  %111 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %112 = call i32 @nvkm_wr32(%struct.nvkm_device* %111, i32 4216896, i32 -1073741824)
  %113 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %114 = call i32 @nvkm_wr32(%struct.nvkm_device* %113, i32 4194568, i32 16)
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, -17
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %100, %96
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, 64
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %117
  %122 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %123 = call i32 @nvkm_rd32(%struct.nvkm_device* %122, i32 4218908)
  store i32 %123, i32* %13, align 4
  %124 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %125 = load i32, i32* @gf100_unk6_error, align 4
  %126 = load i32, i32* %13, align 4
  %127 = and i32 %126, 1073741823
  %128 = call i32 @nvkm_snprintbf(i8* %124, i32 128, i32 %125, i32 %127)
  %129 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %130 = load i32, i32* %13, align 4
  %131 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %132 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %130, i8* %131)
  %133 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %134 = call i32 @nvkm_wr32(%struct.nvkm_device* %133, i32 4218908, i32 -1073741824)
  %135 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %136 = call i32 @nvkm_wr32(%struct.nvkm_device* %135, i32 4194568, i32 64)
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, -65
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %121, %117
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, 128
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %173

143:                                              ; preds = %139
  %144 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %145 = call i32 @nvkm_rd32(%struct.nvkm_device* %144, i32 4211856)
  store i32 %145, i32* %14, align 4
  %146 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %147 = call i32 @nvkm_rd32(%struct.nvkm_device* %146, i32 4211860)
  store i32 %147, i32* %15, align 4
  %148 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %149 = call i32 @nvkm_rd32(%struct.nvkm_device* %148, i32 4211868)
  store i32 %149, i32* %16, align 4
  %150 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %151 = load i32, i32* @gf100_macro_error, align 4
  %152 = load i32, i32* %14, align 4
  %153 = and i32 %152, 536870911
  %154 = call i32 @nvkm_snprintbf(i8* %150, i32 128, i32 %151, i32 %153)
  %155 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %156 = load i32, i32* %14, align 4
  %157 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %158 = load i32, i32* %15, align 4
  %159 = and i32 %158, 2047
  %160 = load i32, i32* %15, align 4
  %161 = and i32 %160, 268435456
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0)
  %165 = load i32, i32* %16, align 4
  %166 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %155, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %156, i8* %157, i32 %159, i8* %164, i32 %165)
  %167 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %168 = call i32 @nvkm_wr32(%struct.nvkm_device* %167, i32 4211856, i32 -1073741824)
  %169 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %170 = call i32 @nvkm_wr32(%struct.nvkm_device* %169, i32 4194568, i32 128)
  %171 = load i32, i32* %6, align 4
  %172 = and i32 %171, -129
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %143, %139
  %174 = load i32, i32* %6, align 4
  %175 = and i32 %174, 256
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %199

177:                                              ; preds = %173
  %178 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %179 = call i32 @nvkm_rd32(%struct.nvkm_device* %178, i32 4223008)
  %180 = and i32 %179, 1073741823
  store i32 %180, i32* %17, align 4
  %181 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %182 = load i32, i32* @gk104_sked_error, align 4
  %183 = load i32, i32* %17, align 4
  %184 = call i32 @nvkm_snprintbf(i8* %181, i32 128, i32 %182, i32 %183)
  %185 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %186 = load i32, i32* %17, align 4
  %187 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %188 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %185, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %186, i8* %187)
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %177
  %192 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %193 = call i32 @nvkm_wr32(%struct.nvkm_device* %192, i32 4223008, i32 1073741824)
  br label %194

194:                                              ; preds = %191, %177
  %195 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %196 = call i32 @nvkm_wr32(%struct.nvkm_device* %195, i32 4194568, i32 256)
  %197 = load i32, i32* %6, align 4
  %198 = and i32 %197, -257
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %194, %173
  %200 = load i32, i32* %6, align 4
  %201 = and i32 %200, 16777216
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %244

203:                                              ; preds = %199
  %204 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %205 = call i32 @nvkm_rd32(%struct.nvkm_device* %204, i32 4194584)
  store i32 %205, i32* %18, align 4
  store i32 0, i32* %8, align 4
  br label %206

206:                                              ; preds = %236, %203
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %212 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp slt i32 %210, %213
  br label %215

215:                                              ; preds = %209, %206
  %216 = phi i1 [ false, %206 ], [ %214, %209 ]
  br i1 %216, label %217, label %239

217:                                              ; preds = %215
  %218 = load i32, i32* %8, align 4
  %219 = shl i32 1, %218
  store i32 %219, i32* %19, align 4
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %19, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %235

224:                                              ; preds = %217
  %225 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %226 = load i32, i32* %8, align 4
  %227 = call i32 @gf100_gr_trap_gpc(%struct.gf100_gr* %225, i32 %226)
  %228 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %229 = load i32, i32* %19, align 4
  %230 = call i32 @nvkm_wr32(%struct.nvkm_device* %228, i32 4194584, i32 %229)
  %231 = load i32, i32* %19, align 4
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %18, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %18, align 4
  br label %235

235:                                              ; preds = %224, %217
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %206

239:                                              ; preds = %215
  %240 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %241 = call i32 @nvkm_wr32(%struct.nvkm_device* %240, i32 4194568, i32 16777216)
  %242 = load i32, i32* %6, align 4
  %243 = and i32 %242, -16777217
  store i32 %243, i32* %6, align 4
  br label %244

244:                                              ; preds = %239, %199
  %245 = load i32, i32* %6, align 4
  %246 = and i32 %245, 33554432
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %285

248:                                              ; preds = %244
  store i32 0, i32* %7, align 4
  br label %249

249:                                              ; preds = %277, %248
  %250 = load i32, i32* %7, align 4
  %251 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %252 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %250, %253
  br i1 %254, label %255, label %280

255:                                              ; preds = %249
  %256 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %257 = load i32, i32* %7, align 4
  %258 = call i32 @ROP_UNIT(i32 %257, i32 112)
  %259 = call i32 @nvkm_rd32(%struct.nvkm_device* %256, i32 %258)
  store i32 %259, i32* %20, align 4
  %260 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %261 = load i32, i32* %7, align 4
  %262 = call i32 @ROP_UNIT(i32 %261, i32 324)
  %263 = call i32 @nvkm_rd32(%struct.nvkm_device* %260, i32 %262)
  store i32 %263, i32* %21, align 4
  %264 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* %20, align 4
  %267 = load i32, i32* %21, align 4
  %268 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %264, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %265, i32 %266, i32 %267)
  %269 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @ROP_UNIT(i32 %270, i32 112)
  %272 = call i32 @nvkm_wr32(%struct.nvkm_device* %269, i32 %271, i32 -1073741824)
  %273 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %274 = load i32, i32* %7, align 4
  %275 = call i32 @ROP_UNIT(i32 %274, i32 324)
  %276 = call i32 @nvkm_wr32(%struct.nvkm_device* %273, i32 %275, i32 -1073741824)
  br label %277

277:                                              ; preds = %255
  %278 = load i32, i32* %7, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %7, align 4
  br label %249

280:                                              ; preds = %249
  %281 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %282 = call i32 @nvkm_wr32(%struct.nvkm_device* %281, i32 4194568, i32 33554432)
  %283 = load i32, i32* %6, align 4
  %284 = and i32 %283, -33554433
  store i32 %284, i32* %6, align 4
  br label %285

285:                                              ; preds = %280, %244
  %286 = load i32, i32* %6, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %285
  %289 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %290 = load i32, i32* %6, align 4
  %291 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %289, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %290)
  %292 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %293 = load i32, i32* %6, align 4
  %294 = call i32 @nvkm_wr32(%struct.nvkm_device* %292, i32 4194568, i32 %293)
  br label %295

295:                                              ; preds = %288, %285
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, ...) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @gf100_gr_trap_gpc(%struct.gf100_gr*, i32) #1

declare dso_local i32 @ROP_UNIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
