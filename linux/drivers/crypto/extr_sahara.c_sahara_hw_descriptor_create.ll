; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_hw_descriptor_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_hw_descriptor_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i32, i32, i32, %struct.scatterlist*, i32, %struct.scatterlist*, i64*, %struct.TYPE_3__**, i64, i64*, %struct.TYPE_4__**, i64, i64, i32, %struct.sahara_ctx* }
%struct.scatterlist = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.sahara_ctx = type { i32, i64, i32 }

@FLAGS_NEW_KEY = common dso_local global i32 0, align 4
@FLAGS_CBC = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid numbers of src SG.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid numbers of dst SG.\0A\00", align 1
@SAHARA_MAX_HW_LINK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"not enough hw links (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"couldn't map in sg\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"couldn't map out sg\0A\00", align 1
@SAHARA_REG_DAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sahara_dev*)* @sahara_hw_descriptor_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_hw_descriptor_create(%struct.sahara_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sahara_dev*, align 8
  %4 = alloca %struct.sahara_ctx*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sahara_dev* %0, %struct.sahara_dev** %3, align 8
  %10 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %11 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %10, i32 0, i32 14
  %12 = load %struct.sahara_ctx*, %struct.sahara_ctx** %11, align 8
  store %struct.sahara_ctx* %12, %struct.sahara_ctx** %4, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.sahara_ctx*, %struct.sahara_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FLAGS_NEW_KEY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %128

19:                                               ; preds = %1
  %20 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %21 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sahara_ctx*, %struct.sahara_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sahara_ctx*, %struct.sahara_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @memcpy(i32 %22, i32 %25, i64 %28)
  %30 = load i32, i32* @FLAGS_NEW_KEY, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.sahara_ctx*, %struct.sahara_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %37 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FLAGS_CBC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %19
  %43 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %44 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %45 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %44, i32 0, i32 7
  %46 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %46, i64 %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i64 %43, i64* %51, align 8
  %52 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %53 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %52, i32 0, i32 12
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %56 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %55, i32 0, i32 7
  %57 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %57, i64 %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 5
  store i64 %54, i64* %62, align 8
  br label %80

63:                                               ; preds = %19
  %64 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %65 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %64, i32 0, i32 7
  %66 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %66, i64 %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %73 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %72, i32 0, i32 7
  %74 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %74, i64 %76
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %63, %42
  %81 = load %struct.sahara_ctx*, %struct.sahara_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %85 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %84, i32 0, i32 7
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %86, i64 %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i64 %83, i64* %91, align 8
  %92 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %93 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %92, i32 0, i32 11
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %96 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %95, i32 0, i32 7
  %97 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %97, i64 %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  store i64 %94, i64* %102, align 8
  %103 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %104 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %103, i32 0, i32 6
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %109 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %108, i32 0, i32 7
  %110 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %110, i64 %112
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i64 %107, i64* %115, align 8
  %116 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %117 = call i32 @sahara_aes_key_hdr(%struct.sahara_dev* %116)
  %118 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %119 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %118, i32 0, i32 7
  %120 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %120, i64 %122
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  store i32 %117, i32* %125, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %80, %1
  %129 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %130 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %129, i32 0, i32 3
  %131 = load %struct.scatterlist*, %struct.scatterlist** %130, align 8
  %132 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %133 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %132, i32 0, i32 8
  %134 = load i64, i64* %133, align 8
  %135 = call i8* @sg_nents_for_len(%struct.scatterlist* %131, i64 %134)
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %138 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %140 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %128
  %144 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %145 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, ...) @dev_err(i32 %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %148 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %149 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %2, align 4
  br label %499

151:                                              ; preds = %128
  %152 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %153 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %152, i32 0, i32 5
  %154 = load %struct.scatterlist*, %struct.scatterlist** %153, align 8
  %155 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %156 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %155, i32 0, i32 8
  %157 = load i64, i64* %156, align 8
  %158 = call i8* @sg_nents_for_len(%struct.scatterlist* %154, i64 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %161 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %163 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %151
  %167 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %168 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i32, i8*, ...) @dev_err(i32 %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %171 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %172 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %2, align 4
  br label %499

174:                                              ; preds = %151
  %175 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %176 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %179 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %177, %180
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* @SAHARA_MAX_HW_LINK, align 8
  %184 = icmp sgt i64 %182, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %174
  %186 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %187 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %190 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %193 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %191, %194
  %196 = call i32 (i32, i8*, ...) @dev_err(i32 %188, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %2, align 4
  br label %499

199:                                              ; preds = %174
  %200 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %201 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %204 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %203, i32 0, i32 3
  %205 = load %struct.scatterlist*, %struct.scatterlist** %204, align 8
  %206 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %207 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = load i32, i32* @DMA_TO_DEVICE, align 4
  %211 = call i32 @dma_map_sg(i32 %202, %struct.scatterlist* %205, i64 %209, i32 %210)
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %214 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %212, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %199
  %218 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %219 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = call i32 (i32, i8*, ...) @dev_err(i32 %220, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %485

222:                                              ; preds = %199
  %223 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %224 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %227 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %226, i32 0, i32 5
  %228 = load %struct.scatterlist*, %struct.scatterlist** %227, align 8
  %229 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %230 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %234 = call i32 @dma_map_sg(i32 %225, %struct.scatterlist* %228, i64 %232, i32 %233)
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %6, align 4
  %236 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %237 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %235, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %222
  %241 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %242 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (i32, i8*, ...) @dev_err(i32 %243, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %473

245:                                              ; preds = %222
  %246 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %247 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %246, i32 0, i32 9
  %248 = load i64*, i64** %247, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %252 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %251, i32 0, i32 7
  %253 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %253, i64 %255
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 5
  store i64 %250, i64* %258, align 8
  %259 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %260 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %259, i32 0, i32 3
  %261 = load %struct.scatterlist*, %struct.scatterlist** %260, align 8
  store %struct.scatterlist* %261, %struct.scatterlist** %5, align 8
  store i32 0, i32* %7, align 4
  br label %262

262:                                              ; preds = %326, %245
  %263 = load i32, i32* %7, align 4
  %264 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %265 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp slt i32 %263, %266
  br i1 %267, label %268, label %329

268:                                              ; preds = %262
  %269 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %270 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %273 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %272, i32 0, i32 10
  %274 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %273, align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %274, i64 %276
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 2
  store i32 %271, i32* %279, align 4
  %280 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %281 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %284 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %283, i32 0, i32 10
  %285 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %284, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %285, i64 %287
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 1
  store i32 %282, i32* %290, align 8
  %291 = load i32, i32* %7, align 4
  %292 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %293 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = sub nsw i32 %294, 1
  %296 = icmp eq i32 %291, %295
  br i1 %296, label %297, label %306

297:                                              ; preds = %268
  %298 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %299 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %298, i32 0, i32 10
  %300 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %299, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %300, i64 %302
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  store i64 0, i64* %305, align 8
  br label %325

306:                                              ; preds = %268
  %307 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %308 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %307, i32 0, i32 9
  %309 = load i64*, i64** %308, align 8
  %310 = load i32, i32* %7, align 4
  %311 = add nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i64, i64* %309, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %316 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %315, i32 0, i32 10
  %317 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %316, align 8
  %318 = load i32, i32* %7, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %317, i64 %319
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 0
  store i64 %314, i64* %322, align 8
  %323 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %324 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %323)
  store %struct.scatterlist* %324, %struct.scatterlist** %5, align 8
  br label %325

325:                                              ; preds = %306, %297
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %7, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %7, align 4
  br label %262

329:                                              ; preds = %262
  %330 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %331 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %330, i32 0, i32 9
  %332 = load i64*, i64** %331, align 8
  %333 = load i32, i32* %7, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i64, i64* %332, i64 %334
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %338 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %337, i32 0, i32 7
  %339 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %338, align 8
  %340 = load i32, i32* %9, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %339, i64 %341
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 4
  store i64 %336, i64* %344, align 8
  %345 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %346 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %345, i32 0, i32 5
  %347 = load %struct.scatterlist*, %struct.scatterlist** %346, align 8
  store %struct.scatterlist* %347, %struct.scatterlist** %5, align 8
  %348 = load i32, i32* %7, align 4
  store i32 %348, i32* %8, align 4
  br label %349

349:                                              ; preds = %417, %329
  %350 = load i32, i32* %8, align 4
  %351 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %352 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* %7, align 4
  %355 = add nsw i32 %353, %354
  %356 = icmp slt i32 %350, %355
  br i1 %356, label %357, label %420

357:                                              ; preds = %349
  %358 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %359 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %362 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %361, i32 0, i32 10
  %363 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %362, align 8
  %364 = load i32, i32* %8, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %363, i64 %365
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 2
  store i32 %360, i32* %368, align 4
  %369 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %370 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %373 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %372, i32 0, i32 10
  %374 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %373, align 8
  %375 = load i32, i32* %8, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %374, i64 %376
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 1
  store i32 %371, i32* %379, align 8
  %380 = load i32, i32* %8, align 4
  %381 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %382 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* %7, align 4
  %385 = add nsw i32 %383, %384
  %386 = sub nsw i32 %385, 1
  %387 = icmp eq i32 %380, %386
  br i1 %387, label %388, label %397

388:                                              ; preds = %357
  %389 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %390 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %389, i32 0, i32 10
  %391 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %390, align 8
  %392 = load i32, i32* %8, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %391, i64 %393
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  store i64 0, i64* %396, align 8
  br label %416

397:                                              ; preds = %357
  %398 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %399 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %398, i32 0, i32 9
  %400 = load i64*, i64** %399, align 8
  %401 = load i32, i32* %8, align 4
  %402 = add nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64, i64* %400, i64 %403
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %407 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %406, i32 0, i32 10
  %408 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %407, align 8
  %409 = load i32, i32* %8, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %408, i64 %410
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 0
  store i64 %405, i64* %413, align 8
  %414 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %415 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %414)
  store %struct.scatterlist* %415, %struct.scatterlist** %5, align 8
  br label %416

416:                                              ; preds = %397, %388
  br label %417

417:                                              ; preds = %416
  %418 = load i32, i32* %8, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %8, align 4
  br label %349

420:                                              ; preds = %349
  %421 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %422 = call i32 @sahara_aes_data_link_hdr(%struct.sahara_dev* %421)
  %423 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %424 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %423, i32 0, i32 7
  %425 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %424, align 8
  %426 = load i32, i32* %9, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %425, i64 %427
  %429 = load %struct.TYPE_3__*, %struct.TYPE_3__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 3
  store i32 %422, i32* %430, align 8
  %431 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %432 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %431, i32 0, i32 8
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %435 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %434, i32 0, i32 7
  %436 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %435, align 8
  %437 = load i32, i32* %9, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %436, i64 %438
  %440 = load %struct.TYPE_3__*, %struct.TYPE_3__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %440, i32 0, i32 2
  store i64 %433, i64* %441, align 8
  %442 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %443 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %442, i32 0, i32 8
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %446 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %445, i32 0, i32 7
  %447 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %446, align 8
  %448 = load i32, i32* %9, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %447, i64 %449
  %451 = load %struct.TYPE_3__*, %struct.TYPE_3__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %451, i32 0, i32 1
  store i64 %444, i64* %452, align 8
  %453 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %454 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %453, i32 0, i32 7
  %455 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %454, align 8
  %456 = load i32, i32* %9, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %455, i64 %457
  %459 = load %struct.TYPE_3__*, %struct.TYPE_3__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %459, i32 0, i32 0
  store i64 0, i64* %460, align 8
  %461 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %462 = call i32 @sahara_dump_descriptors(%struct.sahara_dev* %461)
  %463 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %464 = call i32 @sahara_dump_links(%struct.sahara_dev* %463)
  %465 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %466 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %467 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %466, i32 0, i32 6
  %468 = load i64*, i64** %467, align 8
  %469 = getelementptr inbounds i64, i64* %468, i64 0
  %470 = load i64, i64* %469, align 8
  %471 = load i32, i32* @SAHARA_REG_DAR, align 4
  %472 = call i32 @sahara_write(%struct.sahara_dev* %465, i64 %470, i32 %471)
  store i32 0, i32* %2, align 4
  br label %499

473:                                              ; preds = %240
  %474 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %475 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 8
  %477 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %478 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %477, i32 0, i32 5
  %479 = load %struct.scatterlist*, %struct.scatterlist** %478, align 8
  %480 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %481 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 8
  %483 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %484 = call i32 @dma_unmap_sg(i32 %476, %struct.scatterlist* %479, i32 %482, i32 %483)
  br label %485

485:                                              ; preds = %473, %217
  %486 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %487 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %486, i32 0, i32 4
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %490 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %489, i32 0, i32 3
  %491 = load %struct.scatterlist*, %struct.scatterlist** %490, align 8
  %492 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %493 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @DMA_TO_DEVICE, align 4
  %496 = call i32 @dma_unmap_sg(i32 %488, %struct.scatterlist* %491, i32 %494, i32 %495)
  %497 = load i32, i32* @EINVAL, align 4
  %498 = sub nsw i32 0, %497
  store i32 %498, i32* %2, align 4
  br label %499

499:                                              ; preds = %485, %420, %185, %166, %143
  %500 = load i32, i32* %2, align 4
  ret i32 %500
}

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @sahara_aes_key_hdr(%struct.sahara_dev*) #1

declare dso_local i8* @sg_nents_for_len(%struct.scatterlist*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @sahara_aes_data_link_hdr(%struct.sahara_dev*) #1

declare dso_local i32 @sahara_dump_descriptors(%struct.sahara_dev*) #1

declare dso_local i32 @sahara_dump_links(%struct.sahara_dev*) #1

declare dso_local i32 @sahara_write(%struct.sahara_dev*, i64, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
