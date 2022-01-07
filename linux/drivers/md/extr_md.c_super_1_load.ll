; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_super_1_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_super_1_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i64, %struct.TYPE_7__, %struct.TYPE_10__, i64, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i8* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.mdp_superblock_1 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i64*, %struct.TYPE_6__, i32, i32, i64*, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MD_SB_MAGIC = common dso_local global i32 0, align 4
@MD_FEATURE_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"md: invalid superblock checksum on %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"md: data_size too small on %s\0A\00", align 1
@MD_FEATURE_RESHAPE_ACTIVE = common dso_local global i32 0, align 4
@MD_FEATURE_NEW_OFFSET = common dso_local global i32 0, align 4
@LEVEL_MULTIPATH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MD_FEATURE_BAD_BLOCKS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MD_FEATURE_PPL = common dso_local global i32 0, align 4
@MD_FEATURE_MULTIPLE_PPLS = common dso_local global i32 0, align 4
@MD_FEATURE_RAID0_LAYOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"md: %s has strangely different superblock to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, %struct.md_rdev*, i32)* @super_1_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_1_load(%struct.md_rdev* %0, %struct.md_rdev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.md_rdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdp_superblock_1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.mdp_superblock_1*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %5, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %6, align 8
  store i32 %2, i32* %7, align 4
  %28 = load i32, i32* @BDEVNAME_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %12, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %32 = load i32, i32* @BDEVNAME_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %14, align 8
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %50 [
    i32 0, label %36
    i32 1, label %48
    i32 2, label %49
  ]

36:                                               ; preds = %3
  %37 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %38 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %37, i32 0, i32 7
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @i_size_read(i32 %41)
  %43 = ashr i32 %42, 9
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %44, 16
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, -8
  store i32 %47, i32* %10, align 4
  br label %53

48:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %53

49:                                               ; preds = %3
  store i32 8, i32* %10, align 4
  br label %53

50:                                               ; preds = %3
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

53:                                               ; preds = %49, %48, %36
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %56 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %58 = call i32 @read_disk_sb(%struct.md_rdev* %57, i32 4096)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

63:                                               ; preds = %53
  %64 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %65 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %64, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.mdp_superblock_1* @page_address(i64 %66)
  store %struct.mdp_superblock_1* %67, %struct.mdp_superblock_1** %8, align 8
  %68 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %69 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @MD_SB_MAGIC, align 4
  %72 = call i64 @cpu_to_le32(i32 %71)
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %104, label %74

74:                                               ; preds = %63
  %75 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %76 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @cpu_to_le32(i32 1)
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %104, label %80

80:                                               ; preds = %74
  %81 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %82 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @le32_to_cpu(i64 %83)
  %85 = icmp sgt i32 %84, 1920
  br i1 %85, label %104, label %86

86:                                               ; preds = %80
  %87 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %88 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %87, i32 0, i32 21
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @le64_to_cpu(i32 %89)
  %91 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %92 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %86
  %96 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %97 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @le32_to_cpu(i64 %98)
  %100 = load i32, i32* @MD_FEATURE_ALL, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95, %86, %80, %74, %63
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

107:                                              ; preds = %95
  %108 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %109 = call i64 @calc_sb_1_csum(%struct.mdp_superblock_1* %108)
  %110 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %111 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %107
  %115 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %116 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %115, i32 0, i32 7
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = call i32 @bdevname(%struct.TYPE_9__* %117, i8* %31)
  %119 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

122:                                              ; preds = %107
  %123 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %124 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %123, i32 0, i32 13
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @le64_to_cpu(i32 %125)
  %127 = icmp slt i32 %126, 10
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %130 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %129, i32 0, i32 7
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = call i32 @bdevname(%struct.TYPE_9__* %131, i8* %31)
  %133 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

136:                                              ; preds = %122
  %137 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %138 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %137, i32 0, i32 20
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %158, label %141

141:                                              ; preds = %136
  %142 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %143 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %142, i32 0, i32 19
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %158, label %148

148:                                              ; preds = %141
  %149 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %150 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %149, i32 0, i32 19
  %151 = load i64*, i64** %150, align 8
  %152 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %153 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %152, i32 0, i32 19
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 1
  %156 = call i64 @memcmp(i64* %151, i64* %155, i32 0)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %148, %141, %136
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

