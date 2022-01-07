; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_end_write_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_end_write_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.TYPE_6__, i64, %struct.r1bio* }
%struct.TYPE_6__ = type { i64 }
%struct.r1bio = type { i32**, %struct.bio*, i32, i32, i32, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.r1conf* }
%struct.r1conf = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32 }

@R1BIO_BehindIO = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@WriteErrorSeen = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@FailFast = common dso_local global i32 0, align 4
@MD_FAILFAST = common dso_local global i32 0, align 4
@WriteMostly = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@R1BIO_WriteError = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@R1BIO_Uptodate = common dso_local global i32 0, align 4
@IO_MADE_GOOD = common dso_local global i32* null, align 8
@R1BIO_MadeGood = common dso_local global i32 0, align 4
@WBCollisionCheck = common dso_local global i32 0, align 4
@R1BIO_Returned = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"raid1: behind end write sectors %llu-%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @raid1_end_write_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid1_end_write_request(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.r1bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r1conf*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.md_rdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 3
  %17 = load %struct.r1bio*, %struct.r1bio** %16, align 8
  store %struct.r1bio* %17, %struct.r1bio** %3, align 8
  %18 = load i32, i32* @R1BIO_BehindIO, align 4
  %19 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %20 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %19, i32 0, i32 2
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %23 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %22, i32 0, i32 7
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.r1conf*, %struct.r1conf** %25, align 8
  store %struct.r1conf* %26, %struct.r1conf** %5, align 8
  store %struct.bio* null, %struct.bio** %6, align 8
  %27 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %28 = load %struct.bio*, %struct.bio** %2, align 8
  %29 = call i32 @find_bio_disk(%struct.r1bio* %27, %struct.bio* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %31 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.md_rdev*, %struct.md_rdev** %36, align 8
  store %struct.md_rdev* %37, %struct.md_rdev** %8, align 8
  %38 = load %struct.bio*, %struct.bio** %2, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %1
  %43 = load %struct.bio*, %struct.bio** %2, align 8
  %44 = call i64 @bio_op(%struct.bio* %43)
  %45 = load i64, i64* @REQ_OP_DISCARD, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %42, %1
  %48 = phi i1 [ false, %1 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load %struct.bio*, %struct.bio** %2, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %119

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %119, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @WriteErrorSeen, align 4
  %59 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %60 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %59, i32 0, i32 0
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load i32, i32* @WantReplacement, align 4
  %63 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %64 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %63, i32 0, i32 0
  %65 = call i32 @test_and_set_bit(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %69 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %70 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @set_bit(i32 %68, i32* %72)
  br label %74

74:                                               ; preds = %67, %57
  %75 = load i32, i32* @FailFast, align 4
  %76 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %77 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %76, i32 0, i32 0
  %78 = call i32 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.bio*, %struct.bio** %2, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MD_FAILFAST, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load i32, i32* @WriteMostly, align 4
  %89 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %90 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %89, i32 0, i32 0
  %91 = call i32 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %95 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %94, i32 0, i32 7
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %98 = call i32 @md_error(%struct.TYPE_8__* %96, %struct.md_rdev* %97)
  br label %99

99:                                               ; preds = %93, %87, %80, %74
  %100 = load i32, i32* @Faulty, align 4
  %101 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %102 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %101, i32 0, i32 0
  %103 = call i32 @test_bit(i32 %100, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @R1BIO_WriteError, align 4
  %107 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %108 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %107, i32 0, i32 2
  %109 = call i32 @set_bit(i32 %106, i32* %108)
  br label %118

110:                                              ; preds = %99
  %111 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %112 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %111, i32 0, i32 0
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  store i32* null, i32** %116, align 8
  %117 = load %struct.bio*, %struct.bio** %2, align 8
  store %struct.bio* %117, %struct.bio** %6, align 8
  br label %118

118:                                              ; preds = %110, %105
  br label %169

119:                                              ; preds = %54, %47
  %120 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %121 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %120, i32 0, i32 0
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  store i32* null, i32** %125, align 8
  %126 = load %struct.bio*, %struct.bio** %2, align 8
  store %struct.bio* %126, %struct.bio** %6, align 8
  %127 = load i32, i32* @In_sync, align 4
  %128 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %129 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %128, i32 0, i32 0
  %130 = call i32 @test_bit(i32 %127, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %119
  %133 = load i32, i32* @Faulty, align 4
  %134 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %135 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %134, i32 0, i32 0
  %136 = call i32 @test_bit(i32 %133, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %132
  %139 = load i32, i32* @R1BIO_Uptodate, align 4
  %140 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %141 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %140, i32 0, i32 2
  %142 = call i32 @set_bit(i32 %139, i32* %141)
  br label %143

143:                                              ; preds = %138, %132, %119
  %144 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %145 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %146 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %149 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @is_badblock(%struct.md_rdev* %144, i64 %147, i64 %150, i64* %10, i32* %11)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %143
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %153
  %157 = load i32*, i32** @IO_MADE_GOOD, align 8
  %158 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %159 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %158, i32 0, i32 0
  %160 = load i32**, i32*** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  store i32* %157, i32** %163, align 8
  %164 = load i32, i32* @R1BIO_MadeGood, align 4
  %165 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %166 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %165, i32 0, i32 2
  %167 = call i32 @set_bit(i32 %164, i32* %166)
  br label %168

168:                                              ; preds = %156, %153, %143
  br label %169

169:                                              ; preds = %168, %118
  %170 = load i32, i32* %4, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %240

172:                                              ; preds = %169
  %173 = load i32, i32* @WBCollisionCheck, align 4
  %174 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %175 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %174, i32 0, i32 0
  %176 = call i32 @test_bit(i32 %173, i32* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %172
  %179 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %180 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %12, align 8
  %182 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %183 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %182, i32 0, i32 6
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %186 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %184, %187
  store i64 %188, i64* %13, align 8
  %189 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %190 = load i64, i64* %12, align 8
  %191 = load i64, i64* %13, align 8
  %192 = call i32 @remove_wb(%struct.md_rdev* %189, i64 %190, i64 %191)
  br label %193

193:                                              ; preds = %178, %172
  %194 = load i32, i32* @WriteMostly, align 4
  %195 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %196 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %195, i32 0, i32 0
  %197 = call i32 @test_bit(i32 %194, i32* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %201 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %200, i32 0, i32 4
  %202 = call i32 @atomic_dec(i32* %201)
  br label %203

203:                                              ; preds = %199, %193
  %204 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %205 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %204, i32 0, i32 4
  %206 = call i32 @atomic_read(i32* %205)
  %207 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %208 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %207, i32 0, i32 3
  %209 = call i32 @atomic_read(i32* %208)
  %210 = sub nsw i32 %209, 1
  %211 = icmp sge i32 %206, %210
  br i1 %211, label %212, label %239

212:                                              ; preds = %203
  %213 = load i32, i32* @R1BIO_Uptodate, align 4
  %214 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %215 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %214, i32 0, i32 2
  %216 = call i32 @test_bit(i32 %213, i32* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %239

218:                                              ; preds = %212
  %219 = load i32, i32* @R1BIO_Returned, align 4
  %220 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %221 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %220, i32 0, i32 2
  %222 = call i32 @test_and_set_bit(i32 %219, i32* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %238, label %224

224:                                              ; preds = %218
  %225 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %226 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %225, i32 0, i32 1
  %227 = load %struct.bio*, %struct.bio** %226, align 8
  store %struct.bio* %227, %struct.bio** %14, align 8
  %228 = load %struct.bio*, %struct.bio** %14, align 8
  %229 = getelementptr inbounds %struct.bio, %struct.bio* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.bio*, %struct.bio** %14, align 8
  %233 = call i64 @bio_end_sector(%struct.bio* %232)
  %234 = sub i64 %233, 1
  %235 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %231, i64 %234)
  %236 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %237 = call i32 @call_bio_endio(%struct.r1bio* %236)
  br label %238

238:                                              ; preds = %224, %218
  br label %239

239:                                              ; preds = %238, %212, %203
  br label %240

240:                                              ; preds = %239, %169
  %241 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %242 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %241, i32 0, i32 0
  %243 = load i32**, i32*** %242, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32*, i32** %243, i64 %245
  %247 = load i32*, i32** %246, align 8
  %248 = icmp eq i32* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %240
  %250 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %251 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %252 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %251, i32 0, i32 0
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %252, align 8
  %254 = call i32 @rdev_dec_pending(%struct.md_rdev* %250, %struct.TYPE_7__* %253)
  br label %255

255:                                              ; preds = %249, %240
  %256 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %257 = call i32 @r1_bio_write_done(%struct.r1bio* %256)
  %258 = load %struct.bio*, %struct.bio** %6, align 8
  %259 = icmp ne %struct.bio* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load %struct.bio*, %struct.bio** %6, align 8
  %262 = call i32 @bio_put(%struct.bio* %261)
  br label %263

263:                                              ; preds = %260, %255
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @find_bio_disk(%struct.r1bio*, %struct.bio*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @md_error(%struct.TYPE_8__*, %struct.md_rdev*) #1

declare dso_local i64 @is_badblock(%struct.md_rdev*, i64, i64, i64*, i32*) #1

declare dso_local i32 @remove_wb(%struct.md_rdev*, i64, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i64 @bio_end_sector(%struct.bio*) #1

declare dso_local i32 @call_bio_endio(%struct.r1bio*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.TYPE_7__*) #1

declare dso_local i32 @r1_bio_write_done(%struct.r1bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
