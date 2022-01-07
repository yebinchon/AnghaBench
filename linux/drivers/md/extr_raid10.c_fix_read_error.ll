; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_fix_read_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_fix_read_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32, i32, i32, i32, i32 }
%struct.mddev = type { i32 }
%struct.r10bio = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i8* }

@Faulty = common dso_local global i32 0, align 4
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"md/raid10:%s: %s: Raid device exceeded read_error threshold [cur %d:max %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"md/raid10:%s: %s: Failing raid device\0A\00", align 1
@IO_BLOCKED = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"md/raid10:%s: read correction write failed (%d sectors at %llu on %s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"md/raid10:%s: %s: failing drive\0A\00", align 1
@READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [80 x i8] c"md/raid10:%s: unable to read back corrected sectors (%d sectors at %llu on %s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"md/raid10:%s: read error corrected (%d sectors at %llu on %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*, %struct.mddev*, %struct.r10bio*)* @fix_read_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_read_error(%struct.r10conf* %0, %struct.mddev* %1, %struct.r10bio* %2) #0 {
  %4 = alloca %struct.r10conf*, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca %struct.r10bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store %struct.r10conf* %0, %struct.r10conf** %4, align 8
  store %struct.mddev* %1, %struct.mddev** %5, align 8
  store %struct.r10bio* %2, %struct.r10bio** %6, align 8
  store i32 0, i32* %7, align 4
  %26 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %27 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load %struct.mddev*, %struct.mddev** %5, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 0
  %31 = call i32 @atomic_read(i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %33 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %36 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %11, align 4
  %41 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %42 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.md_rdev*, %struct.md_rdev** %47, align 8
  store %struct.md_rdev* %48, %struct.md_rdev** %9, align 8
  %49 = load i32, i32* @Faulty, align 4
  %50 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %51 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %50, i32 0, i32 3
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %3
  br label %519

55:                                               ; preds = %3
  %56 = load %struct.mddev*, %struct.mddev** %5, align 8
  %57 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %58 = call i32 @check_decay_read_errors(%struct.mddev* %56, %struct.md_rdev* %57)
  %59 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %60 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %59, i32 0, i32 4
  %61 = call i32 @atomic_inc(i32* %60)
  %62 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %63 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %62, i32 0, i32 4
  %64 = call i32 @atomic_read(i32* %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %99

67:                                               ; preds = %55
  %68 = load i32, i32* @BDEVNAME_SIZE, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %12, align 8
  %71 = alloca i8, i64 %69, align 16
  store i64 %69, i64* %13, align 8
  %72 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %73 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @bdevname(i32 %74, i8* %71)
  %76 = load %struct.mddev*, %struct.mddev** %5, align 8
  %77 = call i32 @mdname(%struct.mddev* %76)
  %78 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %79 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %78, i32 0, i32 4
  %80 = call i32 @atomic_read(i32* %79)
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %77, i8* %71, i32 %80, i32 %81)
  %83 = load %struct.mddev*, %struct.mddev** %5, align 8
  %84 = call i32 @mdname(%struct.mddev* %83)
  %85 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %84, i8* %71)
  %86 = load %struct.mddev*, %struct.mddev** %5, align 8
  %87 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %88 = call i32 @md_error(%struct.mddev* %86, %struct.md_rdev* %87)
  %89 = load i8*, i8** @IO_BLOCKED, align 8
  %90 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %91 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %94 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i8* %89, i8** %97, align 8
  %98 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %98)
  br label %519

99:                                               ; preds = %55
  br label %100

100:                                              ; preds = %511, %99
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %519

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %14, align 4
  %105 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %106 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = ashr i32 %110, 9
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = ashr i32 %114, 9
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %113, %103
  %117 = call i32 (...) @rcu_read_lock()
  br label %118

118:                                              ; preds = %218, %116
  %119 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %120 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %119, i32 0, i32 2
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %11, align 4
  %127 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %128 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load %struct.md_rdev*, %struct.md_rdev** %133, align 8
  %135 = call %struct.md_rdev* @rcu_dereference(%struct.md_rdev* %134)
  store %struct.md_rdev* %135, %struct.md_rdev** %9, align 8
  %136 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %137 = icmp ne %struct.md_rdev* %136, null
  br i1 %137, label %138, label %198

