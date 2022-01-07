; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_reshape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, %struct.r1conf* }
%struct.r1conf = type { i32, i32, %struct.raid1_info*, %struct.raid1_info*, i32 }
%struct.raid1_info = type { i32, %struct.md_rdev*, %struct.mddev* }
%struct.md_rdev = type { i32 }
%struct.pool_info = type { i32, %struct.md_rdev*, %struct.mddev* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NR_RAID_BIOS = common dso_local global i32 0, align 4
@r1bio_pool_alloc = common dso_local global i32 0, align 4
@rbio_pool_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"md/raid1:%s: cannot register rd%d\0A\00", align 1
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @raid1_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid1_reshape(%struct.mddev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pool_info*, align 8
  %7 = alloca %struct.raid1_info*, align 8
  %8 = alloca %struct.r1conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %16 = load %struct.mddev*, %struct.mddev** %3, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 11
  %18 = load %struct.r1conf*, %struct.r1conf** %17, align 8
  store %struct.r1conf* %18, %struct.r1conf** %8, align 8
  %19 = call i32 @memset(i32* %4, i32 0, i32 4)
  %20 = call i32 @memset(i32* %5, i32 0, i32 4)
  %21 = load %struct.mddev*, %struct.mddev** %3, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mddev*, %struct.mddev** %3, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %44, label %28

28:                                               ; preds = %1
  %29 = load %struct.mddev*, %struct.mddev** %3, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mddev*, %struct.mddev** %3, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.mddev*, %struct.mddev** %3, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mddev*, %struct.mddev** %3, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %36, %28, %1
  %45 = load %struct.mddev*, %struct.mddev** %3, align 8
  %46 = getelementptr inbounds %struct.mddev, %struct.mddev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.mddev*, %struct.mddev** %3, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.mddev*, %struct.mddev** %3, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mddev*, %struct.mddev** %3, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.mddev*, %struct.mddev** %3, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.mddev*, %struct.mddev** %3, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 5
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %282

62:                                               ; preds = %36
  %63 = load %struct.mddev*, %struct.mddev** %3, align 8
  %64 = call i32 @mddev_is_clustered(%struct.mddev* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load %struct.mddev*, %struct.mddev** %3, align 8
  %68 = call i32 @md_allow_write(%struct.mddev* %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load %struct.mddev*, %struct.mddev** %3, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mddev*, %struct.mddev** %3, align 8
  %74 = getelementptr inbounds %struct.mddev, %struct.mddev* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %79 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %103, %82
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %86 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %83
  %90 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %91 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %90, i32 0, i32 3
  %92 = load %struct.raid1_info*, %struct.raid1_info** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %92, i64 %94
  %96 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %95, i32 0, i32 1
  %97 = load %struct.md_rdev*, %struct.md_rdev** %96, align 8
  %98 = icmp ne %struct.md_rdev* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %99, %89
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %83

106:                                              ; preds = %83
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %282

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %69
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call %struct.raid1_info* @kmalloc(i32 24, i32 %115)
  %117 = bitcast %struct.raid1_info* %116 to %struct.pool_info*
  store %struct.pool_info* %117, %struct.pool_info** %6, align 8
  %118 = load %struct.pool_info*, %struct.pool_info** %6, align 8
  %119 = icmp ne %struct.pool_info* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %282

123:                                              ; preds = %114
  %124 = load %struct.mddev*, %struct.mddev** %3, align 8
  %125 = load %struct.pool_info*, %struct.pool_info** %6, align 8
  %126 = getelementptr inbounds %struct.pool_info, %struct.pool_info* %125, i32 0, i32 2
  store %struct.mddev* %124, %struct.mddev** %126, align 8
  %127 = load i32, i32* %10, align 4
  %128 = mul nsw i32 %127, 2
  %129 = load %struct.pool_info*, %struct.pool_info** %6, align 8
  %130 = getelementptr inbounds %struct.pool_info, %struct.pool_info* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @NR_RAID_BIOS, align 4
  %132 = load i32, i32* @r1bio_pool_alloc, align 4
  %133 = load i32, i32* @rbio_pool_free, align 4
  %134 = load %struct.pool_info*, %struct.pool_info** %6, align 8
  %135 = bitcast %struct.pool_info* %134 to %struct.raid1_info*
  %136 = call i32 @mempool_init(i32* %4, i32 %131, i32 %132, i32 %133, %struct.raid1_info* %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %123
  %140 = load %struct.pool_info*, %struct.pool_info** %6, align 8
  %141 = bitcast %struct.pool_info* %140 to %struct.raid1_info*
  %142 = call i32 @kfree(%struct.raid1_info* %141)
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %2, align 4
  br label %282

144:                                              ; preds = %123
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @array3_size(i32 24, i32 %145, i32 2)
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call %struct.raid1_info* @kzalloc(i32 %146, i32 %147)
  store %struct.raid1_info* %148, %struct.raid1_info** %7, align 8
  %149 = load %struct.raid1_info*, %struct.raid1_info** %7, align 8
  %150 = icmp ne %struct.raid1_info* %149, null
  br i1 %150, label %158, label %151

151:                                              ; preds = %144
  %152 = load %struct.pool_info*, %struct.pool_info** %6, align 8
  %153 = bitcast %struct.pool_info* %152 to %struct.raid1_info*
  %154 = call i32 @kfree(%struct.raid1_info* %153)
  %155 = call i32 @mempool_exit(i32* %4)
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %2, align 4
  br label %282

158:                                              ; preds = %144
  %159 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %160 = call i32 @freeze_array(%struct.r1conf* %159, i32 0)
  %161 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %162 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %4, align 4
  %165 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %166 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %167

167:                                              ; preds = %224, %158
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %170 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %227

173:                                              ; preds = %167
  %174 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %175 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %174, i32 0, i32 3
  %176 = load %struct.raid1_info*, %struct.raid1_info** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %176, i64 %178
  %180 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %179, i32 0, i32 1
  %181 = load %struct.md_rdev*, %struct.md_rdev** %180, align 8
  store %struct.md_rdev* %181, %struct.md_rdev** %15, align 8
  %182 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %183 = icmp ne %struct.md_rdev* %182, null
  br i1 %183, label %184, label %212

184:                                              ; preds = %173
  %185 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %186 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %212

190:                                              ; preds = %184
  %191 = load %struct.mddev*, %struct.mddev** %3, align 8
  %192 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %193 = call i32 @sysfs_unlink_rdev(%struct.mddev* %191, %struct.md_rdev* %192)
  %194 = load i32, i32* %13, align 4
  %195 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %196 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  %197 = load %struct.mddev*, %struct.mddev** %3, align 8
  %198 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %199 = call i32 @sysfs_unlink_rdev(%struct.mddev* %197, %struct.md_rdev* %198)
  %200 = load %struct.mddev*, %struct.mddev** %3, align 8
  %201 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %202 = call i64 @sysfs_link_rdev(%struct.mddev* %200, %struct.md_rdev* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %190
  %205 = load %struct.mddev*, %struct.mddev** %3, align 8
  %206 = call i32 @mdname(%struct.mddev* %205)
  %207 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %208 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %206, i32 %209)
  br label %211

211:                                              ; preds = %204, %190
  br label %212

212:                                              ; preds = %211, %184, %173
  %213 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %214 = icmp ne %struct.md_rdev* %213, null
  br i1 %214, label %215, label %223

215:                                              ; preds = %212
  %216 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %217 = load %struct.raid1_info*, %struct.raid1_info** %7, align 8
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %13, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %217, i64 %220
  %222 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %221, i32 0, i32 1
  store %struct.md_rdev* %216, %struct.md_rdev** %222, align 8
  br label %223

223:                                              ; preds = %215, %212
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %12, align 4
  br label %167

227:                                              ; preds = %167
  %228 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %229 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %228, i32 0, i32 3
  %230 = load %struct.raid1_info*, %struct.raid1_info** %229, align 8
  %231 = call i32 @kfree(%struct.raid1_info* %230)
  %232 = load %struct.raid1_info*, %struct.raid1_info** %7, align 8
  %233 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %234 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %233, i32 0, i32 3
  store %struct.raid1_info* %232, %struct.raid1_info** %234, align 8
  %235 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %236 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %235, i32 0, i32 2
  %237 = load %struct.raid1_info*, %struct.raid1_info** %236, align 8
  %238 = call i32 @kfree(%struct.raid1_info* %237)
  %239 = load %struct.pool_info*, %struct.pool_info** %6, align 8
  %240 = bitcast %struct.pool_info* %239 to %struct.raid1_info*
  %241 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %242 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %241, i32 0, i32 2
  store %struct.raid1_info* %240, %struct.raid1_info** %242, align 8
  %243 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %244 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %243, i32 0, i32 1
  %245 = load i64, i64* %11, align 8
  %246 = call i32 @spin_lock_irqsave(i32* %244, i64 %245)
  %247 = load i32, i32* %10, align 4
  %248 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %249 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sub nsw i32 %247, %250
  %252 = load %struct.mddev*, %struct.mddev** %3, align 8
  %253 = getelementptr inbounds %struct.mddev, %struct.mddev* %252, i32 0, i32 8
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %254, %251
  store i32 %255, i32* %253, align 8
  %256 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %257 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %256, i32 0, i32 1
  %258 = load i64, i64* %11, align 8
  %259 = call i32 @spin_unlock_irqrestore(i32* %257, i64 %258)
  %260 = load i32, i32* %10, align 4
  %261 = load %struct.mddev*, %struct.mddev** %3, align 8
  %262 = getelementptr inbounds %struct.mddev, %struct.mddev* %261, i32 0, i32 6
  store i32 %260, i32* %262, align 8
  %263 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %264 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %263, i32 0, i32 0
  store i32 %260, i32* %264, align 8
  %265 = load %struct.mddev*, %struct.mddev** %3, align 8
  %266 = getelementptr inbounds %struct.mddev, %struct.mddev* %265, i32 0, i32 7
  store i32 0, i32* %266, align 4
  %267 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %268 = call i32 @unfreeze_array(%struct.r1conf* %267)
  %269 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %270 = load %struct.mddev*, %struct.mddev** %3, align 8
  %271 = getelementptr inbounds %struct.mddev, %struct.mddev* %270, i32 0, i32 10
  %272 = call i32 @set_bit(i32 %269, i32* %271)
  %273 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %274 = load %struct.mddev*, %struct.mddev** %3, align 8
  %275 = getelementptr inbounds %struct.mddev, %struct.mddev* %274, i32 0, i32 10
  %276 = call i32 @set_bit(i32 %273, i32* %275)
  %277 = load %struct.mddev*, %struct.mddev** %3, align 8
  %278 = getelementptr inbounds %struct.mddev, %struct.mddev* %277, i32 0, i32 9
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @md_wakeup_thread(i32 %279)
  %281 = call i32 @mempool_exit(i32* %5)
  store i32 0, i32* %2, align 4
  br label %282

282:                                              ; preds = %227, %151, %139, %120, %110, %44
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mddev_is_clustered(%struct.mddev*) #1

declare dso_local i32 @md_allow_write(%struct.mddev*) #1

declare dso_local %struct.raid1_info* @kmalloc(i32, i32) #1

declare dso_local i32 @mempool_init(i32*, i32, i32, i32, %struct.raid1_info*) #1

declare dso_local i32 @kfree(%struct.raid1_info*) #1

declare dso_local %struct.raid1_info* @kzalloc(i32, i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @freeze_array(%struct.r1conf*, i32) #1

declare dso_local i32 @sysfs_unlink_rdev(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i64 @sysfs_link_rdev(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @unfreeze_array(%struct.r1conf*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