161:                                              ; preds = %148
  %162 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %163 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %162, i32 0, i32 1
  store i32 65535, i32* %163, align 4
  %164 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %165 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %164, i32 0, i32 18
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @le64_to_cpu(i32 %166)
  %168 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %169 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %171 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %174 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %176 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @le32_to_cpu(i64 %177)
  %179 = load i32, i32* @MD_FEATURE_RESHAPE_ACTIVE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %199

182:                                              ; preds = %161
  %183 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %184 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @le32_to_cpu(i64 %185)
  %187 = load i32, i32* @MD_FEATURE_NEW_OFFSET, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %182
  %191 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %192 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @le32_to_cpu(i64 %193)
  %195 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %196 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %190, %182, %161
  %200 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %201 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %200, i32 0, i32 12
  %202 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %203 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @le32_to_cpu(i64 %204)
  %206 = call i32 @atomic_set(i32* %201, i32 %205)
  %207 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %208 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @le32_to_cpu(i64 %209)
  %211 = mul nsw i32 %210, 2
  %212 = add nsw i32 %211, 256
  %213 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %214 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 8
  %215 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %216 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %215, i32 0, i32 7
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @queue_logical_block_size(i32 %221)
  %223 = sub nsw i32 %222, 1
  store i32 %223, i32* %15, align 4
  %224 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %225 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %15, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %199
  %231 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %232 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %15, align 4
  %235 = or i32 %233, %234
  %236 = add nsw i32 %235, 1
  %237 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %238 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 8
  br label %239

239:                                              ; preds = %230, %199
  %240 = load i32, i32* %7, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %239
  %243 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %244 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %10, align 4
  %247 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %248 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = sdiv i32 %249, 512
  %251 = add nsw i32 %246, %250
  %252 = icmp slt i32 %245, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %242
  %254 = load i32, i32* @EINVAL, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

256:                                              ; preds = %242, %239
  %257 = load i32, i32* %7, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %273

259:                                              ; preds = %256
  %260 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %261 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %10, align 4
  %264 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %265 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = sdiv i32 %266, 512
  %268 = add nsw i32 %263, %267
  %269 = icmp slt i32 %262, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %259
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

273:                                              ; preds = %259, %256
  %274 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %275 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %274, i32 0, i32 7
  %276 = load i64, i64* %275, align 8
  %277 = load i32, i32* @LEVEL_MULTIPATH, align 4
  %278 = call i64 @cpu_to_le32(i32 %277)
  %279 = icmp eq i64 %276, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %282 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %281, i32 0, i32 5
  store i32 -1, i32* %282, align 4
  br label %290

283:                                              ; preds = %273
  %284 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %285 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %284, i32 0, i32 8
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @le32_to_cpu(i64 %286)
  %288 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %289 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %288, i32 0, i32 5
  store i32 %287, i32* %289, align 4
  br label %290

290:                                              ; preds = %283, %280
  %291 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %292 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %291, i32 0, i32 11
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %308, label %295

295:                                              ; preds = %290
  %296 = load i32, i32* @GFP_KERNEL, align 4
  %297 = call i64 @alloc_page(i32 %296)
  %298 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %299 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %298, i32 0, i32 11
  store i64 %297, i64* %299, align 8
  %300 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %301 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %300, i32 0, i32 11
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %307, label %304

304:                                              ; preds = %295
  %305 = load i32, i32* @ENOMEM, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

307:                                              ; preds = %295
  br label %308

308:                                              ; preds = %307, %290
  %309 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %310 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %309, i32 0, i32 3
  %311 = load i64, i64* %310, align 8
  %312 = call i32 @le32_to_cpu(i64 %311)
  %313 = load i32, i32* @MD_FEATURE_BAD_BLOCKS, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %418

316:                                              ; preds = %308
  %317 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %318 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %317, i32 0, i32 10
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %418

322:                                              ; preds = %316
  %323 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %324 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %323, i32 0, i32 17
  %325 = load i32, i32* %324, align 8
  %326 = call i8* @le16_to_cpu(i32 %325)
  %327 = ptrtoint i8* %326 to i32
  store i32 %327, i32* %21, align 4
  %328 = load i32, i32* %21, align 4
  %329 = load i32, i32* @PAGE_SIZE, align 4
  %330 = sdiv i32 %329, 512
  %331 = icmp sgt i32 %328, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %322
  %333 = load i32, i32* @EINVAL, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

