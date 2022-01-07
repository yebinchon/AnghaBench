; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_super_90_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_super_90_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_7__*, i32*, %struct.TYPE_8__, i32, i64, i8*, i32, i32, i8*, i32, i64*, i32, i32, i64, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32* }
%struct.md_rdev = type { i32, i64, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_10__*, i32, i32, i32, i32, i8*, i32, i32, i8*, i64, i32, i32, i32, i32, i32 }

@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Bitmap_sync = common dso_local global i32 0, align 4
@WriteMostly = common dso_local global i32 0, align 4
@MD_SB_BYTES = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i8* null, align 8
@MD_SB_CLEAN = common dso_local global i32 0, align 4
@MD_SB_DISKS = common dso_local global i32 0, align 4
@MD_SB_BITMAP_PRESENT = common dso_local global i32 0, align 4
@MD_DISK_SYNC = common dso_local global i32 0, align 4
@MD_DISK_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LEVEL_MULTIPATH = common dso_local global i32 0, align 4
@MD_DISK_FAULTY = common dso_local global i32 0, align 4
@MD_DISK_WRITEMOSTLY = common dso_local global i32 0, align 4
@MD_DISK_FAILFAST = common dso_local global i32 0, align 4
@FailFast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @super_90_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_90_validate(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %9 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %10 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_9__* @page_address(i32 %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = call i64 @md_event(%struct.TYPE_9__* %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %16 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load i32, i32* @Faulty, align 4
  %18 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %19 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %18, i32 0, i32 3
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load i32, i32* @In_sync, align 4
  %22 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 3
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load i32, i32* @Bitmap_sync, align 4
  %26 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %27 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %26, i32 0, i32 3
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load i32, i32* @WriteMostly, align 4
  %30 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %31 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %30, i32 0, i32 3
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  %33 = load %struct.mddev*, %struct.mddev** %4, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 18
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %283

37:                                               ; preds = %2
  %38 = load %struct.mddev*, %struct.mddev** %4, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 24
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mddev*, %struct.mddev** %4, align 8
  %44 = getelementptr inbounds %struct.mddev, %struct.mddev* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 24
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mddev*, %struct.mddev** %4, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 23
  store i32 %47, i32* %49, align 8
  %50 = load %struct.mddev*, %struct.mddev** %4, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 22
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 9
  %56 = load %struct.mddev*, %struct.mddev** %4, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 23
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mddev*, %struct.mddev** %4, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 21
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 22
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mddev*, %struct.mddev** %4, align 8
  %67 = getelementptr inbounds %struct.mddev, %struct.mddev* %66, i32 0, i32 20
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 21
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mddev*, %struct.mddev** %4, align 8
  %72 = getelementptr inbounds %struct.mddev, %struct.mddev* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  %73 = load %struct.mddev*, %struct.mddev** %4, align 8
  %74 = getelementptr inbounds %struct.mddev, %struct.mddev* %73, i32 0, i32 19
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mddev*, %struct.mddev** %4, align 8
  %81 = getelementptr inbounds %struct.mddev, %struct.mddev* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 20
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mddev*, %struct.mddev** %4, align 8
  %86 = getelementptr inbounds %struct.mddev, %struct.mddev* %85, i32 0, i32 18
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 19
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = mul nsw i32 %90, 2
  %92 = load %struct.mddev*, %struct.mddev** %4, align 8
  %93 = getelementptr inbounds %struct.mddev, %struct.mddev* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.mddev*, %struct.mddev** %4, align 8
  %96 = getelementptr inbounds %struct.mddev, %struct.mddev* %95, i32 0, i32 4
  store i64 %94, i64* %96, align 8
  %97 = load %struct.mddev*, %struct.mddev** %4, align 8
  %98 = getelementptr inbounds %struct.mddev, %struct.mddev* %97, i32 0, i32 11
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load %struct.mddev*, %struct.mddev** %4, align 8
  %101 = getelementptr inbounds %struct.mddev, %struct.mddev* %100, i32 0, i32 11
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = load i32, i32* @MD_SB_BYTES, align 4
  %104 = ashr i32 %103, 9
  %105 = load %struct.mddev*, %struct.mddev** %4, align 8
  %106 = getelementptr inbounds %struct.mddev, %struct.mddev* %105, i32 0, i32 11
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* @MD_SB_BYTES, align 4
  %109 = ashr i32 %108, 9
  %110 = sub nsw i32 128, %109
  %111 = load %struct.mddev*, %struct.mddev** %4, align 8
  %112 = getelementptr inbounds %struct.mddev, %struct.mddev* %111, i32 0, i32 11
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  store i32 %110, i32* %113, align 4
  %114 = load %struct.mddev*, %struct.mddev** %4, align 8
  %115 = getelementptr inbounds %struct.mddev, %struct.mddev* %114, i32 0, i32 5
  store i32 0, i32* %115, align 8
  %116 = load %struct.mddev*, %struct.mddev** %4, align 8
  %117 = getelementptr inbounds %struct.mddev, %struct.mddev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sge i32 %118, 91
  br i1 %119, label %120, label %155

120:                                              ; preds = %37
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 18
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.mddev*, %struct.mddev** %4, align 8
  %125 = getelementptr inbounds %struct.mddev, %struct.mddev* %124, i32 0, i32 17
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 17
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mddev*, %struct.mddev** %4, align 8
  %130 = getelementptr inbounds %struct.mddev, %struct.mddev* %129, i32 0, i32 16
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 16
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mddev*, %struct.mddev** %4, align 8
  %135 = getelementptr inbounds %struct.mddev, %struct.mddev* %134, i32 0, i32 15
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mddev*, %struct.mddev** %4, align 8
  %140 = getelementptr inbounds %struct.mddev, %struct.mddev* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = ashr i32 %143, 9
  %145 = load %struct.mddev*, %struct.mddev** %4, align 8
  %146 = getelementptr inbounds %struct.mddev, %struct.mddev* %145, i32 0, i32 7
  store i32 %144, i32* %146, align 8
  %147 = load %struct.mddev*, %struct.mddev** %4, align 8
  %148 = getelementptr inbounds %struct.mddev, %struct.mddev* %147, i32 0, i32 16
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %120
  %152 = load %struct.mddev*, %struct.mddev** %4, align 8
  %153 = getelementptr inbounds %struct.mddev, %struct.mddev* %152, i32 0, i32 5
  store i32 1, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %120
  br label %176

155:                                              ; preds = %37
  %156 = load i8*, i8** @MaxSector, align 8
  %157 = load %struct.mddev*, %struct.mddev** %4, align 8
  %158 = getelementptr inbounds %struct.mddev, %struct.mddev* %157, i32 0, i32 17
  store i8* %156, i8** %158, align 8
  %159 = load %struct.mddev*, %struct.mddev** %4, align 8
  %160 = getelementptr inbounds %struct.mddev, %struct.mddev* %159, i32 0, i32 16
  store i32 0, i32* %160, align 4
  %161 = load %struct.mddev*, %struct.mddev** %4, align 8
  %162 = getelementptr inbounds %struct.mddev, %struct.mddev* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.mddev*, %struct.mddev** %4, align 8
  %165 = getelementptr inbounds %struct.mddev, %struct.mddev* %164, i32 0, i32 15
  store i32 %163, i32* %165, align 8
  %166 = load %struct.mddev*, %struct.mddev** %4, align 8
  %167 = getelementptr inbounds %struct.mddev, %struct.mddev* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.mddev*, %struct.mddev** %4, align 8
  %170 = getelementptr inbounds %struct.mddev, %struct.mddev* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 4
  %171 = load %struct.mddev*, %struct.mddev** %4, align 8
  %172 = getelementptr inbounds %struct.mddev, %struct.mddev* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.mddev*, %struct.mddev** %4, align 8
  %175 = getelementptr inbounds %struct.mddev, %struct.mddev* %174, i32 0, i32 7
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %155, %154
  %177 = load %struct.mddev*, %struct.mddev** %4, align 8
  %178 = getelementptr inbounds %struct.mddev, %struct.mddev* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.mddev*, %struct.mddev** %4, align 8
  %183 = getelementptr inbounds %struct.mddev, %struct.mddev* %182, i32 0, i32 2
  store i32 -1, i32* %183, align 8
  br label %184

184:                                              ; preds = %181, %176
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @MD_SB_CLEAN, align 4
  %189 = shl i32 1, %188
  %190 = and i32 %187, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %184
  %193 = load i8*, i8** @MaxSector, align 8
  %194 = load %struct.mddev*, %struct.mddev** %4, align 8
  %195 = getelementptr inbounds %struct.mddev, %struct.mddev* %194, i32 0, i32 14
  store i8* %193, i8** %195, align 8
  br label %222

196:                                              ; preds = %184
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %199, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %196
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 8
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 9
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %207, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %204
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 15
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.mddev*, %struct.mddev** %4, align 8
  %217 = getelementptr inbounds %struct.mddev, %struct.mddev* %216, i32 0, i32 14
  store i8* %215, i8** %217, align 8
  br label %221

218:                                              ; preds = %204, %196
  %219 = load %struct.mddev*, %struct.mddev** %4, align 8
  %220 = getelementptr inbounds %struct.mddev, %struct.mddev* %219, i32 0, i32 14
  store i8* null, i8** %220, align 8
  br label %221

221:                                              ; preds = %218, %212
  br label %222

222:                                              ; preds = %221, %192
  %223 = load %struct.mddev*, %struct.mddev** %4, align 8
  %224 = getelementptr inbounds %struct.mddev, %struct.mddev* %223, i32 0, i32 13
  %225 = load i64, i64* %224, align 8
  %226 = add nsw i64 %225, 0
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 14
  %229 = call i32 @memcpy(i64 %226, i32* %228, i32 4)
  %230 = load %struct.mddev*, %struct.mddev** %4, align 8
  %231 = getelementptr inbounds %struct.mddev, %struct.mddev* %230, i32 0, i32 13
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %232, 4
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 13
  %236 = call i32 @memcpy(i64 %233, i32* %235, i32 4)
  %237 = load %struct.mddev*, %struct.mddev** %4, align 8
  %238 = getelementptr inbounds %struct.mddev, %struct.mddev* %237, i32 0, i32 13
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %239, 8
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 12
  %243 = call i32 @memcpy(i64 %240, i32* %242, i32 4)
  %244 = load %struct.mddev*, %struct.mddev** %4, align 8
  %245 = getelementptr inbounds %struct.mddev, %struct.mddev* %244, i32 0, i32 13
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %246, 12
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 11
  %250 = call i32 @memcpy(i64 %247, i32* %249, i32 4)
  %251 = load i32, i32* @MD_SB_DISKS, align 4
  %252 = load %struct.mddev*, %struct.mddev** %4, align 8
  %253 = getelementptr inbounds %struct.mddev, %struct.mddev* %252, i32 0, i32 12
  store i32 %251, i32* %253, align 8
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @MD_SB_BITMAP_PRESENT, align 4
  %258 = shl i32 1, %257
  %259 = and i32 %256, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %282

261:                                              ; preds = %222
  %262 = load %struct.mddev*, %struct.mddev** %4, align 8
  %263 = getelementptr inbounds %struct.mddev, %struct.mddev* %262, i32 0, i32 11
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 4
  %265 = load i32*, i32** %264, align 8
  %266 = icmp eq i32* %265, null
  br i1 %266, label %267, label %282

267:                                              ; preds = %261
  %268 = load %struct.mddev*, %struct.mddev** %4, align 8
  %269 = getelementptr inbounds %struct.mddev, %struct.mddev* %268, i32 0, i32 11
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.mddev*, %struct.mddev** %4, align 8
  %273 = getelementptr inbounds %struct.mddev, %struct.mddev* %272, i32 0, i32 11
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  store i32 %271, i32* %274, align 8
  %275 = load %struct.mddev*, %struct.mddev** %4, align 8
  %276 = getelementptr inbounds %struct.mddev, %struct.mddev* %275, i32 0, i32 11
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.mddev*, %struct.mddev** %4, align 8
  %280 = getelementptr inbounds %struct.mddev, %struct.mddev* %279, i32 0, i32 11
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 1
  store i32 %278, i32* %281, align 4
  br label %282

282:                                              ; preds = %267, %261, %222
  br label %354

283:                                              ; preds = %2
  %284 = load %struct.mddev*, %struct.mddev** %4, align 8
  %285 = getelementptr inbounds %struct.mddev, %struct.mddev* %284, i32 0, i32 10
  %286 = load i32*, i32** %285, align 8
  %287 = icmp eq i32* %286, null
  br i1 %287, label %288, label %318

288:                                              ; preds = %283
  %289 = load i64, i64* %8, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* %8, align 8
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 10
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %292, align 8
  %294 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %295 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @MD_DISK_SYNC, align 4
  %301 = shl i32 1, %300
  %302 = load i32, i32* @MD_DISK_ACTIVE, align 4
  %303 = shl i32 1, %302
  %304 = or i32 %301, %303
  %305 = and i32 %299, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %317

307:                                              ; preds = %288
  %308 = load i64, i64* %8, align 8
  %309 = load %struct.mddev*, %struct.mddev** %4, align 8
  %310 = getelementptr inbounds %struct.mddev, %struct.mddev* %309, i32 0, i32 4
  %311 = load i64, i64* %310, align 8
  %312 = icmp slt i64 %308, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %307
  %314 = load i32, i32* @EINVAL, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %3, align 4
  br label %460

316:                                              ; preds = %307
  br label %317

317:                                              ; preds = %316, %288
  br label %353

318:                                              ; preds = %283
  %319 = load %struct.mddev*, %struct.mddev** %4, align 8
  %320 = getelementptr inbounds %struct.mddev, %struct.mddev* %319, i32 0, i32 9
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %320, align 8
  %322 = icmp ne %struct.TYPE_7__* %321, null
  br i1 %322, label %323, label %344

323:                                              ; preds = %318
  %324 = load i64, i64* %8, align 8
  %325 = load %struct.mddev*, %struct.mddev** %4, align 8
  %326 = getelementptr inbounds %struct.mddev, %struct.mddev* %325, i32 0, i32 9
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp slt i64 %324, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %323
  store i32 0, i32* %3, align 4
  br label %460

332:                                              ; preds = %323
  %333 = load i64, i64* %8, align 8
  %334 = load %struct.mddev*, %struct.mddev** %4, align 8
  %335 = getelementptr inbounds %struct.mddev, %struct.mddev* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = icmp slt i64 %333, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %332
  %339 = load i32, i32* @Bitmap_sync, align 4
  %340 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %341 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %340, i32 0, i32 3
  %342 = call i32 @set_bit(i32 %339, i32* %341)
  br label %343

343:                                              ; preds = %338, %332
  br label %352

344:                                              ; preds = %318
  %345 = load i64, i64* %8, align 8
  %346 = load %struct.mddev*, %struct.mddev** %4, align 8
  %347 = getelementptr inbounds %struct.mddev, %struct.mddev* %346, i32 0, i32 4
  %348 = load i64, i64* %347, align 8
  %349 = icmp slt i64 %345, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %344
  store i32 0, i32* %3, align 4
  br label %460

351:                                              ; preds = %344
  br label %352

352:                                              ; preds = %351, %343
  br label %353

353:                                              ; preds = %352, %317
  br label %354

354:                                              ; preds = %353, %282
  %355 = load %struct.mddev*, %struct.mddev** %4, align 8
  %356 = getelementptr inbounds %struct.mddev, %struct.mddev* %355, i32 0, i32 8
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @LEVEL_MULTIPATH, align 4
  %359 = icmp ne i32 %357, %358
  br i1 %359, label %360, label %454

360:                                              ; preds = %354
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 10
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %362, align 8
  %364 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %365 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i64 %366
  store %struct.TYPE_10__* %367, %struct.TYPE_10__** %6, align 8
  %368 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @MD_DISK_FAULTY, align 4
  %372 = shl i32 1, %371
  %373 = and i32 %370, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %380

375:                                              ; preds = %360
  %376 = load i32, i32* @Faulty, align 4
  %377 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %378 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %377, i32 0, i32 3
  %379 = call i32 @set_bit(i32 %376, i32* %378)
  br label %427

380:                                              ; preds = %360
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @MD_DISK_SYNC, align 4
  %385 = shl i32 1, %384
  %386 = and i32 %383, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %403

388:                                              ; preds = %380
  %389 = load i32, i32* @In_sync, align 4
  %390 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %391 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %390, i32 0, i32 3
  %392 = call i32 @set_bit(i32 %389, i32* %391)
  %393 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %397 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %396, i32 0, i32 0
  store i32 %395, i32* %397, align 8
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %402 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %401, i32 0, i32 2
  store i32 %400, i32* %402, align 8
  br label %426

403:                                              ; preds = %380
  %404 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @MD_DISK_ACTIVE, align 4
  %408 = shl i32 1, %407
  %409 = and i32 %406, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %425

411:                                              ; preds = %403
  %412 = load %struct.mddev*, %struct.mddev** %4, align 8
  %413 = getelementptr inbounds %struct.mddev, %struct.mddev* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = icmp sge i32 %414, 91
  br i1 %415, label %416, label %424

416:                                              ; preds = %411
  %417 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %418 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %417, i32 0, i32 4
  store i64 0, i64* %418, align 8
  %419 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %423 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %422, i32 0, i32 0
  store i32 %421, i32* %423, align 8
  br label %424

424:                                              ; preds = %416, %411
  br label %425

425:                                              ; preds = %424, %403
  br label %426

426:                                              ; preds = %425, %388
  br label %427

427:                                              ; preds = %426, %375
  %428 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @MD_DISK_WRITEMOSTLY, align 4
  %432 = shl i32 1, %431
  %433 = and i32 %430, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %427
  %436 = load i32, i32* @WriteMostly, align 4
  %437 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %438 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %437, i32 0, i32 3
  %439 = call i32 @set_bit(i32 %436, i32* %438)
  br label %440

440:                                              ; preds = %435, %427
  %441 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @MD_DISK_FAILFAST, align 4
  %445 = shl i32 1, %444
  %446 = and i32 %443, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %453

448:                                              ; preds = %440
  %449 = load i32, i32* @FailFast, align 4
  %450 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %451 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %450, i32 0, i32 3
  %452 = call i32 @set_bit(i32 %449, i32* %451)
  br label %453

453:                                              ; preds = %448, %440
  br label %459

454:                                              ; preds = %354
  %455 = load i32, i32* @In_sync, align 4
  %456 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %457 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %456, i32 0, i32 3
  %458 = call i32 @set_bit(i32 %455, i32* %457)
  br label %459

459:                                              ; preds = %454, %453
  store i32 0, i32* %3, align 4
  br label %460

460:                                              ; preds = %459, %350, %331, %313
  %461 = load i32, i32* %3, align 4
  ret i32 %461
}

declare dso_local %struct.TYPE_9__* @page_address(i32) #1

declare dso_local i64 @md_event(%struct.TYPE_9__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
