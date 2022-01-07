; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_fix_sync_read_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_fix_sync_read_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i64, i32, i32, i32, %struct.bio**, %struct.mddev* }
%struct.bio = type { i64, i32* }
%struct.mddev = type { i32, i32, %struct.r1conf* }
%struct.r1conf = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32, i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.page** }

@FailFast = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@end_sync_write = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@end_sync_read = common dso_local global i32* null, align 8
@REQ_OP_READ = common dso_local global i32 0, align 4
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"md/raid1:%s: %s: unrecoverable I/O read error for block %llu\0A\00", align 1
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@R1BIO_Uptodate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r1bio*)* @fix_sync_read_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_sync_read_error(%struct.r1bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r1bio*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.r1conf*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.md_rdev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.r1bio* %0, %struct.r1bio** %3, align 8
  %20 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %21 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %20, i32 0, i32 5
  %22 = load %struct.mddev*, %struct.mddev** %21, align 8
  store %struct.mddev* %22, %struct.mddev** %4, align 8
  %23 = load %struct.mddev*, %struct.mddev** %4, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 2
  %25 = load %struct.r1conf*, %struct.r1conf** %24, align 8
  store %struct.r1conf* %25, %struct.r1conf** %5, align 8
  %26 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %27 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %26, i32 0, i32 4
  %28 = load %struct.bio**, %struct.bio*** %27, align 8
  %29 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %30 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.bio*, %struct.bio** %28, i64 %31
  %33 = load %struct.bio*, %struct.bio** %32, align 8
  store %struct.bio* %33, %struct.bio** %6, align 8
  %34 = load %struct.bio*, %struct.bio** %6, align 8
  %35 = call %struct.TYPE_4__* @get_resync_pages(%struct.bio* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.page**, %struct.page*** %36, align 8
  store %struct.page** %37, %struct.page*** %7, align 8
  %38 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %39 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %42 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %44 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %45 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %48 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.md_rdev*, %struct.md_rdev** %51, align 8
  store %struct.md_rdev* %52, %struct.md_rdev** %11, align 8
  %53 = load i32, i32* @FailFast, align 4
  %54 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %55 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %54, i32 0, i32 1
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %1
  %59 = load %struct.mddev*, %struct.mddev** %4, align 8
  %60 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %61 = call i32 @md_error(%struct.mddev* %59, %struct.md_rdev* %60)
  %62 = load i32, i32* @Faulty, align 4
  %63 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %64 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %63, i32 0, i32 1
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32*, i32** @end_sync_write, align 8
  %69 = load %struct.bio*, %struct.bio** %6, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %67, %58
  br label %72

72:                                               ; preds = %71, %1
  br label %73

73:                                               ; preds = %356, %230, %72
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %365

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %12, align 4
  %78 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %79 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = ashr i32 %83, 9
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = ashr i32 %87, 9
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %86, %76
  br label %90

90:                                               ; preds = %146, %89
  %91 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %92 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %91, i32 0, i32 4
  %93 = load %struct.bio**, %struct.bio*** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.bio*, %struct.bio** %93, i64 %95
  %97 = load %struct.bio*, %struct.bio** %96, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** @end_sync_read, align 8
  %101 = icmp eq i32* %99, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %90
  %103 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %104 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load %struct.md_rdev*, %struct.md_rdev** %109, align 8
  store %struct.md_rdev* %110, %struct.md_rdev** %11, align 8
  %111 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %12, align 4
  %114 = shl i32 %113, 9
  %115 = load %struct.page**, %struct.page*** %7, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.page*, %struct.page** %115, i64 %117
  %119 = load %struct.page*, %struct.page** %118, align 8
  %120 = load i32, i32* @REQ_OP_READ, align 4
  %121 = call i64 @sync_page_io(%struct.md_rdev* %111, i32 %112, i32 %114, %struct.page* %119, i32 %120, i32 0, i32 0)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %102
  store i32 1, i32* %14, align 4
  br label %148

124:                                              ; preds = %102
  br label %125

125:                                              ; preds = %124, %90
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %130 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %131, 2
  %133 = icmp eq i32 %128, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  store i32 0, i32* %13, align 4
  br label %135

135:                                              ; preds = %134, %125
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %143 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %141, %144
  br label %146

146:                                              ; preds = %139, %136
  %147 = phi i1 [ false, %136 ], [ %145, %139 ]
  br i1 %147, label %90, label %148

148:                                              ; preds = %146, %123
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %233, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @BDEVNAME_SIZE, align 4
  %153 = zext i32 %152 to i64
  %154 = call i8* @llvm.stacksave()
  store i8* %154, i8** %16, align 8
  %155 = alloca i8, i64 %153, align 16
  store i64 %153, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %156 = load %struct.mddev*, %struct.mddev** %4, align 8
  %157 = call i32 @mdname(%struct.mddev* %156)
  %158 = load %struct.bio*, %struct.bio** %6, align 8
  %159 = call i32 @bio_devname(%struct.bio* %158, i8* %155)
  %160 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %161 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = call i32 @pr_crit_ratelimited(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %159, i64 %163)
  store i32 0, i32* %13, align 4
  br label %165

165:                                              ; preds = %198, %151
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %168 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %169, 2
  %171 = icmp slt i32 %166, %170
  br i1 %171, label %172, label %201

172:                                              ; preds = %165
  %173 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %174 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %173, i32 0, i32 1
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load %struct.md_rdev*, %struct.md_rdev** %179, align 8
  store %struct.md_rdev* %180, %struct.md_rdev** %11, align 8
  %181 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %182 = icmp ne %struct.md_rdev* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %172
  %184 = load i32, i32* @Faulty, align 4
  %185 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %186 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %185, i32 0, i32 1
  %187 = call i64 @test_bit(i32 %184, i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183, %172
  br label %198

190:                                              ; preds = %183
  %191 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @rdev_set_badblocks(%struct.md_rdev* %191, i32 %192, i32 %193, i32 0)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %190
  store i32 1, i32* %18, align 4
  br label %197

197:                                              ; preds = %196, %190
  br label %198

198:                                              ; preds = %197, %189
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %165

201:                                              ; preds = %165
  %202 = load i32, i32* %18, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %221

204:                                              ; preds = %201
  %205 = load %struct.mddev*, %struct.mddev** %4, align 8
  %206 = getelementptr inbounds %struct.mddev, %struct.mddev* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %209 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  %210 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %211 = load %struct.mddev*, %struct.mddev** %4, align 8
  %212 = getelementptr inbounds %struct.mddev, %struct.mddev* %211, i32 0, i32 0
  %213 = call i32 @set_bit(i32 %210, i32* %212)
  %214 = load %struct.mddev*, %struct.mddev** %4, align 8
  %215 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %216 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @md_done_sync(%struct.mddev* %214, i32 %217, i32 0)
  %219 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %220 = call i32 @put_buf(%struct.r1bio* %219)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %230

221:                                              ; preds = %201
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %9, align 4
  %224 = sub nsw i32 %223, %222
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %8, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %10, align 4
  store i32 2, i32* %19, align 4
  br label %230

230:                                              ; preds = %221, %204
  %231 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %19, align 4
  switch i32 %232, label %374 [
    i32 1, label %372
    i32 2, label %73
  ]

233:                                              ; preds = %148
  %234 = load i32, i32* %13, align 4
  store i32 %234, i32* %15, align 4
  br label %235

235:                                              ; preds = %297, %264, %233
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %239 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %237, %240
  br i1 %241, label %242, label %298

242:                                              ; preds = %235
  %243 = load i32, i32* %13, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %247 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = mul nsw i32 %248, 2
  store i32 %249, i32* %13, align 4
  br label %250

250:                                              ; preds = %245, %242
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %13, align 4
  %253 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %254 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %253, i32 0, i32 4
  %255 = load %struct.bio**, %struct.bio*** %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.bio*, %struct.bio** %255, i64 %257
  %259 = load %struct.bio*, %struct.bio** %258, align 8
  %260 = getelementptr inbounds %struct.bio, %struct.bio* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = load i32*, i32** @end_sync_read, align 8
  %263 = icmp ne i32* %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %250
  br label %235

265:                                              ; preds = %250
  %266 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %267 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %266, i32 0, i32 1
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %267, align 8
  %269 = load i32, i32* %13, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 0
  %273 = load %struct.md_rdev*, %struct.md_rdev** %272, align 8
  store %struct.md_rdev* %273, %struct.md_rdev** %11, align 8
  %274 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* %12, align 4
  %277 = load %struct.page**, %struct.page*** %7, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.page*, %struct.page** %277, i64 %279
  %281 = load %struct.page*, %struct.page** %280, align 8
  %282 = load i32, i32* @WRITE, align 4
  %283 = call i64 @r1_sync_page_io(%struct.md_rdev* %274, i32 %275, i32 %276, %struct.page* %281, i32 %282)
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %265
  %286 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %287 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %286, i32 0, i32 4
  %288 = load %struct.bio**, %struct.bio*** %287, align 8
  %289 = load i32, i32* %13, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.bio*, %struct.bio** %288, i64 %290
  %292 = load %struct.bio*, %struct.bio** %291, align 8
  %293 = getelementptr inbounds %struct.bio, %struct.bio* %292, i32 0, i32 1
  store i32* null, i32** %293, align 8
  %294 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %295 = load %struct.mddev*, %struct.mddev** %4, align 8
  %296 = call i32 @rdev_dec_pending(%struct.md_rdev* %294, %struct.mddev* %295)
  br label %297

297:                                              ; preds = %285, %265
  br label %235

298:                                              ; preds = %235
  %299 = load i32, i32* %15, align 4
  store i32 %299, i32* %13, align 4
  br label %300

300:                                              ; preds = %355, %329, %298
  %301 = load i32, i32* %13, align 4
  %302 = sext i32 %301 to i64
  %303 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %304 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %302, %305
  br i1 %306, label %307, label %356

307:                                              ; preds = %300
  %308 = load i32, i32* %13, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %312 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = mul nsw i32 %313, 2
  store i32 %314, i32* %13, align 4
  br label %315

315:                                              ; preds = %310, %307
  %316 = load i32, i32* %13, align 4
  %317 = add nsw i32 %316, -1
  store i32 %317, i32* %13, align 4
  %318 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %319 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %318, i32 0, i32 4
  %320 = load %struct.bio**, %struct.bio*** %319, align 8
  %321 = load i32, i32* %13, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.bio*, %struct.bio** %320, i64 %322
  %324 = load %struct.bio*, %struct.bio** %323, align 8
  %325 = getelementptr inbounds %struct.bio, %struct.bio* %324, i32 0, i32 1
  %326 = load i32*, i32** %325, align 8
  %327 = load i32*, i32** @end_sync_read, align 8
  %328 = icmp ne i32* %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %315
  br label %300

330:                                              ; preds = %315
  %331 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %332 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %331, i32 0, i32 1
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %332, align 8
  %334 = load i32, i32* %13, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 0
  %338 = load %struct.md_rdev*, %struct.md_rdev** %337, align 8
  store %struct.md_rdev* %338, %struct.md_rdev** %11, align 8
  %339 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %340 = load i32, i32* %8, align 4
  %341 = load i32, i32* %12, align 4
  %342 = load %struct.page**, %struct.page*** %7, align 8
  %343 = load i32, i32* %10, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.page*, %struct.page** %342, i64 %344
  %346 = load %struct.page*, %struct.page** %345, align 8
  %347 = load i32, i32* @READ, align 4
  %348 = call i64 @r1_sync_page_io(%struct.md_rdev* %339, i32 %340, i32 %341, %struct.page* %346, i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %330
  %351 = load i32, i32* %12, align 4
  %352 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %353 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %352, i32 0, i32 0
  %354 = call i32 @atomic_add(i32 %351, i32* %353)
  br label %355

355:                                              ; preds = %350, %330
  br label %300

356:                                              ; preds = %300
  %357 = load i32, i32* %12, align 4
  %358 = load i32, i32* %9, align 4
  %359 = sub nsw i32 %358, %357
  store i32 %359, i32* %9, align 4
  %360 = load i32, i32* %12, align 4
  %361 = load i32, i32* %8, align 4
  %362 = add nsw i32 %361, %360
  store i32 %362, i32* %8, align 4
  %363 = load i32, i32* %10, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %10, align 4
  br label %73

365:                                              ; preds = %73
  %366 = load i32, i32* @R1BIO_Uptodate, align 4
  %367 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %368 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %367, i32 0, i32 3
  %369 = call i32 @set_bit(i32 %366, i32* %368)
  %370 = load %struct.bio*, %struct.bio** %6, align 8
  %371 = getelementptr inbounds %struct.bio, %struct.bio* %370, i32 0, i32 0
  store i64 0, i64* %371, align 8
  store i32 1, i32* %2, align 4
  br label %372

372:                                              ; preds = %365, %230
  %373 = load i32, i32* %2, align 4
  ret i32 %373

374:                                              ; preds = %230
  unreachable
}

declare dso_local %struct.TYPE_4__* @get_resync_pages(%struct.bio*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i64 @sync_page_io(%struct.md_rdev*, i32, i32, %struct.page*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_crit_ratelimited(i8*, i32, i32, i64) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @bio_devname(%struct.bio*, i8*) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_done_sync(%struct.mddev*, i32, i32) #1

declare dso_local i32 @put_buf(%struct.r1bio*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @r1_sync_page_io(%struct.md_rdev*, i32, i32, %struct.page*, i32) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
