; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_handle_write_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_handle_write_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i32* }
%struct.r10conf = type { i32, %struct.TYPE_7__*, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32 }
%struct.r10bio = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.bio*, %struct.bio* }

@R10BIO_IsSync = common dso_local global i32 0, align 4
@R10BIO_IsRecover = common dso_local global i32 0, align 4
@IO_MADE_GOOD = common dso_local global %struct.bio* null, align 8
@R10BIO_Degraded = common dso_local global i32 0, align 4
@R10BIO_WriteError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*, %struct.r10bio*)* @handle_write_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_write_completed(%struct.r10conf* %0, %struct.r10bio* %1) #0 {
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.md_rdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio*, align 8
  store %struct.r10conf* %0, %struct.r10conf** %3, align 8
  store %struct.r10bio* %1, %struct.r10bio** %4, align 8
  %11 = load i32, i32* @R10BIO_IsSync, align 4
  %12 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %13 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @R10BIO_IsRecover, align 4
  %18 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %19 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %202

22:                                               ; preds = %16, %2
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %196, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %26 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %199

29:                                               ; preds = %23
  %30 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %31 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %7, align 4
  %38 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %39 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %38, i32 0, i32 6
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.md_rdev*, %struct.md_rdev** %44, align 8
  store %struct.md_rdev* %45, %struct.md_rdev** %6, align 8
  %46 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %47 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %46, i32 0, i32 3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load %struct.bio*, %struct.bio** %52, align 8
  %54 = icmp eq %struct.bio* %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %29
  %56 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %57 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load %struct.bio*, %struct.bio** %62, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %55, %29
  br label %196

68:                                               ; preds = %55
  %69 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %70 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %69, i32 0, i32 3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load %struct.bio*, %struct.bio** %75, align 8
  %77 = getelementptr inbounds %struct.bio, %struct.bio* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %68
  %81 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %82 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %83 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %91 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %81, i32 %89, i32 %92, i32 0)
  br label %116

94:                                               ; preds = %68
  %95 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %96 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %97 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %96, i32 0, i32 3
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %105 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @rdev_set_badblocks(%struct.md_rdev* %95, i32 %103, i32 %106, i32 0)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %94
  %110 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %111 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %114 = call i32 @md_error(%struct.TYPE_7__* %112, %struct.md_rdev* %113)
  br label %115

115:                                              ; preds = %109, %94
  br label %116

116:                                              ; preds = %115, %80
  %117 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %118 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %117, i32 0, i32 6
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load %struct.md_rdev*, %struct.md_rdev** %123, align 8
  store %struct.md_rdev* %124, %struct.md_rdev** %6, align 8
  %125 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %126 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %125, i32 0, i32 3
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load %struct.bio*, %struct.bio** %131, align 8
  %133 = icmp eq %struct.bio* %132, null
  br i1 %133, label %146, label %134

134:                                              ; preds = %116
  %135 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %136 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %135, i32 0, i32 3
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load %struct.bio*, %struct.bio** %141, align 8
  %143 = getelementptr inbounds %struct.bio, %struct.bio* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %134, %116
  br label %196

147:                                              ; preds = %134
  %148 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %149 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %148, i32 0, i32 3
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load %struct.bio*, %struct.bio** %154, align 8
  %156 = getelementptr inbounds %struct.bio, %struct.bio* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %147
  %160 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %161 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %162 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %161, i32 0, i32 3
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %170 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %160, i32 %168, i32 %171, i32 0)
  br label %195

173:                                              ; preds = %147
  %174 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %175 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %176 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %175, i32 0, i32 3
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %184 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @rdev_set_badblocks(%struct.md_rdev* %174, i32 %182, i32 %185, i32 0)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %173
  %189 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %190 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %189, i32 0, i32 1
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %193 = call i32 @md_error(%struct.TYPE_7__* %191, %struct.md_rdev* %192)
  br label %194

194:                                              ; preds = %188, %173
  br label %195

195:                                              ; preds = %194, %159
  br label %196

196:                                              ; preds = %195, %146, %67
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %23

199:                                              ; preds = %23
  %200 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %201 = call i32 @put_buf(%struct.r10bio* %200)
  br label %373

202:                                              ; preds = %16
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %203

203:                                              ; preds = %329, %202
  %204 = load i32, i32* %5, align 4
  %205 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %206 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %209, label %332

209:                                              ; preds = %203
  %210 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %211 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %210, i32 0, i32 3
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  store i32 %217, i32* %9, align 4
  %218 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %219 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %218, i32 0, i32 3
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 3
  %225 = load %struct.bio*, %struct.bio** %224, align 8
  store %struct.bio* %225, %struct.bio** %10, align 8
  %226 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %227 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %226, i32 0, i32 6
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load %struct.md_rdev*, %struct.md_rdev** %232, align 8
  store %struct.md_rdev* %233, %struct.md_rdev** %6, align 8
  %234 = load %struct.bio*, %struct.bio** %10, align 8
  %235 = load %struct.bio*, %struct.bio** @IO_MADE_GOOD, align 8
  %236 = icmp eq %struct.bio* %234, %235
  br i1 %236, label %237, label %256

