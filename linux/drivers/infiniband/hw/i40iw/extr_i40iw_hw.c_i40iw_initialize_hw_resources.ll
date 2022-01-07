; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_initialize_hw_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_initialize_hw_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, %struct.i40iw_qp**, i8*, %struct.i40iw_arp_entry*, %struct.TYPE_6__ }
%struct.i40iw_qp = type { i32 }
%struct.i40iw_arp_entry = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@I40IW_HMC_IW_QP = common dso_local global i64 0, align 8
@I40IW_HMC_IW_CQ = common dso_local global i64 0, align 8
@I40IW_HMC_IW_MR = common dso_local global i64 0, align 8
@I40IW_HMC_IW_ARP = common dso_local global i64 0, align 8
@I40IW_MAX_PDS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_DEVICE_LOCAL_DMA_LKEY = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_WINDOW = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_initialize_hw_resources(%struct.i40iw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  %12 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %13 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %12, i32 0, i32 18
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i64, i64* @I40IW_HMC_IW_QP, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %23 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %22, i32 0, i32 18
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i64, i64* @I40IW_HMC_IW_CQ, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %33 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %32, i32 0, i32 18
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i64, i64* @I40IW_HMC_IW_MR, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %43 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %42, i32 0, i32 18
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* @I40IW_HMC_IW_ARP, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %53 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %52, i32 0, i32 0
  store i32 1048575, i32* %53, align 8
  %54 = load i64, i64* @I40IW_MAX_PDS, align 8
  store i64 %54, i64* %4, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @BITS_TO_LONGS(i32 %59)
  %61 = mul i64 8, %60
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @BITS_TO_LONGS(i32 %66)
  %68 = mul i64 8, %67
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @BITS_TO_LONGS(i32 %73)
  %75 = mul i64 8, %74
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  %80 = load i64, i64* %4, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i64 @BITS_TO_LONGS(i32 %81)
  %83 = mul i64 8, %82
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @BITS_TO_LONGS(i32 %88)
  %90 = mul i64 8, %89
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 8, %96
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i8* @kzalloc(i32 %102, i32 %103)
  %105 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %106 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %105, i32 0, i32 16
  store i8* %104, i8** %106, align 8
  %107 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %108 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %107, i32 0, i32 16
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %1
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %257

114:                                              ; preds = %1
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %117 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %120 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %123 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load i64, i64* %4, align 8
  %125 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %126 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %125, i32 0, i32 4
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %129 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  %130 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %131 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %130, i32 0, i32 16
  %132 = load i8*, i8** %131, align 8
  %133 = bitcast i8* %132 to %struct.i40iw_arp_entry*
  %134 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %135 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %134, i32 0, i32 17
  store %struct.i40iw_arp_entry* %133, %struct.i40iw_arp_entry** %135, align 8
  %136 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %137 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %136, i32 0, i32 16
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 4, %140
  %142 = getelementptr i8, i8* %138, i64 %141
  store i8* %142, i8** %11, align 8
  %143 = load i32, i32* @IB_DEVICE_LOCAL_DMA_LKEY, align 4
  %144 = load i32, i32* @IB_DEVICE_MEM_WINDOW, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %149 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 4
  %150 = load i8*, i8** %11, align 8
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %153 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %152, i32 0, i32 12
  store i32* %151, i32** %153, align 8
  %154 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %155 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %154, i32 0, i32 12
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i64 @BITS_TO_LONGS(i32 %157)
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %161 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %160, i32 0, i32 11
  store i32* %159, i32** %161, align 8
  %162 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %163 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %162, i32 0, i32 11
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i64 @BITS_TO_LONGS(i32 %165)
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %169 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %168, i32 0, i32 14
  store i32* %167, i32** %169, align 8
  %170 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %171 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %170, i32 0, i32 14
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = call i64 @BITS_TO_LONGS(i32 %173)
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %177 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %176, i32 0, i32 10
  store i32* %175, i32** %177, align 8
  %178 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %179 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %178, i32 0, i32 10
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* %4, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i64 @BITS_TO_LONGS(i32 %182)
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %186 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %185, i32 0, i32 13
  store i32* %184, i32** %186, align 8
  %187 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %188 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %187, i32 0, i32 13
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i64 @BITS_TO_LONGS(i32 %190)
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = bitcast i32* %192 to %struct.i40iw_qp**
  %194 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %195 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %194, i32 0, i32 15
  store %struct.i40iw_qp** %193, %struct.i40iw_qp*** %195, align 8
  %196 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %197 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %196, i32 0, i32 14
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @set_bit(i32 0, i32* %198)
  %200 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %201 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %200, i32 0, i32 12
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @set_bit(i32 0, i32* %202)
  %204 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %205 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %204, i32 0, i32 11
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @set_bit(i32 0, i32* %206)
  %208 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %209 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %208, i32 0, i32 10
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @set_bit(i32 0, i32* %210)
  %212 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %213 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %212, i32 0, i32 13
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @set_bit(i32 0, i32* %214)
  %216 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %217 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %216, i32 0, i32 12
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @set_bit(i32 1, i32* %218)
  %220 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %221 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %220, i32 0, i32 11
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @set_bit(i32 1, i32* %222)
  %224 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %225 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %224, i32 0, i32 10
  %226 = load i32*, i32** %225, align 8
  %227 = call i32 @set_bit(i32 1, i32* %226)
  %228 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %229 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %228, i32 0, i32 11
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @set_bit(i32 2, i32* %230)
  %232 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %233 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %232, i32 0, i32 10
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @set_bit(i32 2, i32* %234)
  %236 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %237 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %236, i32 0, i32 9
  %238 = call i32 @spin_lock_init(i32* %237)
  %239 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %240 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %239, i32 0, i32 8
  %241 = call i32 @spin_lock_init(i32* %240)
  %242 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %243 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @get_count_order(i32 %244)
  %246 = call i32 @max(i32 %245, i32 14)
  %247 = sub nsw i32 24, %246
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = shl i32 1, %248
  %250 = sub nsw i32 %249, 1
  %251 = load i32, i32* %10, align 4
  %252 = sub nsw i32 32, %251
  %253 = shl i32 %250, %252
  %254 = xor i32 %253, -1
  %255 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %256 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %255, i32 0, i32 7
  store i32 %254, i32* %256, align 8
  store i32 0, i32* %2, align 4
  br label %257

257:                                              ; preds = %114, %111
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local i64 @BITS_TO_LONGS(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @get_count_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
