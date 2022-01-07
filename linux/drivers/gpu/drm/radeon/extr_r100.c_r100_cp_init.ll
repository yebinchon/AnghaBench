; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_cp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_cp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.radeon_ring*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_ring = type { i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to register debugfs file for CP !\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@RADEON_CP_PACKET2 = common dso_local global i32 0, align 4
@RADEON_RB_BUFSZ = common dso_local global i32 0, align 4
@RADEON_RB_BLKSZ = common dso_local global i32 0, align 4
@RADEON_MAX_FETCH = common dso_local global i32 0, align 4
@RADEON_CP_RB_CNTL = common dso_local global i32 0, align 4
@RADEON_RB_NO_UPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"radeon: ring at 0x%016lX\0A\00", align 1
@RADEON_CP_RB_BASE = common dso_local global i32 0, align 4
@RADEON_RB_RPTR_WR_ENA = common dso_local global i32 0, align 4
@RADEON_CP_RB_RPTR_WR = common dso_local global i32 0, align 4
@RADEON_CP_RB_WPTR = common dso_local global i32 0, align 4
@R_00070C_CP_RB_RPTR_ADDR = common dso_local global i32 0, align 4
@R_000774_SCRATCH_ADDR = common dso_local global i32 0, align 4
@RADEON_WB_SCRATCH_OFFSET = common dso_local global i32 0, align 4
@R_000770_SCRATCH_UMSK = common dso_local global i32 0, align 4
@RADEON_CP_CSQ_MODE = common dso_local global i32 0, align 4
@RADEON_INDIRECT2_START = common dso_local global i32 0, align 4
@RADEON_INDIRECT1_START = common dso_local global i32 0, align 4
@RADEON_CP_RB_WPTR_DELAY = common dso_local global i32 0, align 4
@RADEON_CP_CSQ_CNTL = common dso_local global i32 0, align 4
@RADEON_CSQ_PRIBM_INDBM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"radeon: cp isn't working (%d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"failed to get scratch reg for rptr save (%d).\0A\00", align 1
@RADEON_BUF_SWAP_32BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_cp_init(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %17, align 8
  %19 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %20 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %18, i64 %19
  store %struct.radeon_ring* %20, %struct.radeon_ring** %6, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = call i64 @r100_debugfs_cp_init(%struct.radeon_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %33 = call i32 @r100_cp_init_microcode(%struct.radeon_device* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %3, align 4
  br label %217

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %5, align 4
  %42 = udiv i32 %41, 8
  %43 = call i32 @order_base_2(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  %46 = shl i32 1, %45
  %47 = mul nsw i32 %46, 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %49 = call i32 @r100_cp_load_microcode(%struct.radeon_device* %48)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %54 = load i32, i32* @RADEON_CP_PACKET2, align 4
  %55 = call i32 @radeon_ring_init(%struct.radeon_device* %50, %struct.radeon_ring* %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %40
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %3, align 4
  br label %217

60:                                               ; preds = %40
  store i32 9, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %61, i32 0, i32 0
  store i32 15, i32* %62, align 8
  store i32 64, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 80, i32* %12, align 4
  store i32 16, i32* %13, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = shl i32 %64, 28
  %66 = or i32 %63, %65
  %67 = call i32 @WREG32(i32 1816, i32 %66)
  %68 = load i32, i32* @RADEON_RB_BUFSZ, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @REG_SET(i32 %68, i32 %69)
  %71 = load i32, i32* @RADEON_RB_BLKSZ, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @REG_SET(i32 %71, i32 %72)
  %74 = or i32 %70, %73
  %75 = load i32, i32* @RADEON_MAX_FETCH, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @REG_SET(i32 %75, i32 %76)
  %78 = or i32 %74, %77
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* @RADEON_CP_RB_CNTL, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @RADEON_RB_NO_UPDATE, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @WREG32(i32 %79, i32 %82)
  %84 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %85 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @RADEON_CP_RB_BASE, align 4
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %91 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @WREG32(i32 %89, i32 %92)
  %94 = load i32, i32* @RADEON_CP_RB_CNTL, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @RADEON_RB_RPTR_WR_ENA, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @RADEON_RB_NO_UPDATE, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @WREG32(i32 %94, i32 %99)
  %101 = load i32, i32* @RADEON_CP_RB_RPTR_WR, align 4
  %102 = call i32 @WREG32(i32 %101, i32 0)
  %103 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %104 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %103, i32 0, i32 2
  store i32 0, i32* %104, align 8
  %105 = load i32, i32* @RADEON_CP_RB_WPTR, align 4
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %107 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @WREG32(i32 %105, i32 %108)
  %110 = load i32, i32* @R_00070C_CP_RB_RPTR_ADDR, align 4
  %111 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %116 = add nsw i32 %114, %115
  %117 = ashr i32 %116, 2
  %118 = call i32 @S_00070C_RB_RPTR_ADDR(i32 %117)
  %119 = call i32 @WREG32(i32 %110, i32 %118)
  %120 = load i32, i32* @R_000774_SCRATCH_ADDR, align 4
  %121 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @RADEON_WB_SCRATCH_OFFSET, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i32 @WREG32(i32 %120, i32 %126)
  %128 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %60
  %134 = load i32, i32* @R_000770_SCRATCH_UMSK, align 4
  %135 = call i32 @WREG32(i32 %134, i32 255)
  br label %142

136:                                              ; preds = %60
  %137 = load i32, i32* @RADEON_RB_NO_UPDATE, align 4
  %138 = load i32, i32* %14, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* @R_000770_SCRATCH_UMSK, align 4
  %141 = call i32 @WREG32(i32 %140, i32 0)
  br label %142

142:                                              ; preds = %136, %133
  %143 = load i32, i32* @RADEON_CP_RB_CNTL, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @WREG32(i32 %143, i32 %144)
  %146 = call i32 @udelay(i32 10)
  %147 = load i32, i32* @RADEON_CP_CSQ_MODE, align 4
  %148 = load i32, i32* @RADEON_INDIRECT2_START, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @REG_SET(i32 %148, i32 %149)
  %151 = load i32, i32* @RADEON_INDIRECT1_START, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @REG_SET(i32 %151, i32 %152)
  %154 = or i32 %150, %153
  %155 = call i32 @WREG32(i32 %147, i32 %154)
  %156 = load i32, i32* @RADEON_CP_RB_WPTR_DELAY, align 4
  %157 = call i32 @WREG32(i32 %156, i32 0)
  %158 = load i32, i32* @RADEON_CP_CSQ_MODE, align 4
  %159 = call i32 @WREG32(i32 %158, i32 19789)
  %160 = load i32, i32* @RADEON_CP_CSQ_CNTL, align 4
  %161 = load i32, i32* @RADEON_CSQ_PRIBM_INDBM, align 4
  %162 = call i32 @WREG32(i32 %160, i32 %161)
  %163 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @pci_set_master(i32 %165)
  %167 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %168 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %169 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 1
  %171 = load %struct.radeon_ring*, %struct.radeon_ring** %170, align 8
  %172 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %173 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %171, i64 %172
  %174 = call i32 @radeon_ring_start(%struct.radeon_device* %167, i64 %168, %struct.radeon_ring* %173)
  %175 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %176 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %177 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %178 = call i32 @radeon_ring_test(%struct.radeon_device* %175, i64 %176, %struct.radeon_ring* %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %142
  %182 = load i32, i32* %15, align 4
  %183 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %15, align 4
  store i32 %184, i32* %3, align 4
  br label %217

185:                                              ; preds = %142
  %186 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %187 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %186, i32 0, i32 3
  store i32 1, i32* %187, align 4
  %188 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %189 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %190 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %188, i32 %192)
  %194 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %195 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %216, label %198

198:                                              ; preds = %185
  %199 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %200 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %201 = call i64 @radeon_ring_supports_scratch_reg(%struct.radeon_device* %199, %struct.radeon_ring* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %216

203:                                              ; preds = %198
  %204 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %205 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %206 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %205, i32 0, i32 4
  %207 = call i32 @radeon_scratch_get(%struct.radeon_device* %204, i64* %206)
  store i32 %207, i32* %15, align 4
  %208 = load i32, i32* %15, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = load i32, i32* %15, align 4
  %212 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %211)
  %213 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %214 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %213, i32 0, i32 4
  store i64 0, i64* %214, align 8
  br label %215

215:                                              ; preds = %210, %203
  br label %216

216:                                              ; preds = %215, %198, %185
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %181, %58, %36
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i64 @r100_debugfs_cp_init(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @r100_cp_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @r100_cp_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i64) #1

declare dso_local i32 @S_00070C_RB_RPTR_ADDR(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @radeon_ring_start(%struct.radeon_device*, i64, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i64, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

declare dso_local i64 @radeon_ring_supports_scratch_reg(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_scratch_get(%struct.radeon_device*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