138:                                              ; preds = %118
  %139 = load i32, i32* @In_sync, align 4
  %140 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %141 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %140, i32 0, i32 3
  %142 = call i64 @test_bit(i32 %139, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %198

144:                                              ; preds = %138
  %145 = load i32, i32* @Faulty, align 4
  %146 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %147 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %146, i32 0, i32 3
  %148 = call i64 @test_bit(i32 %145, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %198, label %150

150:                                              ; preds = %144
  %151 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %152 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %153 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %152, i32 0, i32 2
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %159, %161
  %163 = load i32, i32* %14, align 4
  %164 = call i64 @is_badblock(%struct.md_rdev* %151, i64 %162, i32 %163, i32* %18, i32* %19)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %198

166:                                              ; preds = %150
  %167 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %168 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %167, i32 0, i32 2
  %169 = call i32 @atomic_inc(i32* %168)
  %170 = call i32 (...) @rcu_read_unlock()
  %171 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %172 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %173 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %172, i32 0, i32 2
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %179, %181
  %183 = load i32, i32* %14, align 4
  %184 = shl i32 %183, 9
  %185 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %186 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @REQ_OP_READ, align 4
  %189 = call i32 @sync_page_io(%struct.md_rdev* %171, i64 %182, i32 %184, i32 %187, i32 %188, i32 0, i32 0)
  store i32 %189, i32* %16, align 4
  %190 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %191 = load %struct.mddev*, %struct.mddev** %5, align 8
  %192 = call i32 @rdev_dec_pending(%struct.md_rdev* %190, %struct.mddev* %191)
  %193 = call i32 (...) @rcu_read_lock()
  %194 = load i32, i32* %16, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %166
  br label %220

197:                                              ; preds = %166
  br label %198

198:                                              ; preds = %197, %150, %144, %138, %118
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %15, align 4
  %202 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %203 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %201, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  store i32 0, i32* %15, align 4
  br label %207

207:                                              ; preds = %206, %198
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %215 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %213, %216
  br label %218

218:                                              ; preds = %211, %208
  %219 = phi i1 [ false, %208 ], [ %217, %211 ]
  br i1 %219, label %118, label %220

220:                                              ; preds = %218, %196
  %221 = call i32 (...) @rcu_read_unlock()
  %222 = load i32, i32* %16, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %272, label %224

224:                                              ; preds = %220
  %225 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %226 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %225, i32 0, i32 2
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %229 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %20, align 4
  %234 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %235 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %234, i32 0, i32 2
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = load i32, i32* %20, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = load %struct.md_rdev*, %struct.md_rdev** %240, align 8
  store %struct.md_rdev* %241, %struct.md_rdev** %9, align 8
  %242 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %243 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %244 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %243, i32 0, i32 2
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %244, align 8
  %246 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %247 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %251, %253
  %255 = load i32, i32* %14, align 4
  %256 = call i32 @rdev_set_badblocks(%struct.md_rdev* %242, i64 %254, i32 %255, i32 0)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %224
  %259 = load %struct.mddev*, %struct.mddev** %5, align 8
  %260 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %261 = call i32 @md_error(%struct.mddev* %259, %struct.md_rdev* %260)
  %262 = load i8*, i8** @IO_BLOCKED, align 8
  %263 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %264 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %263, i32 0, i32 2
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %264, align 8
  %266 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %267 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 2
  store i8* %262, i8** %270, align 8
  br label %271

271:                                              ; preds = %258, %224
  br label %519

272:                                              ; preds = %220
  %273 = load i32, i32* %15, align 4
  store i32 %273, i32* %17, align 4
  %274 = call i32 (...) @rcu_read_lock()
  br label %275

275:                                              ; preds = %382, %379, %272
  %276 = load i32, i32* %15, align 4
  %277 = sext i32 %276 to i64
  %278 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %279 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %277, %280
  br i1 %281, label %282, label %383

282:                                              ; preds = %275
  %283 = load i32, i32* @BDEVNAME_SIZE, align 4
  %284 = zext i32 %283 to i64
  %285 = call i8* @llvm.stacksave()
  store i8* %285, i8** %21, align 8
  %286 = alloca i8, i64 %284, align 16
  store i64 %284, i64* %22, align 8
  %287 = load i32, i32* %15, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %282
  %290 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %291 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  store i32 %292, i32* %15, align 4
  br label %293

293:                                              ; preds = %289, %282
  %294 = load i32, i32* %15, align 4
  %295 = add nsw i32 %294, -1
  store i32 %295, i32* %15, align 4
  %296 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %297 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %296, i32 0, i32 2
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %297, align 8
  %299 = load i32, i32* %15, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  store i32 %303, i32* %11, align 4
  %304 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %305 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %304, i32 0, i32 2
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %305, align 8
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = load %struct.md_rdev*, %struct.md_rdev** %310, align 8
  %312 = call %struct.md_rdev* @rcu_dereference(%struct.md_rdev* %311)
  store %struct.md_rdev* %312, %struct.md_rdev** %9, align 8
  %313 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %314 = icmp ne %struct.md_rdev* %313, null
  br i1 %314, label %315, label %327

315:                                              ; preds = %293
  %316 = load i32, i32* @Faulty, align 4
  %317 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %318 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %317, i32 0, i32 3
  %319 = call i64 @test_bit(i32 %316, i32* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %327, label %321

321:                                              ; preds = %315
  %322 = load i32, i32* @In_sync, align 4
  %323 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %324 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %323, i32 0, i32 3
  %325 = call i64 @test_bit(i32 %322, i32* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %321, %315, %293
  store i32 6, i32* %23, align 4
  br label %379

328:                                              ; preds = %321
  %329 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %330 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %329, i32 0, i32 2
  %331 = call i32 @atomic_inc(i32* %330)
  %332 = call i32 (...) @rcu_read_unlock()
  %333 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %334 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %335 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %334, i32 0, i32 2
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** %335, align 8
  %337 = load i32, i32* %15, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = load i32, i32* %7, align 4
  %343 = sext i32 %342 to i64
  %344 = add nsw i64 %341, %343
  %345 = load i32, i32* %14, align 4
  %346 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %347 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @WRITE, align 4
  %350 = call i32 @r10_sync_page_io(%struct.md_rdev* %333, i64 %344, i32 %345, i32 %348, i32 %349)
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %374

352:                                              ; preds = %328
  %353 = load %struct.mddev*, %struct.mddev** %5, align 8
  %354 = call i32 @mdname(%struct.mddev* %353)
  %355 = load i32, i32* %14, align 4
  %356 = load i32, i32* %7, align 4
  %357 = sext i32 %356 to i64
  %358 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %359 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %360 = call i64 @choose_data_offset(%struct.r10bio* %358, %struct.md_rdev* %359)
  %361 = add nsw i64 %357, %360
  %362 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %363 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = call i8* @bdevname(i32 %364, i8* %286)
  %366 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %354, i32 %355, i64 %361, i8* %365)
  %367 = load %struct.mddev*, %struct.mddev** %5, align 8
  %368 = call i32 @mdname(%struct.mddev* %367)
  %369 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %370 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = call i8* @bdevname(i32 %371, i8* %286)
  %373 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %368, i8* %372)
  br label %374

374:                                              ; preds = %352, %328
  %375 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %376 = load %struct.mddev*, %struct.mddev** %5, align 8
  %377 = call i32 @rdev_dec_pending(%struct.md_rdev* %375, %struct.mddev* %376)
  %378 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %23, align 4
  br label %379

379:                                              ; preds = %374, %327
  %380 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %380)
  %381 = load i32, i32* %23, align 4
  switch i32 %381, label %520 [
    i32 0, label %382
    i32 6, label %275
  ]

382:                                              ; preds = %379
  br label %275

383:                                              ; preds = %275
  %384 = load i32, i32* %17, align 4
  store i32 %384, i32* %15, align 4
  br label %385

385:                                              ; preds = %510, %507, %383
  %386 = load i32, i32* %15, align 4
  %387 = sext i32 %386 to i64
  %388 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %389 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %387, %390
  br i1 %391, label %392, label %511

392:                                              ; preds = %385
  %393 = load i32, i32* @BDEVNAME_SIZE, align 4
  %394 = zext i32 %393 to i64
  %395 = call i8* @llvm.stacksave()
  store i8* %395, i8** %24, align 8
  %396 = alloca i8, i64 %394, align 16
  store i64 %394, i64* %25, align 8
  %397 = load i32, i32* %15, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %392
  %400 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %401 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  store i32 %402, i32* %15, align 4
  br label %403

403:                                              ; preds = %399, %392
  %404 = load i32, i32* %15, align 4
  %405 = add nsw i32 %404, -1
  store i32 %405, i32* %15, align 4
  %406 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %407 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %406, i32 0, i32 2
  %408 = load %struct.TYPE_3__*, %struct.TYPE_3__** %407, align 8
  %409 = load i32, i32* %15, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  store i32 %413, i32* %11, align 4
  %414 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %415 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %414, i32 0, i32 2
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %415, align 8
  %417 = load i32, i32* %11, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 0
  %421 = load %struct.md_rdev*, %struct.md_rdev** %420, align 8
  %422 = call %struct.md_rdev* @rcu_dereference(%struct.md_rdev* %421)
  store %struct.md_rdev* %422, %struct.md_rdev** %9, align 8
  %423 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %424 = icmp ne %struct.md_rdev* %423, null
  br i1 %424, label %425, label %437

425:                                              ; preds = %403
  %426 = load i32, i32* @Faulty, align 4
  %427 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %428 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %427, i32 0, i32 3
  %429 = call i64 @test_bit(i32 %426, i32* %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %437, label %431

431:                                              ; preds = %425
  %432 = load i32, i32* @In_sync, align 4
  %433 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %434 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %433, i32 0, i32 3
  %435 = call i64 @test_bit(i32 %432, i32* %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %438, label %437

437:                                              ; preds = %431, %425, %403
  store i32 8, i32* %23, align 4
  br label %507

438:                                              ; preds = %431
  %439 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %440 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %439, i32 0, i32 2
  %441 = call i32 @atomic_inc(i32* %440)
  %442 = call i32 (...) @rcu_read_unlock()
  %443 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %444 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %445 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %444, i32 0, i32 2
  %446 = load %struct.TYPE_3__*, %struct.TYPE_3__** %445, align 8
  %447 = load i32, i32* %15, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %446, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = load i32, i32* %7, align 4
  %453 = sext i32 %452 to i64
  %454 = add nsw i64 %451, %453
  %455 = load i32, i32* %14, align 4
  %456 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %457 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @READ, align 4
  %460 = call i32 @r10_sync_page_io(%struct.md_rdev* %443, i64 %454, i32 %455, i32 %458, i32 %459)
  switch i32 %460, label %502 [
    i32 0, label %461
    i32 1, label %483
  ]

461:                                              ; preds = %438
  %462 = load %struct.mddev*, %struct.mddev** %5, align 8
  %463 = call i32 @mdname(%struct.mddev* %462)
  %464 = load i32, i32* %14, align 4
  %465 = load i32, i32* %7, align 4
  %466 = sext i32 %465 to i64
  %467 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %468 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %469 = call i64 @choose_data_offset(%struct.r10bio* %467, %struct.md_rdev* %468)
  %470 = add nsw i64 %466, %469
  %471 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %472 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = call i8* @bdevname(i32 %473, i8* %396)
  %475 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i32 %463, i32 %464, i64 %470, i8* %474)
  %476 = load %struct.mddev*, %struct.mddev** %5, align 8
  %477 = call i32 @mdname(%struct.mddev* %476)
  %478 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %479 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = call i8* @bdevname(i32 %480, i8* %396)
  %482 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %477, i8* %481)
  br label %502

483:                                              ; preds = %438
  %484 = load %struct.mddev*, %struct.mddev** %5, align 8
  %485 = call i32 @mdname(%struct.mddev* %484)
  %486 = load i32, i32* %14, align 4
  %487 = load i32, i32* %7, align 4
  %488 = sext i32 %487 to i64
  %489 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %490 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %491 = call i64 @choose_data_offset(%struct.r10bio* %489, %struct.md_rdev* %490)
  %492 = add nsw i64 %488, %491
  %493 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %494 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = call i8* @bdevname(i32 %495, i8* %396)
  %497 = call i32 @pr_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %485, i32 %486, i64 %492, i8* %496)
  %498 = load i32, i32* %14, align 4
  %499 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %500 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %499, i32 0, i32 0
  %501 = call i32 @atomic_add(i32 %498, i32* %500)
  br label %502