335:                                              ; preds = %322
  %336 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %337 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %336, i32 0, i32 9
  %338 = load i64, i64* %337, align 8
  %339 = call i32 @le32_to_cpu(i64 %338)
  store i32 %339, i32* %17, align 4
  %340 = load i32, i32* %17, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %335
  %343 = load i32, i32* @EINVAL, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

345:                                              ; preds = %335
  %346 = load i32, i32* %17, align 4
  %347 = sext i32 %346 to i64
  %348 = trunc i64 %347 to i32
  store i32 %348, i32* %18, align 4
  %349 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %350 = load i32, i32* %18, align 4
  %351 = load i32, i32* %21, align 4
  %352 = shl i32 %351, 9
  %353 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %354 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %353, i32 0, i32 11
  %355 = load i64, i64* %354, align 8
  %356 = load i32, i32* @REQ_OP_READ, align 4
  %357 = call i32 @sync_page_io(%struct.md_rdev* %349, i32 %350, i32 %352, i64 %355, i32 %356, i32 0, i32 1)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %362, label %359

359:                                              ; preds = %345
  %360 = load i32, i32* @EIO, align 4
  %361 = sub nsw i32 0, %360
  store i32 %361, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

362:                                              ; preds = %345
  %363 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %364 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %363, i32 0, i32 11
  %365 = load i64, i64* %364, align 8
  %366 = call %struct.mdp_superblock_1* @page_address(i64 %365)
  %367 = bitcast %struct.mdp_superblock_1* %366 to i32*
  store i32* %367, i32** %19, align 8
  %368 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %369 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %368, i32 0, i32 10
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %372 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %371, i32 0, i32 10
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 1
  store i32 %370, i32* %373, align 8
  store i32 0, i32* %20, align 4
  br label %374

374:                                              ; preds = %412, %362
  %375 = load i32, i32* %20, align 4
  %376 = load i32, i32* %21, align 4
  %377 = shl i32 %376, 6
  %378 = icmp slt i32 %375, %377
  br i1 %378, label %379, label %417

379:                                              ; preds = %374
  %380 = load i32*, i32** %19, align 8
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @le64_to_cpu(i32 %381)
  store i32 %382, i32* %22, align 4
  %383 = load i32, i32* %22, align 4
  %384 = and i32 %383, 1023
  store i32 %384, i32* %23, align 4
  %385 = load i32, i32* %22, align 4
  %386 = ashr i32 %385, 10
  store i32 %386, i32* %24, align 4
  %387 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %388 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %387, i32 0, i32 10
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* %24, align 4
  %391 = shl i32 %390, %389
  store i32 %391, i32* %24, align 4
  %392 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %393 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %392, i32 0, i32 10
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* %23, align 4
  %396 = shl i32 %395, %394
  store i32 %396, i32* %23, align 4
  %397 = load i32, i32* %22, align 4
  %398 = add nsw i32 %397, 1
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %379
  br label %417

401:                                              ; preds = %379
  %402 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %403 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %402, i32 0, i32 10
  %404 = load i32, i32* %24, align 4
  %405 = load i32, i32* %23, align 4
  %406 = call i64 @badblocks_set(%struct.TYPE_10__* %403, i32 %404, i32 %405, i32 1)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %401
  %409 = load i32, i32* @EINVAL, align 4
  %410 = sub nsw i32 0, %409
  store i32 %410, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

411:                                              ; preds = %401
  br label %412

412:                                              ; preds = %411
  %413 = load i32, i32* %20, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %20, align 4
  %415 = load i32*, i32** %19, align 8
  %416 = getelementptr inbounds i32, i32* %415, i32 1
  store i32* %416, i32** %19, align 8
  br label %374

417:                                              ; preds = %400, %374
  br label %428

418:                                              ; preds = %316, %308
  %419 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %420 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %419, i32 0, i32 9
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %418
  %424 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %425 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %424, i32 0, i32 10
  %426 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %425, i32 0, i32 1
  store i32 0, i32* %426, align 8
  br label %427

