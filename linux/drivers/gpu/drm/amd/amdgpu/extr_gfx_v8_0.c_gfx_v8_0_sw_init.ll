; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i32* }
%struct.amdgpu_kiq = type { i32, i32 }
%struct.amdgpu_device = type { i32, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, %struct.amdgpu_kiq, %struct.TYPE_11__, i32, %struct.amdgpu_ring*, %struct.TYPE_9__, i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.amdgpu_device*)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_CP_END_OF_PIPE = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_CP_PRIV_REG_FAULT = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_CP_PRIV_INSTR_FAULT = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_CP_ECC_ERROR = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_SQ_INTERRUPT_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"amdgpu_irq_add() for SQ failed: %d\0A\00", align 1
@gfx_v8_0_sq_irq_work_func = common dso_local global i32 0, align 4
@AMDGPU_GFX_NORMAL_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to load gfx firmware!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to init rlc BOs!\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to init MEC BOs!\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gfx\00", align 1
@AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP = common dso_local global i32 0, align 4
@GFX8_MEC_HPD_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to init KIQ BOs!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v8_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_ring*, align 8
  %10 = alloca %struct.amdgpu_kiq*, align 8
  %11 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %11, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %23 [
    i32 130, label %17
    i32 136, label %17
    i32 135, label %17
    i32 134, label %17
    i32 133, label %17
    i32 132, label %17
    i32 128, label %17
    i32 129, label %22
    i32 131, label %22
  ]

17:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i32 2, i32* %21, align 8
  br label %28

22:                                               ; preds = %1, %1
  br label %23

23:                                               ; preds = %1, %22
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  store i32 4, i32* %32, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  store i32 8, i32* %36, align 8
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %38 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %39 = load i32, i32* @VISLANDS30_IV_SRCID_CP_END_OF_PIPE, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 4
  %43 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %37, i32 %38, i32 %39, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %28
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %293

48:                                               ; preds = %28
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %50 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %51 = load i32, i32* @VISLANDS30_IV_SRCID_CP_PRIV_REG_FAULT, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 12
  %55 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %49, i32 %50, i32 %51, i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %293

60:                                               ; preds = %48
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %62 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %63 = load i32, i32* @VISLANDS30_IV_SRCID_CP_PRIV_INSTR_FAULT, align 4
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 11
  %67 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %61, i32 %62, i32 %63, i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %293

72:                                               ; preds = %60
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %74 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %75 = load i32, i32* @VISLANDS30_IV_SRCID_CP_ECC_ERROR, align 4
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 10
  %79 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %73, i32 %74, i32 %75, i32* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %293

84:                                               ; preds = %72
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %86 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %87 = load i32, i32* @VISLANDS30_IV_SRCID_SQ_INTERRUPT_MSG, align 4
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 9
  %91 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %85, i32 %86, i32 %87, i32* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %84
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %293