237:                                              ; preds = %209
  %238 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %239 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %240 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %239, i32 0, i32 3
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %248 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %238, i32 %246, i32 %249, i32 0)
  %251 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %252 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %253 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %252, i32 0, i32 1
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  %255 = call i32 @rdev_dec_pending(%struct.md_rdev* %251, %struct.TYPE_7__* %254)
  br label %286

256:                                              ; preds = %209
  %257 = load %struct.bio*, %struct.bio** %10, align 8
  %258 = icmp ne %struct.bio* %257, null
  br i1 %258, label %259, label %285

259:                                              ; preds = %256
  %260 = load %struct.bio*, %struct.bio** %10, align 8
  %261 = getelementptr inbounds %struct.bio, %struct.bio* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %285

264:                                              ; preds = %259
  store i32 1, i32* %8, align 4
  %265 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %266 = load i32, i32* %5, align 4
  %267 = call i32 @narrow_write_error(%struct.r10bio* %265, i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %279, label %269

269:                                              ; preds = %264
  %270 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %271 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %270, i32 0, i32 1
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %271, align 8
  %273 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %274 = call i32 @md_error(%struct.TYPE_7__* %272, %struct.md_rdev* %273)
  %275 = load i32, i32* @R10BIO_Degraded, align 4
  %276 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %277 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %276, i32 0, i32 0
  %278 = call i32 @set_bit(i32 %275, i32* %277)
  br label %279

279:                                              ; preds = %269, %264
  %280 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %281 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %282 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %281, i32 0, i32 1
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %282, align 8
  %284 = call i32 @rdev_dec_pending(%struct.md_rdev* %280, %struct.TYPE_7__* %283)
  br label %285

285:                                              ; preds = %279, %259, %256
  br label %286

286:                                              ; preds = %285, %237
  %287 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %288 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %287, i32 0, i32 3
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %288, align 8
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 2
  %294 = load %struct.bio*, %struct.bio** %293, align 8
  store %struct.bio* %294, %struct.bio** %10, align 8
  %295 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %296 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %295, i32 0, i32 6
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %296, align 8
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 0
  %302 = load %struct.md_rdev*, %struct.md_rdev** %301, align 8
  store %struct.md_rdev* %302, %struct.md_rdev** %6, align 8
  %303 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %304 = icmp ne %struct.md_rdev* %303, null
  br i1 %304, label %305, label %328

305:                                              ; preds = %286
  %306 = load %struct.bio*, %struct.bio** %10, align 8
  %307 = load %struct.bio*, %struct.bio** @IO_MADE_GOOD, align 8
  %308 = icmp eq %struct.bio* %306, %307
  br i1 %308, label %309, label %328

309:                                              ; preds = %305
  %310 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %311 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %312 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %311, i32 0, i32 3
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %312, align 8
  %314 = load i32, i32* %5, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %320 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %310, i32 %318, i32 %321, i32 0)
  %323 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %324 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %325 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %324, i32 0, i32 1
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %325, align 8
  %327 = call i32 @rdev_dec_pending(%struct.md_rdev* %323, %struct.TYPE_7__* %326)
  br label %328

328:                                              ; preds = %309, %305, %286
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %5, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %5, align 4
  br label %203

332:                                              ; preds = %203
  %333 = load i32, i32* %8, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %360

335:                                              ; preds = %332
  %336 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %337 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %336, i32 0, i32 3
  %338 = call i32 @spin_lock_irq(i32* %337)
  %339 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %340 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %339, i32 0, i32 1
  %341 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %342 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %341, i32 0, i32 5
  %343 = call i32 @list_add(i32* %340, i32* %342)
  %344 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %345 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 8
  %348 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %349 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %348, i32 0, i32 3
  %350 = call i32 @spin_unlock_irq(i32* %349)
  %351 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %352 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %351, i32 0, i32 2
  %353 = call i32 @wake_up(i32* %352)
  %354 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %355 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %354, i32 0, i32 1
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @md_wakeup_thread(i32 %358)
  br label %372

360:                                              ; preds = %332
  %361 = load i32, i32* @R10BIO_WriteError, align 4
  %362 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %363 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %362, i32 0, i32 0
  %364 = call i64 @test_bit(i32 %361, i32* %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %360
  %367 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %368 = call i32 @close_write(%struct.r10bio* %367)
  br label %369

369:                                              ; preds = %366, %360
  %370 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %371 = call i32 @raid_end_bio_io(%struct.r10bio* %370)
  br label %372

372:                                              ; preds = %369, %335
  br label %373

373:                                              ; preds = %372, %199
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rdev_clear_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @md_error(%struct.TYPE_7__*, %struct.md_rdev*) #1

declare dso_local i32 @put_buf(%struct.r10bio*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.TYPE_7__*) #1

declare dso_local i32 @narrow_write_error(%struct.r10bio*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @close_write(%struct.r10bio*) #1

declare dso_local i32 @raid_end_bio_io(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
