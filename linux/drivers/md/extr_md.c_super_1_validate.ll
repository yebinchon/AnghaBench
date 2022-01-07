; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_super_1_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_super_1_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32*, i32, i8*, %struct.TYPE_4__, i32, i8*, i8*, i64*, i8*, i8*, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32* }
%struct.md_rdev = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.mdp_superblock_1 = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Bitmap_sync = common dso_local global i32 0, align 4
@WriteMostly = common dso_local global i32 0, align 4
@MD_FEATURE_BITMAP_OFFSET = common dso_local global i32 0, align 4
@MD_FEATURE_RESHAPE_ACTIVE = common dso_local global i32 0, align 4
@MD_FEATURE_RESHAPE_BACKWARDS = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i8* null, align 8
@MD_FEATURE_RAID0_LAYOUT = common dso_local global i32 0, align 4
@MD_FEATURE_JOURNAL = common dso_local global i32 0, align 4
@MD_HAS_JOURNAL = common dso_local global i32 0, align 4
@MD_FEATURE_PPL = common dso_local global i32 0, align 4
@MD_FEATURE_MULTIPLE_PPLS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MD_HAS_PPL = common dso_local global i32 0, align 4
@MD_DISK_ROLE_MAX = common dso_local global i32 0, align 4
@LEVEL_MULTIPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"md: journal device provided without journal feature, ignoring the device\0A\00", align 1
@Journal = common dso_local global i32 0, align 4
@MD_FEATURE_RECOVERY_OFFSET = common dso_local global i32 0, align 4
@MD_FEATURE_RECOVERY_BITMAP = common dso_local global i32 0, align 4
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@WriteMostly1 = common dso_local global i32 0, align 4
@FailFast1 = common dso_local global i32 0, align 4
@FailFast = common dso_local global i32 0, align 4
@MD_FEATURE_REPLACEMENT = common dso_local global i32 0, align 4
@Replacement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @super_1_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_1_validate(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.mdp_superblock_1*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %9 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %10 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.mdp_superblock_1* @page_address(i32 %11)
  store %struct.mdp_superblock_1* %12, %struct.mdp_superblock_1** %6, align 8
  %13 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %14 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %13, i32 0, i32 21
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @le64_to_cpu(i32 %15)
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %19 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load i32, i32* @Faulty, align 4
  %21 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %22 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %21, i32 0, i32 3
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  %24 = load i32, i32* @In_sync, align 4
  %25 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %26 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %25, i32 0, i32 3
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  %28 = load i32, i32* @Bitmap_sync, align 4
  %29 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %30 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %29, i32 0, i32 3
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  %32 = load i32, i32* @WriteMostly, align 4
  %33 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %34 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %33, i32 0, i32 3
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  %36 = load %struct.mddev*, %struct.mddev** %4, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %339

40:                                               ; preds = %2
  %41 = load %struct.mddev*, %struct.mddev** %4, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.mddev*, %struct.mddev** %4, align 8
  %44 = getelementptr inbounds %struct.mddev, %struct.mddev* %43, i32 0, i32 26
  store i64 0, i64* %44, align 8
  %45 = load %struct.mddev*, %struct.mddev** %4, align 8
  %46 = getelementptr inbounds %struct.mddev, %struct.mddev* %45, i32 0, i32 25
  store i64 0, i64* %46, align 8
  %47 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %48 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %47, i32 0, i32 20
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = load %struct.mddev*, %struct.mddev** %4, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %54 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %53, i32 0, i32 19
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @le64_to_cpu(i32 %55)
  %57 = load %struct.mddev*, %struct.mddev** %4, align 8
  %58 = getelementptr inbounds %struct.mddev, %struct.mddev* %57, i32 0, i32 24
  store i8* %56, i8** %58, align 8
  %59 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %60 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %59, i32 0, i32 18
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le64_to_cpu(i32 %61)
  %63 = load %struct.mddev*, %struct.mddev** %4, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 23
  store i8* %62, i8** %64, align 8
  %65 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %66 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %65, i32 0, i32 17
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = load %struct.mddev*, %struct.mddev** %4, align 8
  %70 = getelementptr inbounds %struct.mddev, %struct.mddev* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mddev*, %struct.mddev** %4, align 8
  %72 = getelementptr inbounds %struct.mddev, %struct.mddev* %71, i32 0, i32 22
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %76 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %75, i32 0, i32 16
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load %struct.mddev*, %struct.mddev** %4, align 8
  %80 = getelementptr inbounds %struct.mddev, %struct.mddev* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %82 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %81, i32 0, i32 15
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @le32_to_cpu(i32 %83)
  %85 = load %struct.mddev*, %struct.mddev** %4, align 8
  %86 = getelementptr inbounds %struct.mddev, %struct.mddev* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %88 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %87, i32 0, i32 14
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @le64_to_cpu(i32 %89)
  %91 = load %struct.mddev*, %struct.mddev** %4, align 8
  %92 = getelementptr inbounds %struct.mddev, %struct.mddev* %91, i32 0, i32 21
  store i8* %90, i8** %92, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.mddev*, %struct.mddev** %4, align 8
  %95 = getelementptr inbounds %struct.mddev, %struct.mddev* %94, i32 0, i32 5
  store i64 %93, i64* %95, align 8
  %96 = load %struct.mddev*, %struct.mddev** %4, align 8
  %97 = getelementptr inbounds %struct.mddev, %struct.mddev* %96, i32 0, i32 18
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.mddev*, %struct.mddev** %4, align 8
  %100 = getelementptr inbounds %struct.mddev, %struct.mddev* %99, i32 0, i32 18
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.mddev*, %struct.mddev** %4, align 8
  %103 = getelementptr inbounds %struct.mddev, %struct.mddev* %102, i32 0, i32 18
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  store i32 2, i32* %104, align 8
  %105 = load %struct.mddev*, %struct.mddev** %4, align 8
  %106 = getelementptr inbounds %struct.mddev, %struct.mddev* %105, i32 0, i32 18
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  store i32 6, i32* %107, align 4
  %108 = load %struct.mddev*, %struct.mddev** %4, align 8
  %109 = getelementptr inbounds %struct.mddev, %struct.mddev* %108, i32 0, i32 6
  store i32 0, i32* %109, align 8
  %110 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %111 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %110, i32 0, i32 13
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @le64_to_cpu(i32 %112)
  %114 = load %struct.mddev*, %struct.mddev** %4, align 8
  %115 = getelementptr inbounds %struct.mddev, %struct.mddev* %114, i32 0, i32 20
  store i8* %113, i8** %115, align 8
  %116 = load %struct.mddev*, %struct.mddev** %4, align 8
  %117 = getelementptr inbounds %struct.mddev, %struct.mddev* %116, i32 0, i32 19
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %120 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @memcpy(i32 %118, i32 %121, i32 16)
  %123 = load %struct.mddev*, %struct.mddev** %4, align 8
  %124 = getelementptr inbounds %struct.mddev, %struct.mddev* %123, i32 0, i32 7
  store i32 1920, i32* %124, align 4
  %125 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %126 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le32_to_cpu(i32 %127)
  %129 = load i32, i32* @MD_FEATURE_BITMAP_OFFSET, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %181

132:                                              ; preds = %40
  %133 = load %struct.mddev*, %struct.mddev** %4, align 8
  %134 = getelementptr inbounds %struct.mddev, %struct.mddev* %133, i32 0, i32 18
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %181

138:                                              ; preds = %132
  %139 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %140 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @le32_to_cpu(i32 %141)
  %143 = sext i32 %142 to i64
  %144 = load %struct.mddev*, %struct.mddev** %4, align 8
  %145 = getelementptr inbounds %struct.mddev, %struct.mddev* %144, i32 0, i32 18
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i64 %143, i64* %146, align 8
  %147 = load %struct.mddev*, %struct.mddev** %4, align 8
  %148 = getelementptr inbounds %struct.mddev, %struct.mddev* %147, i32 0, i32 8
  %149 = load i64, i64* %148, align 8
  %150 = icmp sgt i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %138
  %152 = load %struct.mddev*, %struct.mddev** %4, align 8
  %153 = getelementptr inbounds %struct.mddev, %struct.mddev* %152, i32 0, i32 18
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  br label %180

155:                                              ; preds = %138
  %156 = load %struct.mddev*, %struct.mddev** %4, align 8
  %157 = getelementptr inbounds %struct.mddev, %struct.mddev* %156, i32 0, i32 18
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %155
  %162 = load %struct.mddev*, %struct.mddev** %4, align 8
  %163 = getelementptr inbounds %struct.mddev, %struct.mddev* %162, i32 0, i32 18
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 8, %165
  %167 = load %struct.mddev*, %struct.mddev** %4, align 8
  %168 = getelementptr inbounds %struct.mddev, %struct.mddev* %167, i32 0, i32 18
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i64 %166, i64* %169, align 8
  br label %179

170:                                              ; preds = %155
  %171 = load %struct.mddev*, %struct.mddev** %4, align 8
  %172 = getelementptr inbounds %struct.mddev, %struct.mddev* %171, i32 0, i32 18
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 0, %174
  %176 = load %struct.mddev*, %struct.mddev** %4, align 8
  %177 = getelementptr inbounds %struct.mddev, %struct.mddev* %176, i32 0, i32 18
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  store i64 %175, i64* %178, align 8
  br label %179

179:                                              ; preds = %170, %161
  br label %180

180:                                              ; preds = %179, %151
  br label %181

181:                                              ; preds = %180, %132, %40
  %182 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %183 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @le32_to_cpu(i32 %184)
  %186 = load i32, i32* @MD_FEATURE_RESHAPE_ACTIVE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %241

189:                                              ; preds = %181
  %190 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %191 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %190, i32 0, i32 10
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @le64_to_cpu(i32 %192)
  %194 = load %struct.mddev*, %struct.mddev** %4, align 8
  %195 = getelementptr inbounds %struct.mddev, %struct.mddev* %194, i32 0, i32 17
  store i8* %193, i8** %195, align 8
  %196 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %197 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @le32_to_cpu(i32 %198)
  %200 = load %struct.mddev*, %struct.mddev** %4, align 8
  %201 = getelementptr inbounds %struct.mddev, %struct.mddev* %200, i32 0, i32 9
  store i32 %199, i32* %201, align 8
  %202 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %203 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @le32_to_cpu(i32 %204)
  %206 = load %struct.mddev*, %struct.mddev** %4, align 8
  %207 = getelementptr inbounds %struct.mddev, %struct.mddev* %206, i32 0, i32 10
  store i32 %205, i32* %207, align 4
  %208 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %209 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @le32_to_cpu(i32 %210)
  %212 = load %struct.mddev*, %struct.mddev** %4, align 8
  %213 = getelementptr inbounds %struct.mddev, %struct.mddev* %212, i32 0, i32 11
  store i32 %211, i32* %213, align 8
  %214 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %215 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @le32_to_cpu(i32 %216)
  %218 = load %struct.mddev*, %struct.mddev** %4, align 8
  %219 = getelementptr inbounds %struct.mddev, %struct.mddev* %218, i32 0, i32 12
  store i32 %217, i32* %219, align 4
  %220 = load %struct.mddev*, %struct.mddev** %4, align 8
  %221 = getelementptr inbounds %struct.mddev, %struct.mddev* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %237, label %224

224:                                              ; preds = %189
  %225 = load %struct.mddev*, %struct.mddev** %4, align 8
  %226 = getelementptr inbounds %struct.mddev, %struct.mddev* %225, i32 0, i32 9
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %224
  %230 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %231 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @le32_to_cpu(i32 %232)
  %234 = load i32, i32* @MD_FEATURE_RESHAPE_BACKWARDS, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %229, %189
  %238 = load %struct.mddev*, %struct.mddev** %4, align 8
  %239 = getelementptr inbounds %struct.mddev, %struct.mddev* %238, i32 0, i32 6
  store i32 1, i32* %239, align 8
  br label %240

240:                                              ; preds = %237, %229, %224
  br label %262

241:                                              ; preds = %181
  %242 = load i8*, i8** @MaxSector, align 8
  %243 = load %struct.mddev*, %struct.mddev** %4, align 8
  %244 = getelementptr inbounds %struct.mddev, %struct.mddev* %243, i32 0, i32 17
  store i8* %242, i8** %244, align 8
  %245 = load %struct.mddev*, %struct.mddev** %4, align 8
  %246 = getelementptr inbounds %struct.mddev, %struct.mddev* %245, i32 0, i32 9
  store i32 0, i32* %246, align 8
  %247 = load %struct.mddev*, %struct.mddev** %4, align 8
  %248 = getelementptr inbounds %struct.mddev, %struct.mddev* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.mddev*, %struct.mddev** %4, align 8
  %251 = getelementptr inbounds %struct.mddev, %struct.mddev* %250, i32 0, i32 10
  store i32 %249, i32* %251, align 4
  %252 = load %struct.mddev*, %struct.mddev** %4, align 8
  %253 = getelementptr inbounds %struct.mddev, %struct.mddev* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.mddev*, %struct.mddev** %4, align 8
  %256 = getelementptr inbounds %struct.mddev, %struct.mddev* %255, i32 0, i32 11
  store i32 %254, i32* %256, align 8
  %257 = load %struct.mddev*, %struct.mddev** %4, align 8
  %258 = getelementptr inbounds %struct.mddev, %struct.mddev* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.mddev*, %struct.mddev** %4, align 8
  %261 = getelementptr inbounds %struct.mddev, %struct.mddev* %260, i32 0, i32 12
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %241, %240
  %263 = load %struct.mddev*, %struct.mddev** %4, align 8
  %264 = getelementptr inbounds %struct.mddev, %struct.mddev* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %278

267:                                              ; preds = %262
  %268 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %269 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @le32_to_cpu(i32 %270)
  %272 = load i32, i32* @MD_FEATURE_RAID0_LAYOUT, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %267
  %276 = load %struct.mddev*, %struct.mddev** %4, align 8
  %277 = getelementptr inbounds %struct.mddev, %struct.mddev* %276, i32 0, i32 4
  store i32 -1, i32* %277, align 8
  br label %278

278:                                              ; preds = %275, %267, %262
  %279 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %280 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @le32_to_cpu(i32 %281)
  %283 = load i32, i32* @MD_FEATURE_JOURNAL, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %278
  %287 = load i32, i32* @MD_HAS_JOURNAL, align 4
  %288 = load %struct.mddev*, %struct.mddev** %4, align 8
  %289 = getelementptr inbounds %struct.mddev, %struct.mddev* %288, i32 0, i32 16
  %290 = call i32 @set_bit(i32 %287, i32* %289)
  br label %291

291:                                              ; preds = %286, %278
  %292 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %293 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @le32_to_cpu(i32 %294)
  %296 = load i32, i32* @MD_FEATURE_PPL, align 4
  %297 = load i32, i32* @MD_FEATURE_MULTIPLE_PPLS, align 4
  %298 = or i32 %296, %297
  %299 = and i32 %295, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %338

301:                                              ; preds = %291
  %302 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %303 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @le32_to_cpu(i32 %304)
  %306 = load i32, i32* @MD_FEATURE_BITMAP_OFFSET, align 4
  %307 = load i32, i32* @MD_FEATURE_JOURNAL, align 4
  %308 = or i32 %306, %307
  %309 = and i32 %305, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %301
  %312 = load i32, i32* @EINVAL, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %3, align 4
  br label %588

314:                                              ; preds = %301
  %315 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %316 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @le32_to_cpu(i32 %317)
  %319 = load i32, i32* @MD_FEATURE_PPL, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %333

322:                                              ; preds = %314
  %323 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %324 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @le32_to_cpu(i32 %325)
  %327 = load i32, i32* @MD_FEATURE_MULTIPLE_PPLS, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %322
  %331 = load i32, i32* @EINVAL, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %3, align 4
  br label %588

333:                                              ; preds = %322, %314
  %334 = load i32, i32* @MD_HAS_PPL, align 4
  %335 = load %struct.mddev*, %struct.mddev** %4, align 8
  %336 = getelementptr inbounds %struct.mddev, %struct.mddev* %335, i32 0, i32 16
  %337 = call i32 @set_bit(i32 %334, i32* %336)
  br label %338

338:                                              ; preds = %333, %291
  br label %432

339:                                              ; preds = %2
  %340 = load %struct.mddev*, %struct.mddev** %4, align 8
  %341 = getelementptr inbounds %struct.mddev, %struct.mddev* %340, i32 0, i32 15
  %342 = load i32*, i32** %341, align 8
  %343 = icmp eq i32* %342, null
  br i1 %343, label %344, label %396

344:                                              ; preds = %339
  %345 = load i64, i64* %7, align 8
  %346 = add nsw i64 %345, 1
  store i64 %346, i64* %7, align 8
  %347 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %348 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = icmp sge i32 %349, 0
  br i1 %350, label %351, label %395

351:                                              ; preds = %344
  %352 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %353 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %356 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @le32_to_cpu(i32 %357)
  %359 = icmp slt i32 %354, %358
  br i1 %359, label %360, label %395

360:                                              ; preds = %351
  %361 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %362 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %361, i32 0, i32 4
  %363 = load i32*, i32** %362, align 8
  %364 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %365 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %363, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @le16_to_cpu(i32 %369)
  %371 = load i32, i32* @MD_DISK_ROLE_MAX, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %385, label %373

373:                                              ; preds = %360
  %374 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %375 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %374, i32 0, i32 4
  %376 = load i32*, i32** %375, align 8
  %377 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %378 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %376, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @le16_to_cpu(i32 %382)
  %384 = icmp eq i32 %383, 129
  br i1 %384, label %385, label %395

385:                                              ; preds = %373, %360
  %386 = load i64, i64* %7, align 8
  %387 = load %struct.mddev*, %struct.mddev** %4, align 8
  %388 = getelementptr inbounds %struct.mddev, %struct.mddev* %387, i32 0, i32 5
  %389 = load i64, i64* %388, align 8
  %390 = icmp slt i64 %386, %389
  br i1 %390, label %391, label %394

391:                                              ; preds = %385
  %392 = load i32, i32* @EINVAL, align 4
  %393 = sub nsw i32 0, %392
  store i32 %393, i32* %3, align 4
  br label %588

394:                                              ; preds = %385
  br label %395

395:                                              ; preds = %394, %373, %351, %344
  br label %431

396:                                              ; preds = %339
  %397 = load %struct.mddev*, %struct.mddev** %4, align 8
  %398 = getelementptr inbounds %struct.mddev, %struct.mddev* %397, i32 0, i32 14
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %398, align 8
  %400 = icmp ne %struct.TYPE_3__* %399, null
  br i1 %400, label %401, label %422

401:                                              ; preds = %396
  %402 = load i64, i64* %7, align 8
  %403 = load %struct.mddev*, %struct.mddev** %4, align 8
  %404 = getelementptr inbounds %struct.mddev, %struct.mddev* %403, i32 0, i32 14
  %405 = load %struct.TYPE_3__*, %struct.TYPE_3__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = icmp slt i64 %402, %407
  br i1 %408, label %409, label %410

409:                                              ; preds = %401
  store i32 0, i32* %3, align 4
  br label %588

410:                                              ; preds = %401
  %411 = load i64, i64* %7, align 8
  %412 = load %struct.mddev*, %struct.mddev** %4, align 8
  %413 = getelementptr inbounds %struct.mddev, %struct.mddev* %412, i32 0, i32 5
  %414 = load i64, i64* %413, align 8
  %415 = icmp slt i64 %411, %414
  br i1 %415, label %416, label %421

416:                                              ; preds = %410
  %417 = load i32, i32* @Bitmap_sync, align 4
  %418 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %419 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %418, i32 0, i32 3
  %420 = call i32 @set_bit(i32 %417, i32* %419)
  br label %421

421:                                              ; preds = %416, %410
  br label %430

422:                                              ; preds = %396
  %423 = load i64, i64* %7, align 8
  %424 = load %struct.mddev*, %struct.mddev** %4, align 8
  %425 = getelementptr inbounds %struct.mddev, %struct.mddev* %424, i32 0, i32 5
  %426 = load i64, i64* %425, align 8
  %427 = icmp slt i64 %423, %426
  br i1 %427, label %428, label %429

428:                                              ; preds = %422
  store i32 0, i32* %3, align 4
  br label %588

429:                                              ; preds = %422
  br label %430

430:                                              ; preds = %429, %421
  br label %431

431:                                              ; preds = %430, %395
  br label %432

432:                                              ; preds = %431, %338
  %433 = load %struct.mddev*, %struct.mddev** %4, align 8
  %434 = getelementptr inbounds %struct.mddev, %struct.mddev* %433, i32 0, i32 3
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* @LEVEL_MULTIPATH, align 4
  %437 = icmp ne i32 %435, %436
  br i1 %437, label %438, label %582

438:                                              ; preds = %432
  %439 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %440 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %452, label %443

443:                                              ; preds = %438
  %444 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %445 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %448 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %447, i32 0, i32 5
  %449 = load i32, i32* %448, align 8
  %450 = call i32 @le32_to_cpu(i32 %449)
  %451 = icmp sge i32 %446, %450
  br i1 %451, label %452, label %455

452:                                              ; preds = %443, %438
  store i32 128, i32* %8, align 4
  %453 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %454 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %453, i32 0, i32 1
  store i32 -1, i32* %454, align 4
  br label %466

455:                                              ; preds = %443
  %456 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %457 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %456, i32 0, i32 4
  %458 = load i32*, i32** %457, align 8
  %459 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %460 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %458, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @le16_to_cpu(i32 %464)
  store i32 %465, i32* %8, align 4
  br label %466

466:                                              ; preds = %455, %452
  %467 = load i32, i32* %8, align 4
  switch i32 %467, label %499 [
    i32 128, label %468
    i32 130, label %469
    i32 129, label %474
  ]

468:                                              ; preds = %466
  br label %544

469:                                              ; preds = %466
  %470 = load i32, i32* @Faulty, align 4
  %471 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %472 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %471, i32 0, i32 3
  %473 = call i32 @set_bit(i32 %470, i32* %472)
  br label %544

474:                                              ; preds = %466
  %475 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %476 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = call i32 @le32_to_cpu(i32 %477)
  %479 = load i32, i32* @MD_FEATURE_JOURNAL, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %486, label %482

482:                                              ; preds = %474
  %483 = call i32 @pr_warn(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %484 = load i32, i32* @EINVAL, align 4
  %485 = sub nsw i32 0, %484
  store i32 %485, i32* %3, align 4
  br label %588

486:                                              ; preds = %474
  %487 = load i32, i32* @Journal, align 4
  %488 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %489 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %488, i32 0, i32 3
  %490 = call i32 @set_bit(i32 %487, i32* %489)
  %491 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %492 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %491, i32 0, i32 3
  %493 = load i32, i32* %492, align 4
  %494 = call i8* @le64_to_cpu(i32 %493)
  %495 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %496 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %495, i32 0, i32 5
  store i8* %494, i8** %496, align 8
  %497 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %498 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %497, i32 0, i32 0
  store i32 0, i32* %498, align 8
  br label %544

499:                                              ; preds = %466
  %500 = load i32, i32* %8, align 4
  %501 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %502 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %501, i32 0, i32 2
  store i32 %500, i32* %502, align 8
  %503 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %504 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = call i32 @le32_to_cpu(i32 %505)
  %507 = load i32, i32* @MD_FEATURE_RECOVERY_OFFSET, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %528

510:                                              ; preds = %499
  %511 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %512 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = call i8* @le64_to_cpu(i32 %513)
  %515 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %516 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %515, i32 0, i32 4
  store i8* %514, i8** %516, align 8
  %517 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %518 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = call i32 @le32_to_cpu(i32 %519)
  %521 = load i32, i32* @MD_FEATURE_RECOVERY_BITMAP, align 4
  %522 = and i32 %520, %521
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %527, label %524

524:                                              ; preds = %510
  %525 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %526 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %525, i32 0, i32 2
  store i32 -1, i32* %526, align 8
  br label %527

527:                                              ; preds = %524, %510
  br label %540

528:                                              ; preds = %499
  %529 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %530 = load %struct.mddev*, %struct.mddev** %4, align 8
  %531 = getelementptr inbounds %struct.mddev, %struct.mddev* %530, i32 0, i32 13
  %532 = call i32 @test_bit(i32 %529, i32* %531)
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %539, label %534

534:                                              ; preds = %528
  %535 = load i32, i32* @In_sync, align 4
  %536 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %537 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %536, i32 0, i32 3
  %538 = call i32 @set_bit(i32 %535, i32* %537)
  br label %539

539:                                              ; preds = %534, %528
  br label %540

540:                                              ; preds = %539, %527
  %541 = load i32, i32* %8, align 4
  %542 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %543 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %542, i32 0, i32 0
  store i32 %541, i32* %543, align 8
  br label %544

544:                                              ; preds = %540, %486, %469, %468
  %545 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %546 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = load i32, i32* @WriteMostly1, align 4
  %549 = and i32 %547, %548
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %556

551:                                              ; preds = %544
  %552 = load i32, i32* @WriteMostly, align 4
  %553 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %554 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %553, i32 0, i32 3
  %555 = call i32 @set_bit(i32 %552, i32* %554)
  br label %556

556:                                              ; preds = %551, %544
  %557 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %558 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = load i32, i32* @FailFast1, align 4
  %561 = and i32 %559, %560
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %568

563:                                              ; preds = %556
  %564 = load i32, i32* @FailFast, align 4
  %565 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %566 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %565, i32 0, i32 3
  %567 = call i32 @set_bit(i32 %564, i32* %566)
  br label %568

568:                                              ; preds = %563, %556
  %569 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %570 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %569, i32 0, i32 1
  %571 = load i32, i32* %570, align 4
  %572 = call i32 @le32_to_cpu(i32 %571)
  %573 = load i32, i32* @MD_FEATURE_REPLACEMENT, align 4
  %574 = and i32 %572, %573
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %581

576:                                              ; preds = %568
  %577 = load i32, i32* @Replacement, align 4
  %578 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %579 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %578, i32 0, i32 3
  %580 = call i32 @set_bit(i32 %577, i32* %579)
  br label %581

581:                                              ; preds = %576, %568
  br label %587

582:                                              ; preds = %432
  %583 = load i32, i32* @In_sync, align 4
  %584 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %585 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %584, i32 0, i32 3
  %586 = call i32 @set_bit(i32 %583, i32* %585)
  br label %587

587:                                              ; preds = %582, %581
  store i32 0, i32* %3, align 4
  br label %588

588:                                              ; preds = %587, %482, %428, %409, %391, %330, %311
  %589 = load i32, i32* %3, align 4
  ret i32 %589
}

declare dso_local %struct.mdp_superblock_1* @page_address(i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
