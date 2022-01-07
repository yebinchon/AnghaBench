; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i32* }
%struct.amdgpu_kiq = type { i32, i32 }
%struct.amdgpu_device = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, %struct.amdgpu_kiq, %struct.TYPE_9__, i32, %struct.amdgpu_ring*, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.amdgpu_device*)* }
%struct.TYPE_8__ = type { i32 }

@SOC15_IH_CLIENTID_GRBM_CP = common dso_local global i32 0, align 4
@GFX_9_0__SRCID__CP_EOP_INTERRUPT = common dso_local global i32 0, align 4
@GFX_9_0__SRCID__CP_PRIV_REG_FAULT = common dso_local global i32 0, align 4
@GFX_9_0__SRCID__CP_PRIV_INSTR_FAULT = common dso_local global i32 0, align 4
@GFX_9_0__SRCID__CP_ECC_ERROR = common dso_local global i32 0, align 4
@GFX_9_0__SRCID__CP_FUE_ERROR = common dso_local global i32 0, align 4
@AMDGPU_GFX_NORMAL_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to load gfx firmware!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to init rlc BOs!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to init MEC BOs!\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"gfx\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"gfx_%d\00", align 1
@AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP = common dso_local global i32 0, align 4
@GFX9_MEC_HPD_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to init KIQ BOs!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v9_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_sw_init(i8* %0) #0 {
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
  switch i32 %16, label %22 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
    i32 132, label %17
    i32 133, label %17
    i32 131, label %17
  ]

17:                                               ; preds = %1, %1, %1, %1, %1, %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32 2, i32* %21, align 8
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  store i32 4, i32* %31, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  store i32 8, i32* %35, align 8
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %37 = load i32, i32* @SOC15_IH_CLIENTID_GRBM_CP, align 4
  %38 = load i32, i32* @GFX_9_0__SRCID__CP_EOP_INTERRUPT, align 4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  %42 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %36, i32 %37, i32 %38, i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %296

47:                                               ; preds = %27
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %49 = load i32, i32* @SOC15_IH_CLIENTID_GRBM_CP, align 4
  %50 = load i32, i32* @GFX_9_0__SRCID__CP_PRIV_REG_FAULT, align 4
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 10
  %54 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %48, i32 %49, i32 %50, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %296

59:                                               ; preds = %47
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %61 = load i32, i32* @SOC15_IH_CLIENTID_GRBM_CP, align 4
  %62 = load i32, i32* @GFX_9_0__SRCID__CP_PRIV_INSTR_FAULT, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 9
  %66 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %60, i32 %61, i32 %62, i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %296

71:                                               ; preds = %59
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %73 = load i32, i32* @SOC15_IH_CLIENTID_GRBM_CP, align 4
  %74 = load i32, i32* @GFX_9_0__SRCID__CP_ECC_ERROR, align 4
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 8
  %78 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %72, i32 %73, i32 %74, i32* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %296

83:                                               ; preds = %71
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %85 = load i32, i32* @SOC15_IH_CLIENTID_GRBM_CP, align 4
  %86 = load i32, i32* @GFX_9_0__SRCID__CP_FUE_ERROR, align 4
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 8
  %90 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %84, i32 %85, i32 %86, i32* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %296