98:                                               ; preds = %84
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* @gfx_v8_0_sq_irq_work_func, align 4
  %104 = call i32 @INIT_WORK(i32* %102, i32 %103)
  %105 = load i32, i32* @AMDGPU_GFX_NORMAL_MODE, align 4
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 7
  store i32 %105, i32* %108, align 8
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %110 = call i32 @gfx_v8_0_scratch_init(%struct.amdgpu_device* %109)
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %112 = call i32 @gfx_v8_0_init_microcode(%struct.amdgpu_device* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %98
  %116 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %293

118:                                              ; preds = %98
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %124, align 8
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %127 = call i32 %125(%struct.amdgpu_device* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %118
  %131 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %293

133:                                              ; preds = %118
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %135 = call i32 @gfx_v8_0_mec_init(%struct.amdgpu_device* %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %2, align 4
  br label %293

141:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %189, %141
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %143, %147
  br i1 %148, label %149, label %192

149:                                              ; preds = %142
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %151 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 5
  %153 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %153, i64 %155
  store %struct.amdgpu_ring* %156, %struct.amdgpu_ring** %9, align 8
  %157 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %158 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %157, i32 0, i32 3
  store i32* null, i32** %158, align 8
  %159 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %160 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @sprintf(i32 %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 129
  br i1 %166, label %167, label %176

167:                                              ; preds = %149
  %168 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %169 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  %170 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %171 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %175 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  br label %176

176:                                              ; preds = %167, %149
  %177 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %178 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %179 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %180 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 4
  %182 = load i32, i32* @AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP, align 4
  %183 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %177, %struct.amdgpu_ring* %178, i32 1024, i32* %181, i32 %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %176
  %187 = load i32, i32* %7, align 4
  store i32 %187, i32* %2, align 4
  br label %293

188:                                              ; preds = %176
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %4, align 4
  br label %142

192:                                              ; preds = %142
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %193

193:                                              ; preds = %249, %192
  %194 = load i32, i32* %4, align 4
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %196 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %194, %199
  br i1 %200, label %201, label %252

201:                                              ; preds = %193
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %245, %201
  %203 = load i32, i32* %5, align 4
  %204 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %205 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = icmp slt i32 %203, %208
  br i1 %209, label %210, label %248

210:                                              ; preds = %202
  store i32 0, i32* %6, align 4
  br label %211

211:                                              ; preds = %241, %210
  %212 = load i32, i32* %6, align 4
  %213 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %214 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %212, %217
  br i1 %218, label %219, label %244

219:                                              ; preds = %211
  %220 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %5, align 4
  %224 = call i32 @amdgpu_gfx_is_mec_queue_enabled(%struct.amdgpu_device* %220, i32 %221, i32 %222, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %219
  br label %241

227:                                              ; preds = %219
  %228 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* %5, align 4
  %233 = call i32 @gfx_v8_0_compute_ring_init(%struct.amdgpu_device* %228, i32 %229, i32 %230, i32 %231, i32 %232)
  store i32 %233, i32* %7, align 4
  %234 = load i32, i32* %7, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = load i32, i32* %7, align 4
  store i32 %237, i32* %2, align 4
  br label %293

238:                                              ; preds = %227
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %8, align 4
  br label %241

241:                                              ; preds = %238, %226
  %242 = load i32, i32* %6, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %6, align 4
  br label %211

244:                                              ; preds = %211
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %5, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %5, align 4
  br label %202

248:                                              ; preds = %202
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %4, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %4, align 4
  br label %193

252:                                              ; preds = %193
  %253 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %254 = load i32, i32* @GFX8_MEC_HPD_SIZE, align 4
  %255 = call i32 @amdgpu_gfx_kiq_init(%struct.amdgpu_device* %253, i32 %254)
  store i32 %255, i32* %7, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %252
  %259 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %260 = load i32, i32* %7, align 4
  store i32 %260, i32* %2, align 4
  br label %293

261:                                              ; preds = %252
  %262 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %263 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 2
  store %struct.amdgpu_kiq* %264, %struct.amdgpu_kiq** %10, align 8
  %265 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %266 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %10, align 8
  %267 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %266, i32 0, i32 1
  %268 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %10, align 8
  %269 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %268, i32 0, i32 0
  %270 = call i32 @amdgpu_gfx_kiq_init_ring(%struct.amdgpu_device* %265, i32* %267, i32* %269)
  store i32 %270, i32* %7, align 4
  %271 = load i32, i32* %7, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %261
  %274 = load i32, i32* %7, align 4
  store i32 %274, i32* %2, align 4
  br label %293

275:                                              ; preds = %261
  %276 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %277 = call i32 @amdgpu_gfx_mqd_sw_init(%struct.amdgpu_device* %276, i32 4)
  store i32 %277, i32* %7, align 4
  %278 = load i32, i32* %7, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %275
  %281 = load i32, i32* %7, align 4
  store i32 %281, i32* %2, align 4
  br label %293

282:                                              ; preds = %275
  %283 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %284 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 1
  store i32 32768, i32* %285, align 4
  %286 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %287 = call i32 @gfx_v8_0_gpu_early_init(%struct.amdgpu_device* %286)
  store i32 %287, i32* %7, align 4
  %288 = load i32, i32* %7, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %282
  %291 = load i32, i32* %7, align 4
  store i32 %291, i32* %2, align 4
  br label %293

292:                                              ; preds = %282
  store i32 0, i32* %2, align 4
  br label %293

293:                                              ; preds = %292, %290, %280, %273, %258, %236, %186, %138, %130, %115, %94, %82, %70, %58, %46
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @gfx_v8_0_scratch_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_init_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_mec_init(%struct.amdgpu_device*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

declare dso_local i32 @amdgpu_gfx_is_mec_queue_enabled(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @gfx_v8_0_compute_ring_init(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_gfx_kiq_init(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_gfx_kiq_init_ring(%struct.amdgpu_device*, i32*, i32*) #1

declare dso_local i32 @amdgpu_gfx_mqd_sw_init(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v8_0_gpu_early_init(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
