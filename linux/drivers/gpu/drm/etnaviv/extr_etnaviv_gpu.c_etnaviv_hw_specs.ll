; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_hw_specs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_hw_specs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@chipMinorFeatures0_MORE_MINOR_FEATURES = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_2 = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_3 = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_4 = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_STREAM_COUNT = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_REGISTER_MAX = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_THREAD_COUNT = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_VERTEX_CACHE_SIZE = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_SHADER_CORE_COUNT = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_PIXEL_PIPES = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_VERTEX_OUTPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_2_BUFFER_SIZE = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_2_INSTRUCTION_COUNT = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_2_NUM_CONSTANTS = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_3_VARYINGS_COUNT = common dso_local global i32 0, align 4
@VIVS_HI_CHIP_SPECS_4_STREAM_COUNT = common dso_local global i32 0, align 4
@chipModel_GC400 = common dso_local global i32 0, align 4
@chipModel_GC500 = common dso_local global i32 0, align 4
@chipModel_GC530 = common dso_local global i32 0, align 4
@GC2000 = common dso_local global i32 0, align 4
@chipModel_GC880 = common dso_local global i32 0, align 4
@chipMinorFeatures1_HALTI0 = common dso_local global i32 0, align 4
@GC5000 = common dso_local global i32 0, align 4
@GC4000 = common dso_local global i32 0, align 4
@GC3000 = common dso_local global i32 0, align 4
@GC2200 = common dso_local global i32 0, align 4
@GC2100 = common dso_local global i32 0, align 4
@GC1500 = common dso_local global i32 0, align 4
@GC880 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*)* @etnaviv_hw_specs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_hw_specs(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca %struct.etnaviv_gpu*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %2, align 8
  %5 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %6 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @chipMinorFeatures0_MORE_MINOR_FEATURES, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %129

12:                                               ; preds = %1
  %13 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %14 = load i32, i32* @VIVS_HI_CHIP_SPECS, align 4
  %15 = call i32 @gpu_read(%struct.etnaviv_gpu* %13, i32 %14)
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32 %15, i32* %16, align 16
  %17 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %18 = load i32, i32* @VIVS_HI_CHIP_SPECS_2, align 4
  %19 = call i32 @gpu_read(%struct.etnaviv_gpu* %17, i32 %18)
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %22 = load i32, i32* @VIVS_HI_CHIP_SPECS_3, align 4
  %23 = call i32 @gpu_read(%struct.etnaviv_gpu* %21, i32 %22)
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  store i32 %23, i32* %24, align 8
  %25 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %26 = load i32, i32* @VIVS_HI_CHIP_SPECS_4, align 4
  %27 = call i32 @gpu_read(%struct.etnaviv_gpu* %25, i32 %26)
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = load i32, i32* @VIVS_HI_CHIP_SPECS_STREAM_COUNT, align 4
  %32 = call i8* @etnaviv_field(i32 %30, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %35 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = load i32, i32* @VIVS_HI_CHIP_SPECS_REGISTER_MAX, align 4
  %40 = call i8* @etnaviv_field(i32 %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %43 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = load i32, i32* @VIVS_HI_CHIP_SPECS_THREAD_COUNT, align 4
  %48 = call i8* @etnaviv_field(i32 %46, i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %51 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %54 = load i32, i32* %53, align 16
  %55 = load i32, i32* @VIVS_HI_CHIP_SPECS_VERTEX_CACHE_SIZE, align 4
  %56 = call i8* @etnaviv_field(i32 %54, i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %59 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 8
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = load i32, i32* @VIVS_HI_CHIP_SPECS_SHADER_CORE_COUNT, align 4
  %64 = call i8* @etnaviv_field(i32 %62, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %67 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  store i32 %65, i32* %68, align 4
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = load i32, i32* @VIVS_HI_CHIP_SPECS_PIXEL_PIPES, align 4
  %72 = call i8* @etnaviv_field(i32 %70, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %75 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 6
  store i32 %73, i32* %76, align 8
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %78 = load i32, i32* %77, align 16
  %79 = load i32, i32* @VIVS_HI_CHIP_SPECS_VERTEX_OUTPUT_BUFFER_SIZE, align 4
  %80 = call i8* @etnaviv_field(i32 %78, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %83 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 7
  store i32 %81, i32* %84, align 4
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @VIVS_HI_CHIP_SPECS_2_BUFFER_SIZE, align 4
  %88 = call i8* @etnaviv_field(i32 %86, i32 %87)
  %89 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %90 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 14
  store i8* %88, i8** %91, align 8
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @VIVS_HI_CHIP_SPECS_2_INSTRUCTION_COUNT, align 4
  %95 = call i8* @etnaviv_field(i32 %93, i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %98 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 8
  store i32 %96, i32* %99, align 8
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @VIVS_HI_CHIP_SPECS_2_NUM_CONSTANTS, align 4
  %103 = call i8* @etnaviv_field(i32 %101, i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %106 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 9
  store i32 %104, i32* %107, align 4
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @VIVS_HI_CHIP_SPECS_3_VARYINGS_COUNT, align 4
  %111 = call i8* @etnaviv_field(i32 %109, i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %114 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 10
  store i32 %112, i32* %115, align 8
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @VIVS_HI_CHIP_SPECS_4_STREAM_COUNT, align 4
  %119 = call i8* @etnaviv_field(i32 %117, i32 %118)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %12
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %126 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %12
  br label %129

129:                                              ; preds = %128, %1
  %130 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %131 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %129
  %136 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %137 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 11
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %139, 4096
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %143 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  store i32 4, i32* %144, align 4
  br label %149

145:                                              ; preds = %135
  %146 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %147 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %145, %141
  br label %150

150:                                              ; preds = %149, %129
  %151 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %152 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %158 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = shl i32 1, %160
  %162 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %163 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 8
  br label %181

165:                                              ; preds = %150
  %166 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %167 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @chipModel_GC400, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %174 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  store i32 32, i32* %175, align 8
  br label %180

176:                                              ; preds = %165
  %177 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %178 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  store i32 64, i32* %179, align 8
  br label %180

180:                                              ; preds = %176, %172
  br label %181

181:                                              ; preds = %180, %156
  %182 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %183 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %181
  %188 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %189 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 1, %191
  %193 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %194 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 3
  store i32 %192, i32* %195, align 4
  br label %231

196:                                              ; preds = %181
  %197 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %198 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 11
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @chipModel_GC400, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %205 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 3
  store i32 64, i32* %206, align 4
  br label %230

207:                                              ; preds = %196
  %208 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %209 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 11
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @chipModel_GC500, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %221, label %214

214:                                              ; preds = %207
  %215 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %216 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 11
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @chipModel_GC530, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %214, %207
  %222 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %223 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 3
  store i32 128, i32* %224, align 4
  br label %229

225:                                              ; preds = %214
  %226 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %227 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 3
  store i32 256, i32* %228, align 4
  br label %229

229:                                              ; preds = %225, %221
  br label %230

230:                                              ; preds = %229, %203
  br label %231

231:                                              ; preds = %230, %187
  %232 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %233 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %231
  %238 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %239 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 4
  store i32 8, i32* %240, align 8
  br label %241

241:                                              ; preds = %237, %231
  %242 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %243 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %262

247:                                              ; preds = %241
  %248 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %249 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 11
  %251 = load i32, i32* %250, align 4
  %252 = icmp sge i32 %251, 4096
  br i1 %252, label %253, label %257

253:                                              ; preds = %247
  %254 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %255 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 5
  store i32 2, i32* %256, align 4
  br label %261

257:                                              ; preds = %247
  %258 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %259 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 5
  store i32 1, i32* %260, align 4
  br label %261

261:                                              ; preds = %257, %253
  br label %262

262:                                              ; preds = %261, %241
  %263 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %264 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %262
  %269 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %270 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 6
  store i32 1, i32* %271, align 8
  br label %272

272:                                              ; preds = %268, %262
  %273 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %274 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %272
  %279 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %280 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 4
  %283 = shl i32 1, %282
  %284 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %285 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 7
  store i32 %283, i32* %286, align 4
  br label %325

287:                                              ; preds = %272
  %288 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %289 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 11
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @chipModel_GC400, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %320

294:                                              ; preds = %287
  %295 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %296 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 12
  %298 = load i32, i32* %297, align 8
  %299 = icmp slt i32 %298, 16384
  br i1 %299, label %300, label %304

300:                                              ; preds = %294
  %301 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %302 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 7
  store i32 512, i32* %303, align 4
  br label %319

304:                                              ; preds = %294
  %305 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %306 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 12
  %308 = load i32, i32* %307, align 8
  %309 = icmp slt i32 %308, 16896
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %312 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 7
  store i32 256, i32* %313, align 4
  br label %318

314:                                              ; preds = %304
  %315 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %316 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 7
  store i32 128, i32* %317, align 4
  br label %318

318:                                              ; preds = %314, %310
  br label %319

319:                                              ; preds = %318, %300
  br label %324

320:                                              ; preds = %287
  %321 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %322 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 7
  store i32 512, i32* %323, align 4
  br label %324

324:                                              ; preds = %320, %319
  br label %325

325:                                              ; preds = %324, %278
  %326 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %327 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 8
  %329 = load i32, i32* %328, align 8
  switch i32 %329, label %359 [
    i32 0, label %330
    i32 1, label %351
    i32 2, label %355
  ]

330:                                              ; preds = %325
  %331 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %332 = load i32, i32* @GC2000, align 4
  %333 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %331, i32 %332, i32 20744)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %342, label %335

335:                                              ; preds = %330
  %336 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %337 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 11
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @chipModel_GC880, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %335, %330
  %343 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %344 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 8
  store i32 512, i32* %345, align 8
  br label %350

346:                                              ; preds = %335
  %347 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %348 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 8
  store i32 256, i32* %349, align 8
  br label %350

350:                                              ; preds = %346, %342
  br label %363

351:                                              ; preds = %325
  %352 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %353 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 8
  store i32 1024, i32* %354, align 8
  br label %363

355:                                              ; preds = %325
  %356 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %357 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 8
  store i32 2048, i32* %358, align 8
  br label %363

359:                                              ; preds = %325
  %360 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %361 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 8
  store i32 256, i32* %362, align 8
  br label %363

363:                                              ; preds = %359, %355, %351, %350
  %364 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %365 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 9
  %367 = load i32, i32* %366, align 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %363
  %370 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %371 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %371, i32 0, i32 9
  store i32 168, i32* %372, align 4
  br label %373

373:                                              ; preds = %369, %363
  %374 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %375 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %375, i32 0, i32 10
  %377 = load i32, i32* %376, align 8
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %396

379:                                              ; preds = %373
  %380 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %381 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i32 0, i32 13
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @chipMinorFeatures1_HALTI0, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %379
  %388 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %389 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 10
  store i32 12, i32* %390, align 8
  br label %395

391:                                              ; preds = %379
  %392 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %393 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 10
  store i32 8, i32* %394, align 8
  br label %395

395:                                              ; preds = %391, %387
  br label %396

396:                                              ; preds = %395, %373
  %397 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %398 = load i32, i32* @GC5000, align 4
  %399 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %397, i32 %398, i32 21556)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %451, label %401

401:                                              ; preds = %396
  %402 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %403 = load i32, i32* @GC4000, align 4
  %404 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %402, i32 %403, i32 21026)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %451, label %406

406:                                              ; preds = %401
  %407 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %408 = load i32, i32* @GC4000, align 4
  %409 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %407, i32 %408, i32 21061)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %451, label %411

411:                                              ; preds = %406
  %412 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %413 = load i32, i32* @GC4000, align 4
  %414 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %412, i32 %413, i32 21000)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %451, label %416

416:                                              ; preds = %411
  %417 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %418 = load i32, i32* @GC3000, align 4
  %419 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %417, i32 %418, i32 21557)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %451, label %421

421:                                              ; preds = %416
  %422 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %423 = load i32, i32* @GC2200, align 4
  %424 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %422, i32 %423, i32 21060)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %451, label %426

426:                                              ; preds = %421
  %427 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %428 = load i32, i32* @GC2100, align 4
  %429 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %427, i32 %428, i32 20744)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %451, label %431

431:                                              ; preds = %426
  %432 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %433 = load i32, i32* @GC2000, align 4
  %434 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %432, i32 %433, i32 20744)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %451, label %436

436:                                              ; preds = %431
  %437 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %438 = load i32, i32* @GC1500, align 4
  %439 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %437, i32 %438, i32 21062)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %451, label %441

441:                                              ; preds = %436
  %442 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %443 = load i32, i32* @GC880, align 4
  %444 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %442, i32 %443, i32 20743)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %451, label %446

446:                                              ; preds = %441
  %447 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %448 = load i32, i32* @GC880, align 4
  %449 = call i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu* %447, i32 %448, i32 20742)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %457

451:                                              ; preds = %446, %441, %436, %431, %426, %421, %416, %411, %406, %401, %396
  %452 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %453 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %453, i32 0, i32 10
  %455 = load i32, i32* %454, align 8
  %456 = sub nsw i32 %455, 1
  store i32 %456, i32* %454, align 8
  br label %457

457:                                              ; preds = %451, %446
  ret void
}

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i8* @etnaviv_field(i32, i32) #1

declare dso_local i64 @etnaviv_is_model_rev(%struct.etnaviv_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