427:                                              ; preds = %423, %418
  br label %428

428:                                              ; preds = %427, %417
  %429 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %430 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %429, i32 0, i32 3
  %431 = load i64, i64* %430, align 8
  %432 = call i32 @le32_to_cpu(i64 %431)
  %433 = load i32, i32* @MD_FEATURE_PPL, align 4
  %434 = load i32, i32* @MD_FEATURE_MULTIPLE_PPLS, align 4
  %435 = or i32 %433, %434
  %436 = and i32 %432, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %468

438:                                              ; preds = %428
  %439 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %440 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %439, i32 0, i32 16
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = call i8* @le16_to_cpu(i32 %442)
  %444 = ptrtoint i8* %443 to i64
  %445 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %446 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %445, i32 0, i32 9
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 0
  store i64 %444, i64* %447, align 8
  %448 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %449 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %448, i32 0, i32 16
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = call i8* @le16_to_cpu(i32 %451)
  %453 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %454 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %453, i32 0, i32 9
  %455 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %454, i32 0, i32 2
  store i8* %452, i8** %455, align 8
  %456 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %457 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = sext i32 %458 to i64
  %460 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %461 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %460, i32 0, i32 9
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = add nsw i64 %459, %463
  %465 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %466 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %465, i32 0, i32 9
  %467 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %466, i32 0, i32 1
  store i64 %464, i64* %467, align 8
  br label %468

468:                                              ; preds = %438, %428
  %469 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %470 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %469, i32 0, i32 3
  %471 = load i64, i64* %470, align 8
  %472 = call i32 @le32_to_cpu(i64 %471)
  %473 = load i32, i32* @MD_FEATURE_RAID0_LAYOUT, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %484

476:                                              ; preds = %468
  %477 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %478 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %477, i32 0, i32 7
  %479 = load i64, i64* %478, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %484

481:                                              ; preds = %476
  %482 = load i32, i32* @EINVAL, align 4
  %483 = sub nsw i32 0, %482
  store i32 %483, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

484:                                              ; preds = %476, %468
  %485 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %486 = icmp ne %struct.md_rdev* %485, null
  br i1 %486, label %488, label %487

487:                                              ; preds = %484
  store i32 1, i32* %9, align 4
  br label %552

488:                                              ; preds = %484
  %489 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %490 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %489, i32 0, i32 8
  %491 = load i64, i64* %490, align 8
  %492 = call %struct.mdp_superblock_1* @page_address(i64 %491)
  store %struct.mdp_superblock_1* %492, %struct.mdp_superblock_1** %27, align 8
  %493 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %494 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %493, i32 0, i32 15
  %495 = load i64*, i64** %494, align 8
  %496 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %27, align 8
  %497 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %496, i32 0, i32 15
  %498 = load i64*, i64** %497, align 8
  %499 = call i64 @memcmp(i64* %495, i64* %498, i32 16)
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %525, label %501

501:                                              ; preds = %488
  %502 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %503 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %502, i32 0, i32 7
  %504 = load i64, i64* %503, align 8
  %505 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %27, align 8
  %506 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %505, i32 0, i32 7
  %507 = load i64, i64* %506, align 8
  %508 = icmp ne i64 %504, %507
  br i1 %508, label %525, label %509

509:                                              ; preds = %501
  %510 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %511 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %510, i32 0, i32 11
  %512 = load i64, i64* %511, align 8
  %513 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %27, align 8
  %514 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %513, i32 0, i32 11
  %515 = load i64, i64* %514, align 8
  %516 = icmp ne i64 %512, %515
  br i1 %516, label %525, label %517

517:                                              ; preds = %509
  %518 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %519 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %518, i32 0, i32 12
  %520 = load i64, i64* %519, align 8
  %521 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %27, align 8
  %522 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %521, i32 0, i32 12
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %520, %523
  br i1 %524, label %525, label %537