95:                                               ; preds = %83
  %96 = load i32, i32* @AMDGPU_GFX_NORMAL_MODE, align 4
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 7
  store i32 %96, i32* %99, align 8
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %101 = call i32 @gfx_v9_0_scratch_init(%struct.amdgpu_device* %100)
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %103 = call i32 @gfx_v9_0_init_microcode(%struct.amdgpu_device* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %296

109:                                              ; preds = %95
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %115, align 8
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %118 = call i32 %116(%struct.amdgpu_device* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %109
  %122 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %296

124:                                              ; preds = %109
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %126 = call i32 @gfx_v9_0_mec_init(%struct.amdgpu_device* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %2, align 4
  br label %296

132:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %185, %132
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %134, %138
  br i1 %139, label %140, label %188

140:                                              ; preds = %133
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 5
  %144 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %144, i64 %146
  store %struct.amdgpu_ring* %147, %struct.amdgpu_ring** %9, align 8
  %148 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %149 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %148, i32 0, i32 3
  store i32* null, i32** %149, align 8
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %140
  %153 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %154 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i32, i8*, ...) @sprintf(i32 %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %163

157:                                              ; preds = %140
  %158 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %159 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = call i32 (i32, i8*, ...) @sprintf(i32 %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %157, %152
  %164 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %165 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %167 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = shl i32 %169, 1
  %171 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %172 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %174 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %176 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 4
  %178 = load i32, i32* @AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP, align 4
  %179 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %173, %struct.amdgpu_ring* %174, i32 1024, i32* %177, i32 %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %163
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %2, align 4
  br label %296

184:                                              ; preds = %163
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %4, align 4
  br label %133

188:                                              ; preds = %133
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %189

189:                                              ; preds = %245, %188
  %190 = load i32, i32* %4, align 4
  %191 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %192 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %190, %195
  br i1 %196, label %197, label %248

197:                                              ; preds = %189
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %241, %197
  %199 = load i32, i32* %5, align 4
  %200 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %201 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %199, %204
  br i1 %205, label %206, label %244

206:                                              ; preds = %198
  store i32 0, i32* %6, align 4
  br label %207

207:                                              ; preds = %237, %206
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %210 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %208, %213
  br i1 %214, label %215, label %240

215:                                              ; preds = %207
  %216 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @amdgpu_gfx_is_mec_queue_enabled(%struct.amdgpu_device* %216, i32 %217, i32 %218, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %215
  br label %237

223:                                              ; preds = %215
  %224 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @gfx_v9_0_compute_ring_init(%struct.amdgpu_device* %224, i32 %225, i32 %226, i32 %227, i32 %228)
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %223
  %233 = load i32, i32* %7, align 4
  store i32 %233, i32* %2, align 4
  br label %296

234:                                              ; preds = %223
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %237

237:                                              ; preds = %234, %222
  %238 = load i32, i32* %6, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %6, align 4
  br label %207

240:                                              ; preds = %207
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %5, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %5, align 4
  br label %198

244:                                              ; preds = %198
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %4, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %4, align 4
  br label %189

248:                                              ; preds = %189
  %249 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %250 = load i32, i32* @GFX9_MEC_HPD_SIZE, align 4
  %251 = call i32 @amdgpu_gfx_kiq_init(%struct.amdgpu_device* %249, i32 %250)
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* %7, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %256 = load i32, i32* %7, align 4
  store i32 %256, i32* %2, align 4
  br label %296

257:                                              ; preds = %248
  %258 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %259 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 2
  store %struct.amdgpu_kiq* %260, %struct.amdgpu_kiq** %10, align 8
  %261 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %262 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %10, align 8
  %263 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %262, i32 0, i32 1
  %264 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %10, align 8
  %265 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %264, i32 0, i32 0
  %266 = call i32 @amdgpu_gfx_kiq_init_ring(%struct.amdgpu_device* %261, i32* %263, i32* %265)
  store i32 %266, i32* %7, align 4
  %267 = load i32, i32* %7, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %257
  %270 = load i32, i32* %7, align 4
  store i32 %270, i32* %2, align 4
  br label %296

271:                                              ; preds = %257
  %272 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %273 = call i32 @amdgpu_gfx_mqd_sw_init(%struct.amdgpu_device* %272, i32 4)
  store i32 %273, i32* %7, align 4
  %274 = load i32, i32* %7, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load i32, i32* %7, align 4
  store i32 %277, i32* %2, align 4
  br label %296

278:                                              ; preds = %271
  %279 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %280 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 1
  store i32 32768, i32* %281, align 4
  %282 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %283 = call i32 @gfx_v9_0_gpu_early_init(%struct.amdgpu_device* %282)
  store i32 %283, i32* %7, align 4
  %284 = load i32, i32* %7, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %278
  %287 = load i32, i32* %7, align 4
  store i32 %287, i32* %2, align 4
  br label %296

288:                                              ; preds = %278
  %289 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %290 = call i32 @gfx_v9_0_ngg_init(%struct.amdgpu_device* %289)
  store i32 %290, i32* %7, align 4
  %291 = load i32, i32* %7, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %288
  %294 = load i32, i32* %7, align 4
  store i32 %294, i32* %2, align 4
  br label %296

295:                                              ; preds = %288
  store i32 0, i32* %2, align 4
  br label %296

296:                                              ; preds = %295, %293, %286, %276, %269, %254, %232, %182, %129, %121, %106, %93, %81, %69, %57, %45
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @gfx_v9_0_scratch_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_init_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @gfx_v9_0_mec_init(%struct.amdgpu_device*) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

declare dso_local i32 @amdgpu_gfx_is_mec_queue_enabled(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @gfx_v9_0_compute_ring_init(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_gfx_kiq_init(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_gfx_kiq_init_ring(%struct.amdgpu_device*, i32*, i32*) #1

declare dso_local i32 @amdgpu_gfx_mqd_sw_init(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v9_0_gpu_early_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_ngg_init(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
