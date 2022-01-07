; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_reqmanager.c_setup_sgio_components.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_reqmanager.c_setup_sgio_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.buf_ptr = type { i64, i32, i32 }
%struct.sglist_component = type { i8*, %struct.TYPE_4__, i8*, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [28 x i8] c"Input List pointer is NULL\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"DMA map kernel buffer failed for component: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_vf*, %struct.buf_ptr*, i32, i32*)* @setup_sgio_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_sgio_components(%struct.cpt_vf* %0, %struct.buf_ptr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpt_vf*, align 8
  %7 = alloca %struct.buf_ptr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sglist_component*, align 8
  %15 = alloca %struct.pci_dev*, align 8
  store %struct.cpt_vf* %0, %struct.cpt_vf** %6, align 8
  store %struct.buf_ptr* %1, %struct.buf_ptr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.sglist_component* null, %struct.sglist_component** %14, align 8
  %16 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %17 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %15, align 8
  %19 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %20 = icmp ne %struct.buf_ptr* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %324

31:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %87, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %90

36:                                               ; preds = %32
  %37 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %37, i64 %39
  %41 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %36
  %46 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %48, i64 %50
  %52 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %54, i64 %56
  %58 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %61 = call i64 @dma_map_single(i32* %47, i32 %53, i32 %59, i32 %60)
  %62 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %62, i64 %64
  %66 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %65, i32 0, i32 0
  store i64 %61, i64* %66, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %69, i64 %71
  %73 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @dma_mapping_error(i32* %68, i64 %74)
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %45
  %79 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %11, align 4
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %283

85:                                               ; preds = %45
  br label %86

86:                                               ; preds = %85, %36
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %32

90:                                               ; preds = %32
  %91 = load i32, i32* %8, align 4
  %92 = sdiv i32 %91, 4
  store i32 %92, i32* %13, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = bitcast i32* %93 to %struct.sglist_component*
  store %struct.sglist_component* %94, %struct.sglist_component** %14, align 8
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %198, %90
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %201

99:                                               ; preds = %95
  %100 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 %101, 4
  %103 = add nsw i32 %102, 0
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %100, i64 %104
  %106 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @cpu_to_be16(i32 %107)
  %109 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %110 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i8* %108, i8** %112, align 8
  %113 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %114 = load i32, i32* %11, align 4
  %115 = mul nsw i32 %114, 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %113, i64 %117
  %119 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @cpu_to_be16(i32 %120)
  %122 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %123 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i8* %121, i8** %125, align 8
  %126 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %127 = load i32, i32* %11, align 4
  %128 = mul nsw i32 %127, 4
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %126, i64 %130
  %132 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @cpu_to_be16(i32 %133)
  %135 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %136 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  store i8* %134, i8** %138, align 8
  %139 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %140 = load i32, i32* %11, align 4
  %141 = mul nsw i32 %140, 4
  %142 = add nsw i32 %141, 3
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %139, i64 %143
  %145 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @cpu_to_be16(i32 %146)
  %148 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %149 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  store i8* %147, i8** %151, align 8
  %152 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %153 = load i32, i32* %11, align 4
  %154 = mul nsw i32 %153, 4
  %155 = add nsw i32 %154, 0
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %152, i64 %156
  %158 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i8* @cpu_to_be64(i64 %159)
  %161 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %162 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %164 = load i32, i32* %11, align 4
  %165 = mul nsw i32 %164, 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %163, i64 %167
  %169 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i8* @cpu_to_be64(i64 %170)
  %172 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %173 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  %174 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %175 = load i32, i32* %11, align 4
  %176 = mul nsw i32 %175, 4
  %177 = add nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %174, i64 %178
  %180 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i8* @cpu_to_be64(i64 %181)
  %183 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %184 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %183, i32 0, i32 3
  store i8* %182, i8** %184, align 8
  %185 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %186 = load i32, i32* %11, align 4
  %187 = mul nsw i32 %186, 4
  %188 = add nsw i32 %187, 3
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %185, i64 %189
  %191 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i8* @cpu_to_be64(i64 %192)
  %194 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %195 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %194, i32 0, i32 4
  store i8* %193, i8** %195, align 8
  %196 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %197 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %196, i32 1
  store %struct.sglist_component* %197, %struct.sglist_component** %14, align 8
  br label %198

198:                                              ; preds = %99
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %95

201:                                              ; preds = %95
  %202 = load i32, i32* %8, align 4
  %203 = srem i32 %202, 4
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  switch i32 %204, label %280 [
    i32 3, label %205
    i32 2, label %230
    i32 1, label %255
  ]

205:                                              ; preds = %201
  %206 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %207 = load i32, i32* %11, align 4
  %208 = mul nsw i32 %207, 4
  %209 = add nsw i32 %208, 2
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %206, i64 %210
  %212 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i8* @cpu_to_be16(i32 %213)
  %215 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %216 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 2
  store i8* %214, i8** %218, align 8
  %219 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %220 = load i32, i32* %11, align 4
  %221 = mul nsw i32 %220, 4
  %222 = add nsw i32 %221, 2
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %219, i64 %223
  %225 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i8* @cpu_to_be64(i64 %226)
  %228 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %229 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %228, i32 0, i32 3
  store i8* %227, i8** %229, align 8
  br label %230

230:                                              ; preds = %201, %205
  %231 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %232 = load i32, i32* %11, align 4
  %233 = mul nsw i32 %232, 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %231, i64 %235
  %237 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i8* @cpu_to_be16(i32 %238)
  %240 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %241 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 1
  store i8* %239, i8** %243, align 8
  %244 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %245 = load i32, i32* %11, align 4
  %246 = mul nsw i32 %245, 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %244, i64 %248
  %250 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = call i8* @cpu_to_be64(i64 %251)
  %253 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %254 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %253, i32 0, i32 2
  store i8* %252, i8** %254, align 8
  br label %255

255:                                              ; preds = %201, %230
  %256 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %257 = load i32, i32* %11, align 4
  %258 = mul nsw i32 %257, 4
  %259 = add nsw i32 %258, 0
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %256, i64 %260
  %262 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i8* @cpu_to_be16(i32 %263)
  %265 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %266 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  store i8* %264, i8** %268, align 8
  %269 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %270 = load i32, i32* %11, align 4
  %271 = mul nsw i32 %270, 4
  %272 = add nsw i32 %271, 0
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %269, i64 %273
  %275 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call i8* @cpu_to_be64(i64 %276)
  %278 = load %struct.sglist_component*, %struct.sglist_component** %14, align 8
  %279 = getelementptr inbounds %struct.sglist_component, %struct.sglist_component* %278, i32 0, i32 0
  store i8* %277, i8** %279, align 8
  br label %281

280:                                              ; preds = %201
  br label %281

281:                                              ; preds = %280, %255
  %282 = load i32, i32* %10, align 4
  store i32 %282, i32* %5, align 4
  br label %324

283:                                              ; preds = %78
  store i32 0, i32* %12, align 4
  br label %284

284:                                              ; preds = %319, %283
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %11, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %322

288:                                              ; preds = %284
  %289 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %290 = load i32, i32* %12, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %289, i64 %291
  %293 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %313

296:                                              ; preds = %288
  %297 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %298 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %297, i32 0, i32 0
  %299 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %300 = load i32, i32* %11, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %299, i64 %301
  %303 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %306 = load i32, i32* %11, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %305, i64 %307
  %309 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %312 = call i32 @dma_unmap_single(i32* %298, i64 %304, i32 %310, i32 %311)
  br label %313

313:                                              ; preds = %296, %288
  %314 = load %struct.buf_ptr*, %struct.buf_ptr** %7, align 8
  %315 = load i32, i32* %12, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %314, i64 %316
  %318 = getelementptr inbounds %struct.buf_ptr, %struct.buf_ptr* %317, i32 0, i32 0
  store i64 0, i64* %318, align 8
  br label %319

319:                                              ; preds = %313
  %320 = load i32, i32* %12, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %12, align 4
  br label %284

322:                                              ; preds = %284
  %323 = load i32, i32* %10, align 4
  store i32 %323, i32* %5, align 4
  br label %324

324:                                              ; preds = %322, %281, %25
  %325 = load i32, i32* %5, align 4
  ret i32 %325
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i64) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