525:                                              ; preds = %517, %509, %501, %488
  %526 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %527 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %526, i32 0, i32 7
  %528 = load %struct.TYPE_9__*, %struct.TYPE_9__** %527, align 8
  %529 = call i32 @bdevname(%struct.TYPE_9__* %528, i8* %31)
  %530 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %531 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %530, i32 0, i32 7
  %532 = load %struct.TYPE_9__*, %struct.TYPE_9__** %531, align 8
  %533 = call i32 @bdevname(%struct.TYPE_9__* %532, i8* %34)
  %534 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %529, i32 %533)
  %535 = load i32, i32* @EINVAL, align 4
  %536 = sub nsw i32 0, %535
  store i32 %536, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

537:                                              ; preds = %517
  %538 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %539 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %538, i32 0, i32 14
  %540 = load i32, i32* %539, align 4
  %541 = call i32 @le64_to_cpu(i32 %540)
  store i32 %541, i32* %25, align 4
  %542 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %27, align 8
  %543 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %542, i32 0, i32 14
  %544 = load i32, i32* %543, align 4
  %545 = call i32 @le64_to_cpu(i32 %544)
  store i32 %545, i32* %26, align 4
  %546 = load i32, i32* %25, align 4
  %547 = load i32, i32* %26, align 4
  %548 = icmp sgt i32 %546, %547
  br i1 %548, label %549, label %550

549:                                              ; preds = %537
  store i32 1, i32* %9, align 4
  br label %551

550:                                              ; preds = %537
  store i32 0, i32* %9, align 4
  br label %551

551:                                              ; preds = %550, %549
  br label %552

552:                                              ; preds = %551, %487
  %553 = load i32, i32* %7, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %568

555:                                              ; preds = %552
  %556 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %557 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %556, i32 0, i32 7
  %558 = load %struct.TYPE_9__*, %struct.TYPE_9__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = call i32 @i_size_read(i32 %560)
  %562 = ashr i32 %561, 9
  store i32 %562, i32* %11, align 4
  %563 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %564 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %563, i32 0, i32 2
  %565 = load i32, i32* %564, align 8
  %566 = load i32, i32* %11, align 4
  %567 = sub nsw i32 %566, %565
  store i32 %567, i32* %11, align 4
  br label %572

568:                                              ; preds = %552
  %569 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %570 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  store i32 %571, i32* %11, align 4
  br label %572

572:                                              ; preds = %568, %555
  %573 = load i32, i32* %11, align 4
  %574 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %575 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %574, i32 0, i32 13
  %576 = load i32, i32* %575, align 8
  %577 = call i32 @le64_to_cpu(i32 %576)
  %578 = icmp slt i32 %573, %577
  br i1 %578, label %579, label %582

579:                                              ; preds = %572
  %580 = load i32, i32* @EINVAL, align 4
  %581 = sub nsw i32 0, %580
  store i32 %581, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

582:                                              ; preds = %572
  %583 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %8, align 8
  %584 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %583, i32 0, i32 13
  %585 = load i32, i32* %584, align 8
  %586 = call i32 @le64_to_cpu(i32 %585)
  %587 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %588 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %587, i32 0, i32 6
  store i32 %586, i32* %588, align 8
  %589 = load i32, i32* %9, align 4
  store i32 %589, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %590

590:                                              ; preds = %582, %579, %525, %481, %408, %359, %342, %332, %304, %270, %253, %158, %128, %114, %104, %61, %50
  %591 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %591)
  %592 = load i32, i32* %4, align 4
  ret i32 %592
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i_size_read(i32) #2

declare dso_local i32 @read_disk_sb(%struct.md_rdev*, i32) #2

declare dso_local %struct.mdp_superblock_1* @page_address(i64) #2

declare dso_local i64 @cpu_to_le32(i32) #2

declare dso_local i32 @le32_to_cpu(i64) #2

declare dso_local i32 @le64_to_cpu(i32) #2

declare dso_local i64 @calc_sb_1_csum(%struct.mdp_superblock_1*) #2

declare dso_local i32 @pr_warn(i8*, i32, ...) #2

declare dso_local i32 @bdevname(%struct.TYPE_9__*, i8*) #2

declare dso_local i64 @memcmp(i64*, i64*, i32) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @queue_logical_block_size(i32) #2

declare dso_local i64 @alloc_page(i32) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @sync_page_io(%struct.md_rdev*, i32, i32, i64, i32, i32, i32) #2

declare dso_local i64 @badblocks_set(%struct.TYPE_10__*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