502:                                              ; preds = %483, %438, %461
  %503 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %504 = load %struct.mddev*, %struct.mddev** %5, align 8
  %505 = call i32 @rdev_dec_pending(%struct.md_rdev* %503, %struct.mddev* %504)
  %506 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %23, align 4
  br label %507

507:                                              ; preds = %502, %437
  %508 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %508)
  %509 = load i32, i32* %23, align 4
  switch i32 %509, label %520 [
    i32 0, label %510
    i32 8, label %385
  ]

510:                                              ; preds = %507
  br label %385

511:                                              ; preds = %385
  %512 = call i32 (...) @rcu_read_unlock()
  %513 = load i32, i32* %14, align 4
  %514 = load i32, i32* %8, align 4
  %515 = sub nsw i32 %514, %513
  store i32 %515, i32* %8, align 4
  %516 = load i32, i32* %14, align 4
  %517 = load i32, i32* %7, align 4
  %518 = add nsw i32 %517, %516
  store i32 %518, i32* %7, align 4
  br label %100

519:                                              ; preds = %54, %67, %271, %100
  ret void

520:                                              ; preds = %507, %379
  unreachable
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @check_decay_read_errors(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i32 @atomic_inc(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @bdevname(i32, i8*) #1

declare dso_local i32 @pr_notice(i8*, i32, ...) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(%struct.md_rdev*) #1

declare dso_local i64 @is_badblock(%struct.md_rdev*, i64, i32, i32*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @sync_page_io(%struct.md_rdev*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i64, i32, i32) #1

declare dso_local i32 @r10_sync_page_io(%struct.md_rdev*, i64, i32, i32, i32) #1

declare dso_local i64 @choose_data_offset(%struct.r10bio*, %struct.md_rdev*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i64, i8*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
