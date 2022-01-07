; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_reshape_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_reshape_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.mddev*, i32, i32)* }
%struct.mddev = type { i32, i32, i64, i64, i64, i32, i32, i32, %struct.r10conf* }
%struct.r10conf = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_13__, i32, i64, %struct.TYPE_13__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.r10bio = type { i64, i32, i32, i64, i32, %struct.TYPE_11__*, %struct.bio*, %struct.mddev* }
%struct.TYPE_11__ = type { i64, %struct.bio*, i64, %struct.bio* }
%struct.bio = type { i64, %struct.bio*, i32, %struct.TYPE_10__, i64, i64, %struct.r10bio* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.md_rdev = type { i64, i64, i32, i32, i64 }
%struct.page = type { i32 }
%struct.mdp_superblock_1 = type { i32 }
%struct.TYPE_14__ = type { %struct.page** }

@.str = private unnamed_addr constant [15 x i8] c"sync_completed\00", align 1
@RESYNC_BLOCK_SIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@R10BIO_IsReshape = common dso_local global i32 0, align 4
@R10BIO_Previous = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RESYNC_PAGES = common dso_local global i32 0, align 4
@end_reshape_read = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@BIO_RESET_BITS = common dso_local global i64 0, align 8
@CLUSTER_RESYNC_WINDOW_SECTORS = common dso_local global i32 0, align 4
@md_cluster_ops = common dso_local global %struct.TYPE_12__* null, align 8
@Faulty = common dso_local global i32 0, align 4
@end_reshape_write = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32, i32*)* @reshape_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reshape_request(%struct.mddev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.r10conf*, align 8
  %9 = alloca %struct.r10bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.md_rdev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.bio*, align 8
  %19 = alloca %struct.bio*, align 8
  %20 = alloca %struct.bio*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.page**, align 8
  %23 = alloca %struct.mdp_superblock_1*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.bio*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.md_rdev*, align 8
  %28 = alloca %struct.page*, align 8
  %29 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %30 = load %struct.mddev*, %struct.mddev** %5, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 8
  %32 = load %struct.r10conf*, %struct.r10conf** %31, align 8
  store %struct.r10conf* %32, %struct.r10conf** %8, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %21, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %3
  %36 = load %struct.mddev*, %struct.mddev** %5, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %42 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.mddev*, %struct.mddev** %5, align 8
  %45 = call i8* @raid10_size(%struct.mddev* %44, i32 0, i32 0)
  %46 = icmp ult i8* %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.mddev*, %struct.mddev** %5, align 8
  %49 = call i8* @raid10_size(%struct.mddev* %48, i32 0, i32 0)
  %50 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %51 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %49 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %6, align 4
  br label %73

57:                                               ; preds = %40, %35
  %58 = load %struct.mddev*, %struct.mddev** %5, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %64 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ugt i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %69 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %62, %57
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.mddev*, %struct.mddev** %5, align 8
  %79 = getelementptr inbounds %struct.mddev, %struct.mddev* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.mddev*, %struct.mddev** %5, align 8
  %81 = getelementptr inbounds %struct.mddev, %struct.mddev* %80, i32 0, i32 7
  %82 = call i32 @sysfs_notify(i32* %81, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %83 = load i32*, i32** %7, align 8
  store i32 1, i32* %83, align 4
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %4, align 4
  br label %675

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %3
  %87 = load %struct.mddev*, %struct.mddev** %5, align 8
  %88 = getelementptr inbounds %struct.mddev, %struct.mddev* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %146

91:                                               ; preds = %86
  %92 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %93 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr i8, i8* %94, i64 -1
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %98 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %97, i32 0, i32 7
  %99 = call i32 @first_dev_address(i32 %96, %struct.TYPE_13__* %98)
  store i32 %99, i32* %10, align 4
  %100 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %101 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %105 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %104, i32 0, i32 10
  %106 = call i32 @last_dev_address(i32 %103, %struct.TYPE_13__* %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %109 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %91
  store i32 1, i32* %17, align 4
  br label %115

115:                                              ; preds = %114, %91
  %116 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %117 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr i8, i8* %118, i64 -1
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %123 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %127 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %125, %129
  %131 = xor i32 %130, -1
  %132 = and i32 %121, %131
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @RESYNC_BLOCK_SIZE, align 4
  %135 = sdiv i32 %134, 512
  %136 = add nsw i32 %133, %135
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %115
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32, i32* @RESYNC_BLOCK_SIZE, align 4
  %143 = sdiv i32 %142, 512
  %144 = sub nsw i32 %141, %143
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %139, %115
  br label %197

146:                                              ; preds = %86
  %147 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %148 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %152 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %151, i32 0, i32 7
  %153 = call i32 @last_dev_address(i32 %150, %struct.TYPE_13__* %152)
  store i32 %153, i32* %10, align 4
  %154 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %155 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %158 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %157, i32 0, i32 10
  %159 = call i32 @first_dev_address(i32 %156, %struct.TYPE_13__* %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %163 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %161, %164
  %166 = icmp sgt i32 %160, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %146
  store i32 1, i32* %17, align 4
  br label %168

168:                                              ; preds = %167, %146
  %169 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %170 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = ptrtoint i8* %171 to i32
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %175 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %179 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %178, i32 0, i32 10
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %177, %181
  %183 = or i32 %173, %182
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @RESYNC_BLOCK_SIZE, align 4
  %186 = sdiv i32 %185, 512
  %187 = add nsw i32 %184, %186
  %188 = load i32, i32* %12, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %168
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @RESYNC_BLOCK_SIZE, align 4
  %193 = sdiv i32 %192, 512
  %194 = add nsw i32 %191, %193
  %195 = sub nsw i32 %194, 1
  store i32 %195, i32* %12, align 4
  br label %196

196:                                              ; preds = %190, %168
  br label %197

197:                                              ; preds = %196, %145
  %198 = load i32, i32* %17, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %211, label %200

200:                                              ; preds = %197
  %201 = load i64, i64* @jiffies, align 8
  %202 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %203 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %202, i32 0, i32 9
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* @HZ, align 4
  %206 = mul nsw i32 10, %205
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %204, %207
  %209 = call i64 @time_after(i64 %201, i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %289

211:                                              ; preds = %200, %197
  %212 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %213 = call i32 @wait_barrier(%struct.r10conf* %212)
  %214 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %215 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = ptrtoint i8* %216 to i32
  %218 = load %struct.mddev*, %struct.mddev** %5, align 8
  %219 = getelementptr inbounds %struct.mddev, %struct.mddev* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load %struct.mddev*, %struct.mddev** %5, align 8
  %221 = getelementptr inbounds %struct.mddev, %struct.mddev* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %211
  %225 = load %struct.mddev*, %struct.mddev** %5, align 8
  %226 = call i8* @raid10_size(%struct.mddev* %225, i32 0, i32 0)
  %227 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %228 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = ptrtoint i8* %226 to i64
  %231 = ptrtoint i8* %229 to i64
  %232 = sub i64 %230, %231
  %233 = trunc i64 %232 to i32
  %234 = load %struct.mddev*, %struct.mddev** %5, align 8
  %235 = getelementptr inbounds %struct.mddev, %struct.mddev* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  br label %243

236:                                              ; preds = %211
  %237 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %238 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = ptrtoint i8* %239 to i32
  %241 = load %struct.mddev*, %struct.mddev** %5, align 8
  %242 = getelementptr inbounds %struct.mddev, %struct.mddev* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  br label %243

243:                                              ; preds = %236, %224
  %244 = load i64, i64* @jiffies, align 8
  %245 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %246 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %245, i32 0, i32 9
  store i64 %244, i64* %246, align 8
  %247 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %248 = load %struct.mddev*, %struct.mddev** %5, align 8
  %249 = getelementptr inbounds %struct.mddev, %struct.mddev* %248, i32 0, i32 2
  %250 = call i32 @set_bit(i32 %247, i64* %249)
  %251 = load %struct.mddev*, %struct.mddev** %5, align 8
  %252 = getelementptr inbounds %struct.mddev, %struct.mddev* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @md_wakeup_thread(i32 %253)
  %255 = load %struct.mddev*, %struct.mddev** %5, align 8
  %256 = getelementptr inbounds %struct.mddev, %struct.mddev* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.mddev*, %struct.mddev** %5, align 8
  %259 = getelementptr inbounds %struct.mddev, %struct.mddev* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %243
  %263 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %264 = load %struct.mddev*, %struct.mddev** %5, align 8
  %265 = getelementptr inbounds %struct.mddev, %struct.mddev* %264, i32 0, i32 3
  %266 = call i64 @test_bit(i32 %263, i64* %265)
  %267 = icmp ne i64 %266, 0
  br label %268

268:                                              ; preds = %262, %243
  %269 = phi i1 [ true, %243 ], [ %267, %262 ]
  %270 = zext i1 %269 to i32
  %271 = call i32 @wait_event(i32 %257, i32 %270)
  %272 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %273 = load %struct.mddev*, %struct.mddev** %5, align 8
  %274 = getelementptr inbounds %struct.mddev, %struct.mddev* %273, i32 0, i32 3
  %275 = call i64 @test_bit(i32 %272, i64* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %268
  %278 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %279 = call i32 @allow_barrier(%struct.r10conf* %278)
  %280 = load i32, i32* %21, align 4
  store i32 %280, i32* %4, align 4
  br label %675

281:                                              ; preds = %268
  %282 = load %struct.mddev*, %struct.mddev** %5, align 8
  %283 = getelementptr inbounds %struct.mddev, %struct.mddev* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %286 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 8
  %287 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %288 = call i32 @allow_barrier(%struct.r10conf* %287)
  br label %289

289:                                              ; preds = %281, %200
  %290 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %291 = call i32 @raise_barrier(%struct.r10conf* %290, i32 0)
  br label %292

292:                                              ; preds = %650, %289
  %293 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %294 = call %struct.r10bio* @raid10_alloc_init_r10buf(%struct.r10conf* %293)
  store %struct.r10bio* %294, %struct.r10bio** %9, align 8
  %295 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %296 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %295, i32 0, i32 0
  store i64 0, i64* %296, align 8
  %297 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %298 = call i32 @raise_barrier(%struct.r10conf* %297, i32 1)
  %299 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %300 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %299, i32 0, i32 4
  %301 = call i32 @atomic_set(i32* %300, i32 0)
  %302 = load %struct.mddev*, %struct.mddev** %5, align 8
  %303 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %304 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %303, i32 0, i32 7
  store %struct.mddev* %302, %struct.mddev** %304, align 8
  %305 = load i32, i32* %6, align 4
  %306 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %307 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 8
  %308 = load i32, i32* @R10BIO_IsReshape, align 4
  %309 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %310 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %309, i32 0, i32 0
  %311 = call i32 @set_bit(i32 %308, i64* %310)
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %6, align 4
  %314 = sub nsw i32 %312, %313
  %315 = add nsw i32 %314, 1
  %316 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %317 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %316, i32 0, i32 2
  store i32 %315, i32* %317, align 4
  %318 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %319 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %320 = call %struct.md_rdev* @read_balance(%struct.r10conf* %318, %struct.r10bio* %319, i32* %13)
  store %struct.md_rdev* %320, %struct.md_rdev** %16, align 8
  %321 = load i32, i32* @R10BIO_Previous, align 4
  %322 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %323 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %322, i32 0, i32 0
  %324 = call i64 @test_bit(i32 %321, i64* %323)
  %325 = icmp ne i64 %324, 0
  %326 = xor i1 %325, true
  %327 = zext i1 %326 to i32
  %328 = call i32 @BUG_ON(i32 %327)
  %329 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %330 = icmp ne %struct.md_rdev* %329, null
  br i1 %330, label %341, label %331

331:                                              ; preds = %292
  %332 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %333 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %334 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %333, i32 0, i32 8
  %335 = call i32 @mempool_free(%struct.r10bio* %332, i32* %334)
  %336 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %337 = load %struct.mddev*, %struct.mddev** %5, align 8
  %338 = getelementptr inbounds %struct.mddev, %struct.mddev* %337, i32 0, i32 3
  %339 = call i32 @set_bit(i32 %336, i64* %338)
  %340 = load i32, i32* %21, align 4
  store i32 %340, i32* %4, align 4
  br label %675

341:                                              ; preds = %292
  %342 = load i32, i32* @GFP_KERNEL, align 4
  %343 = load i32, i32* @RESYNC_PAGES, align 4
  %344 = load %struct.mddev*, %struct.mddev** %5, align 8
  %345 = call %struct.bio* @bio_alloc_mddev(i32 %342, i32 %343, %struct.mddev* %344)
  store %struct.bio* %345, %struct.bio** %20, align 8
  %346 = load %struct.bio*, %struct.bio** %20, align 8
  %347 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %348 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @bio_set_dev(%struct.bio* %346, i32 %349)
  %351 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %352 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %351, i32 0, i32 5
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %352, align 8
  %354 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %355 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %354, i32 0, i32 3
  %356 = load i64, i64* %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %361 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %360, i32 0, i32 4
  %362 = load i64, i64* %361, align 8
  %363 = add nsw i64 %359, %362
  %364 = load %struct.bio*, %struct.bio** %20, align 8
  %365 = getelementptr inbounds %struct.bio, %struct.bio* %364, i32 0, i32 3
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 0
  store i64 %363, i64* %366, align 8
  %367 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %368 = load %struct.bio*, %struct.bio** %20, align 8
  %369 = getelementptr inbounds %struct.bio, %struct.bio* %368, i32 0, i32 6
  store %struct.r10bio* %367, %struct.r10bio** %369, align 8
  %370 = load i32, i32* @end_reshape_read, align 4
  %371 = load %struct.bio*, %struct.bio** %20, align 8
  %372 = getelementptr inbounds %struct.bio, %struct.bio* %371, i32 0, i32 2
  store i32 %370, i32* %372, align 8
  %373 = load %struct.bio*, %struct.bio** %20, align 8
  %374 = load i32, i32* @REQ_OP_READ, align 4
  %375 = call i32 @bio_set_op_attrs(%struct.bio* %373, i32 %374, i32 0)
  %376 = load i64, i64* @BIO_RESET_BITS, align 8
  %377 = shl i64 -1, %376
  %378 = load %struct.bio*, %struct.bio** %20, align 8
  %379 = getelementptr inbounds %struct.bio, %struct.bio* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = and i64 %380, %377
  store i64 %381, i64* %379, align 8
  %382 = load %struct.bio*, %struct.bio** %20, align 8
  %383 = getelementptr inbounds %struct.bio, %struct.bio* %382, i32 0, i32 5
  store i64 0, i64* %383, align 8
  %384 = load %struct.bio*, %struct.bio** %20, align 8
  %385 = getelementptr inbounds %struct.bio, %struct.bio* %384, i32 0, i32 4
  store i64 0, i64* %385, align 8
  %386 = load %struct.bio*, %struct.bio** %20, align 8
  %387 = getelementptr inbounds %struct.bio, %struct.bio* %386, i32 0, i32 3
  %388 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %387, i32 0, i32 1
  store i64 0, i64* %388, align 8
  %389 = load %struct.bio*, %struct.bio** %20, align 8
  %390 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %391 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %390, i32 0, i32 6
  store %struct.bio* %389, %struct.bio** %391, align 8
  %392 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %393 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %392, i32 0, i32 5
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %393, align 8
  %395 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %396 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %395, i32 0, i32 3
  %397 = load i64, i64* %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %402 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %401, i32 0, i32 3
  store i64 %400, i64* %402, align 8
  %403 = load %struct.mddev*, %struct.mddev** %5, align 8
  %404 = call i64 @mddev_is_clustered(%struct.mddev* %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %454

406:                                              ; preds = %341
  %407 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %408 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %407, i32 0, i32 3
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* %6, align 4
  %411 = icmp sle i32 %409, %410
  br i1 %411, label %412, label %454

412:                                              ; preds = %406
  store %struct.mdp_superblock_1* null, %struct.mdp_superblock_1** %23, align 8
  store i32 0, i32* %24, align 4
  %413 = load i32, i32* %6, align 4
  %414 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %415 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %414, i32 0, i32 4
  store i32 %413, i32* %415, align 4
  %416 = load i32, i32* %6, align 4
  %417 = load i32, i32* @CLUSTER_RESYNC_WINDOW_SECTORS, align 4
  %418 = add nsw i32 %416, %417
  %419 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %420 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %419, i32 0, i32 3
  store i32 %418, i32* %420, align 8
  %421 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %422 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  %424 = call %struct.mdp_superblock_1* @page_address(i32 %423)
  store %struct.mdp_superblock_1* %424, %struct.mdp_superblock_1** %23, align 8
  %425 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %23, align 8
  %426 = icmp ne %struct.mdp_superblock_1* %425, null
  br i1 %426, label %427, label %442

427:                                              ; preds = %412
  %428 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %23, align 8
  %429 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @le64_to_cpu(i32 %430)
  store i32 %431, i32* %24, align 4
  %432 = load i32, i32* %24, align 4
  %433 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %434 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %433, i32 0, i32 4
  %435 = load i32, i32* %434, align 4
  %436 = icmp slt i32 %432, %435
  br i1 %436, label %437, label %441

437:                                              ; preds = %427
  %438 = load i32, i32* %24, align 4
  %439 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %440 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %439, i32 0, i32 4
  store i32 %438, i32* %440, align 4
  br label %441

441:                                              ; preds = %437, %427
  br label %442

442:                                              ; preds = %441, %412
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** @md_cluster_ops, align 8
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 0
  %445 = load i32 (%struct.mddev*, i32, i32)*, i32 (%struct.mddev*, i32, i32)** %444, align 8
  %446 = load %struct.mddev*, %struct.mddev** %5, align 8
  %447 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %448 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %447, i32 0, i32 4
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %451 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %450, i32 0, i32 3
  %452 = load i32, i32* %451, align 8
  %453 = call i32 %445(%struct.mddev* %446, i32 %449, i32 %452)
  br label %454

454:                                              ; preds = %442, %406, %341
  %455 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %456 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %455, i32 0, i32 7
  %457 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %458 = call i32 @__raid10_find_phys(%struct.TYPE_13__* %456, %struct.r10bio* %457)
  %459 = load %struct.bio*, %struct.bio** %20, align 8
  store %struct.bio* %459, %struct.bio** %18, align 8
  %460 = load %struct.bio*, %struct.bio** %20, align 8
  %461 = getelementptr inbounds %struct.bio, %struct.bio* %460, i32 0, i32 1
  store %struct.bio* null, %struct.bio** %461, align 8
  %462 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %15, align 4
  br label %463

463:                                              ; preds = %564, %454
  %464 = load i32, i32* %15, align 4
  %465 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %466 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %465, i32 0, i32 5
  %467 = load i32, i32* %466, align 8
  %468 = mul nsw i32 %467, 2
  %469 = icmp slt i32 %464, %468
  br i1 %469, label %470, label %567

470:                                              ; preds = %463
  %471 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %472 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %471, i32 0, i32 5
  %473 = load %struct.TYPE_11__*, %struct.TYPE_11__** %472, align 8
  %474 = load i32, i32* %15, align 4
  %475 = sdiv i32 %474, 2
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %473, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = trunc i64 %479 to i32
  store i32 %480, i32* %26, align 4
  %481 = load i32, i32* %15, align 4
  %482 = and i32 %481, 1
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %503

484:                                              ; preds = %470
  %485 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %486 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %485, i32 0, i32 6
  %487 = load %struct.TYPE_9__*, %struct.TYPE_9__** %486, align 8
  %488 = load i32, i32* %26, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %487, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = call %struct.md_rdev* @rcu_dereference(i32 %492)
  store %struct.md_rdev* %493, %struct.md_rdev** %27, align 8
  %494 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %495 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %494, i32 0, i32 5
  %496 = load %struct.TYPE_11__*, %struct.TYPE_11__** %495, align 8
  %497 = load i32, i32* %15, align 4
  %498 = sdiv i32 %497, 2
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %496, i64 %499
  %501 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %500, i32 0, i32 3
  %502 = load %struct.bio*, %struct.bio** %501, align 8
  store %struct.bio* %502, %struct.bio** %25, align 8
  br label %522

503:                                              ; preds = %470
  %504 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %505 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %504, i32 0, i32 6
  %506 = load %struct.TYPE_9__*, %struct.TYPE_9__** %505, align 8
  %507 = load i32, i32* %26, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %506, i64 %508
  %510 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = call %struct.md_rdev* @rcu_dereference(i32 %511)
  store %struct.md_rdev* %512, %struct.md_rdev** %27, align 8
  %513 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %514 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %513, i32 0, i32 5
  %515 = load %struct.TYPE_11__*, %struct.TYPE_11__** %514, align 8
  %516 = load i32, i32* %15, align 4
  %517 = sdiv i32 %516, 2
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i64 %518
  %520 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %519, i32 0, i32 1
  %521 = load %struct.bio*, %struct.bio** %520, align 8
  store %struct.bio* %521, %struct.bio** %25, align 8
  br label %522

522:                                              ; preds = %503, %484
  %523 = load %struct.md_rdev*, %struct.md_rdev** %27, align 8
  %524 = icmp ne %struct.md_rdev* %523, null
  br i1 %524, label %525, label %531

525:                                              ; preds = %522
  %526 = load i32, i32* @Faulty, align 4
  %527 = load %struct.md_rdev*, %struct.md_rdev** %27, align 8
  %528 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %527, i32 0, i32 0
  %529 = call i64 @test_bit(i32 %526, i64* %528)
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %525, %522
  br label %564

532:                                              ; preds = %525
  %533 = load %struct.bio*, %struct.bio** %25, align 8
  %534 = load %struct.md_rdev*, %struct.md_rdev** %27, align 8
  %535 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %534, i32 0, i32 2
  %536 = load i32, i32* %535, align 8
  %537 = call i32 @bio_set_dev(%struct.bio* %533, i32 %536)
  %538 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %539 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %538, i32 0, i32 5
  %540 = load %struct.TYPE_11__*, %struct.TYPE_11__** %539, align 8
  %541 = load i32, i32* %15, align 4
  %542 = sdiv i32 %541, 2
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %540, i64 %543
  %545 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %544, i32 0, i32 2
  %546 = load i64, i64* %545, align 8
  %547 = load %struct.md_rdev*, %struct.md_rdev** %27, align 8
  %548 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %547, i32 0, i32 1
  %549 = load i64, i64* %548, align 8
  %550 = add nsw i64 %546, %549
  %551 = load %struct.bio*, %struct.bio** %25, align 8
  %552 = getelementptr inbounds %struct.bio, %struct.bio* %551, i32 0, i32 3
  %553 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %552, i32 0, i32 0
  store i64 %550, i64* %553, align 8
  %554 = load i32, i32* @end_reshape_write, align 4
  %555 = load %struct.bio*, %struct.bio** %25, align 8
  %556 = getelementptr inbounds %struct.bio, %struct.bio* %555, i32 0, i32 2
  store i32 %554, i32* %556, align 8
  %557 = load %struct.bio*, %struct.bio** %25, align 8
  %558 = load i32, i32* @REQ_OP_WRITE, align 4
  %559 = call i32 @bio_set_op_attrs(%struct.bio* %557, i32 %558, i32 0)
  %560 = load %struct.bio*, %struct.bio** %18, align 8
  %561 = load %struct.bio*, %struct.bio** %25, align 8
  %562 = getelementptr inbounds %struct.bio, %struct.bio* %561, i32 0, i32 1
  store %struct.bio* %560, %struct.bio** %562, align 8
  %563 = load %struct.bio*, %struct.bio** %25, align 8
  store %struct.bio* %563, %struct.bio** %18, align 8
  br label %564

564:                                              ; preds = %532, %531
  %565 = load i32, i32* %15, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %15, align 4
  br label %463

567:                                              ; preds = %463
  store i32 0, i32* %14, align 4
  %568 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %569 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %568, i32 0, i32 5
  %570 = load %struct.TYPE_11__*, %struct.TYPE_11__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %570, i64 0
  %572 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %571, i32 0, i32 1
  %573 = load %struct.bio*, %struct.bio** %572, align 8
  %574 = call %struct.TYPE_14__* @get_resync_pages(%struct.bio* %573)
  %575 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %574, i32 0, i32 0
  %576 = load %struct.page**, %struct.page*** %575, align 8
  store %struct.page** %576, %struct.page*** %22, align 8
  store i32 0, i32* %15, align 4
  br label %577

577:                                              ; preds = %622, %567
  %578 = load i32, i32* %15, align 4
  %579 = load i32, i32* %13, align 4
  %580 = icmp slt i32 %578, %579
  br i1 %580, label %581, label %627

581:                                              ; preds = %577
  %582 = load %struct.page**, %struct.page*** %22, align 8
  %583 = load i32, i32* %15, align 4
  %584 = load i32, i32* @PAGE_SIZE, align 4
  %585 = ashr i32 %584, 9
  %586 = sdiv i32 %583, %585
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.page*, %struct.page** %582, i64 %587
  %589 = load %struct.page*, %struct.page** %588, align 8
  store %struct.page* %589, %struct.page** %28, align 8
  %590 = load i32, i32* %13, align 4
  %591 = load i32, i32* %15, align 4
  %592 = sub nsw i32 %590, %591
  %593 = shl i32 %592, 9
  store i32 %593, i32* %29, align 4
  %594 = load i32, i32* %29, align 4
  %595 = load i32, i32* @PAGE_SIZE, align 4
  %596 = icmp sgt i32 %594, %595
  br i1 %596, label %597, label %599

597:                                              ; preds = %581
  %598 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %598, i32* %29, align 4
  br label %599

599:                                              ; preds = %597, %581
  %600 = load %struct.bio*, %struct.bio** %18, align 8
  store %struct.bio* %600, %struct.bio** %19, align 8
  br label %601

601:                                              ; preds = %609, %599
  %602 = load %struct.bio*, %struct.bio** %19, align 8
  %603 = icmp ne %struct.bio* %602, null
  br i1 %603, label %604, label %613

604:                                              ; preds = %601
  %605 = load %struct.bio*, %struct.bio** %19, align 8
  %606 = load %struct.page*, %struct.page** %28, align 8
  %607 = load i32, i32* %29, align 4
  %608 = call i32 @bio_add_page(%struct.bio* %605, %struct.page* %606, i32 %607, i32 0)
  br label %609

609:                                              ; preds = %604
  %610 = load %struct.bio*, %struct.bio** %19, align 8
  %611 = getelementptr inbounds %struct.bio, %struct.bio* %610, i32 0, i32 1
  %612 = load %struct.bio*, %struct.bio** %611, align 8
  store %struct.bio* %612, %struct.bio** %19, align 8
  br label %601

613:                                              ; preds = %601
  %614 = load i32, i32* %29, align 4
  %615 = ashr i32 %614, 9
  %616 = load i32, i32* %6, align 4
  %617 = add nsw i32 %616, %615
  store i32 %617, i32* %6, align 4
  %618 = load i32, i32* %29, align 4
  %619 = ashr i32 %618, 9
  %620 = load i32, i32* %14, align 4
  %621 = add nsw i32 %620, %619
  store i32 %621, i32* %14, align 4
  br label %622

622:                                              ; preds = %613
  %623 = load i32, i32* @PAGE_SIZE, align 4
  %624 = ashr i32 %623, 9
  %625 = load i32, i32* %15, align 4
  %626 = add nsw i32 %625, %624
  store i32 %626, i32* %15, align 4
  br label %577

627:                                              ; preds = %577
  %628 = call i32 (...) @rcu_read_unlock()
  %629 = load i32, i32* %14, align 4
  %630 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %631 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %630, i32 0, i32 2
  store i32 %629, i32* %631, align 4
  %632 = load %struct.bio*, %struct.bio** %20, align 8
  %633 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %634 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %633, i32 0, i32 2
  %635 = load i32, i32* %634, align 4
  %636 = call i32 @md_sync_acct_bio(%struct.bio* %632, i32 %635)
  %637 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  %638 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %637, i32 0, i32 4
  %639 = call i32 @atomic_inc(i32* %638)
  %640 = load %struct.bio*, %struct.bio** %20, align 8
  %641 = getelementptr inbounds %struct.bio, %struct.bio* %640, i32 0, i32 1
  store %struct.bio* null, %struct.bio** %641, align 8
  %642 = load %struct.bio*, %struct.bio** %20, align 8
  %643 = call i32 @generic_make_request(%struct.bio* %642)
  %644 = load i32, i32* %14, align 4
  %645 = load i32, i32* %21, align 4
  %646 = add nsw i32 %645, %644
  store i32 %646, i32* %21, align 4
  %647 = load i32, i32* %6, align 4
  %648 = load i32, i32* %12, align 4
  %649 = icmp sle i32 %647, %648
  br i1 %649, label %650, label %651

650:                                              ; preds = %627
  br label %292

651:                                              ; preds = %627
  %652 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %653 = call i32 @lower_barrier(%struct.r10conf* %652)
  %654 = load %struct.mddev*, %struct.mddev** %5, align 8
  %655 = getelementptr inbounds %struct.mddev, %struct.mddev* %654, i32 0, i32 4
  %656 = load i64, i64* %655, align 8
  %657 = icmp ne i64 %656, 0
  br i1 %657, label %658, label %666

658:                                              ; preds = %651
  %659 = load i32, i32* %21, align 4
  %660 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %661 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %660, i32 0, i32 0
  %662 = load i8*, i8** %661, align 8
  %663 = sext i32 %659 to i64
  %664 = sub i64 0, %663
  %665 = getelementptr i8, i8* %662, i64 %664
  store i8* %665, i8** %661, align 8
  br label %673

666:                                              ; preds = %651
  %667 = load i32, i32* %21, align 4
  %668 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %669 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %668, i32 0, i32 0
  %670 = load i8*, i8** %669, align 8
  %671 = sext i32 %667 to i64
  %672 = getelementptr i8, i8* %670, i64 %671
  store i8* %672, i8** %669, align 8
  br label %673

673:                                              ; preds = %666, %658
  %674 = load i32, i32* %21, align 4
  store i32 %674, i32* %4, align 4
  br label %675

675:                                              ; preds = %673, %331, %277, %76
  %676 = load i32, i32* %4, align 4
  ret i32 %676
}

declare dso_local i8* @raid10_size(%struct.mddev*, i32, i32) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @first_dev_address(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @last_dev_address(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @wait_barrier(%struct.r10conf*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @allow_barrier(%struct.r10conf*) #1

declare dso_local i32 @raise_barrier(%struct.r10conf*, i32) #1

declare dso_local %struct.r10bio* @raid10_alloc_init_r10buf(%struct.r10conf*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.md_rdev* @read_balance(%struct.r10conf*, %struct.r10bio*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mempool_free(%struct.r10bio*, i32*) #1

declare dso_local %struct.bio* @bio_alloc_mddev(i32, i32, %struct.mddev*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i64 @mddev_is_clustered(%struct.mddev*) #1

declare dso_local %struct.mdp_superblock_1* @page_address(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @__raid10_find_phys(%struct.TYPE_13__*, %struct.r10bio*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_14__* @get_resync_pages(%struct.bio*) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @md_sync_acct_bio(%struct.bio*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @lower_barrier(%struct.r10conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
