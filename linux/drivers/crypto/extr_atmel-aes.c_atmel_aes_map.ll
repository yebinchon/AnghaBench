; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i64, i64, %struct.TYPE_4__, i32, %struct.TYPE_4__, i32, %struct.scatterlist, %struct.TYPE_3__*, %struct.scatterlist* }
%struct.TYPE_4__ = type { i32, %struct.scatterlist*, i8*, i64 }
%struct.scatterlist = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*, %struct.scatterlist*, %struct.scatterlist*, i64)* @atmel_aes_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_map(%struct.atmel_aes_dev* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_aes_dev*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %15 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %17 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %18 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store %struct.scatterlist* %16, %struct.scatterlist** %19, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %21 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %22 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store %struct.scatterlist* %20, %struct.scatterlist** %23, align 8
  %24 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %25 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %26 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %25, i32 0, i32 8
  store %struct.scatterlist* %24, %struct.scatterlist** %26, align 8
  %27 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %31 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %30, i32 0, i32 2
  %32 = call i32 @atmel_aes_check_aligned(%struct.atmel_aes_dev* %27, %struct.scatterlist* %28, i64 %29, %struct.TYPE_4__* %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %34 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %35 = icmp eq %struct.scatterlist* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %11, align 4
  br label %45

38:                                               ; preds = %4
  %39 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %40 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %43 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %42, i32 0, i32 4
  %44 = call i32 @atmel_aes_check_aligned(%struct.atmel_aes_dev* %39, %struct.scatterlist* %40, i64 %41, %struct.TYPE_4__* %43)
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %38, %36
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %120, label %51

51:                                               ; preds = %48, %45
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %54 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %53, i32 0, i32 7
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @atmel_aes_padlen(i64 %52, i32 %57)
  store i64 %58, i64* %12, align 8
  %59 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %60 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %12, align 8
  %64 = add i64 %62, %63
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %51
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %228

69:                                               ; preds = %51
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %69
  %73 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %74 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %75 = call i32 @sg_nents(%struct.scatterlist* %74)
  %76 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %77 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @sg_copy_to_buffer(%struct.scatterlist* %73, i32 %75, i32 %78, i64 %79)
  %81 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %82 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %81, i32 0, i32 6
  %83 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %84 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store %struct.scatterlist* %82, %struct.scatterlist** %85, align 8
  %86 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %87 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %90 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %72, %69
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %92
  %96 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %97 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %96, i32 0, i32 6
  %98 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %99 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store %struct.scatterlist* %97, %struct.scatterlist** %100, align 8
  %101 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %102 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %105 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %95, %92
  %108 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %109 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %108, i32 0, i32 6
  %110 = call i32 @sg_init_table(%struct.scatterlist* %109, i32 1)
  %111 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %112 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %111, i32 0, i32 6
  %113 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %114 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %116, %117
  %119 = call i32 @sg_set_buf(%struct.scatterlist* %112, i32 %115, i64 %118)
  br label %120

120:                                              ; preds = %107, %48
  %121 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %122 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load %struct.scatterlist*, %struct.scatterlist** %123, align 8
  %125 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %126 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load %struct.scatterlist*, %struct.scatterlist** %127, align 8
  %129 = icmp eq %struct.scatterlist* %124, %128
  br i1 %129, label %130, label %163

130:                                              ; preds = %120
  %131 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %132 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %135 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load %struct.scatterlist*, %struct.scatterlist** %136, align 8
  %138 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %139 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %143 = call i8* @dma_map_sg(i32 %133, %struct.scatterlist* %137, i32 %141, i32 %142)
  %144 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %145 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  store i8* %143, i8** %146, align 8
  %147 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %148 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %152 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  store i8* %150, i8** %153, align 8
  %154 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %155 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %130
  %160 = load i32, i32* @EFAULT, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %5, align 4
  br label %228

162:                                              ; preds = %130
  br label %227

163:                                              ; preds = %120
  %164 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %165 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %168 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load %struct.scatterlist*, %struct.scatterlist** %169, align 8
  %171 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %172 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @DMA_TO_DEVICE, align 4
  %176 = call i8* @dma_map_sg(i32 %166, %struct.scatterlist* %170, i32 %174, i32 %175)
  %177 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %178 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  store i8* %176, i8** %179, align 8
  %180 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %181 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %163
  %186 = load i32, i32* @EFAULT, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %5, align 4
  br label %228

188:                                              ; preds = %163
  %189 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %190 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %193 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load %struct.scatterlist*, %struct.scatterlist** %194, align 8
  %196 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %197 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %201 = call i8* @dma_map_sg(i32 %191, %struct.scatterlist* %195, i32 %199, i32 %200)
  %202 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %203 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  store i8* %201, i8** %204, align 8
  %205 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %206 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %226, label %210

210:                                              ; preds = %188
  %211 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %212 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %215 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  %217 = load %struct.scatterlist*, %struct.scatterlist** %216, align 8
  %218 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %219 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @DMA_TO_DEVICE, align 4
  %223 = call i32 @dma_unmap_sg(i32 %213, %struct.scatterlist* %217, i32 %221, i32 %222)
  %224 = load i32, i32* @EFAULT, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %5, align 4
  br label %228

226:                                              ; preds = %188
  br label %227

227:                                              ; preds = %226, %162
  store i32 0, i32* %5, align 4
  br label %228

228:                                              ; preds = %227, %210, %185, %159, %66
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

declare dso_local i32 @atmel_aes_check_aligned(%struct.atmel_aes_dev*, %struct.scatterlist*, i64, %struct.TYPE_4__*) #1

declare dso_local i64 @atmel_aes_padlen(i64, i32) #1

declare dso_local i32 @sg_copy_to_buffer(%struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i64) #1

declare dso_local i8* @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
