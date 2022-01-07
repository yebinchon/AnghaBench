; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_constants_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_constants_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@GRBM_CNTL = common dso_local global i32 0, align 4
@READ_TIMEOUT = common dso_local global i32 0, align 4
@mmGB_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmHDP_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmDMIF_ADDR_CALC = common dso_local global i32 0, align 4
@SH_STATIC_MEM_CONFIG = common dso_local global i32 0, align 4
@SWIZZLE_ENABLE = common dso_local global i32 0, align 4
@ELEMENT_SIZE = common dso_local global i32 0, align 4
@INDEX_STRIDE = common dso_local global i32 0, align 4
@mmSH_STATIC_MEM_CONFIG = common dso_local global i32 0, align 4
@SH_MEM_CONFIG = common dso_local global i32 0, align 4
@DEFAULT_MTYPE = common dso_local global i32 0, align 4
@MTYPE_UC = common dso_local global i32 0, align 4
@APE1_MTYPE = common dso_local global i32 0, align 4
@ALIGNMENT_MODE = common dso_local global i32 0, align 4
@SH_MEM_ALIGNMENT_MODE_UNALIGNED = common dso_local global i32 0, align 4
@mmSH_MEM_CONFIG = common dso_local global i32 0, align 4
@mmSH_MEM_BASES = common dso_local global i32 0, align 4
@MTYPE_NC = common dso_local global i32 0, align 4
@mmSH_MEM_APE1_BASE = common dso_local global i32 0, align 4
@mmSH_MEM_APE1_LIMIT = common dso_local global i32 0, align 4
@mmPA_SC_FIFO_SIZE = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE__SC_FRONTEND_PRIM_FIFO_SIZE__SHIFT = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE__SC_BACKEND_PRIM_FIFO_SIZE__SHIFT = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE__SC_HIZ_TILE_FIFO_SIZE__SHIFT = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE__SC_EARLYZ_TILE_FIFO_SIZE__SHIFT = common dso_local global i32 0, align 4
@mmSPI_ARB_PRIORITY = common dso_local global i32 0, align 4
@SPI_ARB_PRIORITY = common dso_local global i32 0, align 4
@PIPE_ORDER_TS0 = common dso_local global i32 0, align 4
@PIPE_ORDER_TS1 = common dso_local global i32 0, align 4
@PIPE_ORDER_TS2 = common dso_local global i32 0, align 4
@PIPE_ORDER_TS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v8_0_constants_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_constants_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load i32, i32* @GRBM_CNTL, align 4
  %7 = load i32, i32* @READ_TIMEOUT, align 4
  %8 = call i32 @WREG32_FIELD(i32 %6, i32 %7, i32 255)
  %9 = load i32, i32* @mmGB_ADDR_CONFIG, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @WREG32(i32 %9, i32 %14)
  %16 = load i32, i32* @mmHDP_ADDR_CONFIG, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WREG32(i32 %16, i32 %21)
  %23 = load i32, i32* @mmDMIF_ADDR_CALC, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @WREG32(i32 %23, i32 %28)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %31 = call i32 @gfx_v8_0_tiling_mode_table_init(%struct.amdgpu_device* %30)
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = call i32 @gfx_v8_0_setup_rb(%struct.amdgpu_device* %32)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = call i32 @gfx_v8_0_get_cu_info(%struct.amdgpu_device* %34)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = call i32 @gfx_v8_0_config_init(%struct.amdgpu_device* %36)
  %38 = load i32, i32* @SH_STATIC_MEM_CONFIG, align 4
  %39 = load i32, i32* @SWIZZLE_ENABLE, align 4
  %40 = call i32 @REG_SET_FIELD(i32 0, i32 %38, i32 %39, i32 1)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SH_STATIC_MEM_CONFIG, align 4
  %43 = load i32, i32* @ELEMENT_SIZE, align 4
  %44 = call i32 @REG_SET_FIELD(i32 %41, i32 %42, i32 %43, i32 1)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @SH_STATIC_MEM_CONFIG, align 4
  %47 = load i32, i32* @INDEX_STRIDE, align 4
  %48 = call i32 @REG_SET_FIELD(i32 %45, i32 %46, i32 %47, i32 3)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @mmSH_STATIC_MEM_CONFIG, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 2
  %54 = call i32 @mutex_lock(i32* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %122, %1
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %56, %63
  br i1 %64, label %65, label %125

65:                                               ; preds = %55
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @vi_srbm_select(%struct.amdgpu_device* %66, i32 0, i32 0, i32 0, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = load i32, i32* @SH_MEM_CONFIG, align 4
  %73 = load i32, i32* @DEFAULT_MTYPE, align 4
  %74 = load i32, i32* @MTYPE_UC, align 4
  %75 = call i32 @REG_SET_FIELD(i32 0, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @SH_MEM_CONFIG, align 4
  %78 = load i32, i32* @APE1_MTYPE, align 4
  %79 = load i32, i32* @MTYPE_UC, align 4
  %80 = call i32 @REG_SET_FIELD(i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @SH_MEM_CONFIG, align 4
  %83 = load i32, i32* @ALIGNMENT_MODE, align 4
  %84 = load i32, i32* @SH_MEM_ALIGNMENT_MODE_UNALIGNED, align 4
  %85 = call i32 @REG_SET_FIELD(i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* @mmSH_MEM_CONFIG, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @WREG32(i32 %86, i32 %87)
  %89 = load i32, i32* @mmSH_MEM_BASES, align 4
  %90 = call i32 @WREG32(i32 %89, i32 0)
  br label %117

91:                                               ; preds = %65
  %92 = load i32, i32* @SH_MEM_CONFIG, align 4
  %93 = load i32, i32* @DEFAULT_MTYPE, align 4
  %94 = load i32, i32* @MTYPE_NC, align 4
  %95 = call i32 @REG_SET_FIELD(i32 0, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @SH_MEM_CONFIG, align 4
  %98 = load i32, i32* @APE1_MTYPE, align 4
  %99 = load i32, i32* @MTYPE_UC, align 4
  %100 = call i32 @REG_SET_FIELD(i32 %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @SH_MEM_CONFIG, align 4
  %103 = load i32, i32* @ALIGNMENT_MODE, align 4
  %104 = load i32, i32* @SH_MEM_ALIGNMENT_MODE_UNALIGNED, align 4
  %105 = call i32 @REG_SET_FIELD(i32 %101, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* @mmSH_MEM_CONFIG, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @WREG32(i32 %106, i32 %107)
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 48
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* @mmSH_MEM_BASES, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @WREG32(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %91, %71
  %118 = load i32, i32* @mmSH_MEM_APE1_BASE, align 4
  %119 = call i32 @WREG32(i32 %118, i32 1)
  %120 = load i32, i32* @mmSH_MEM_APE1_LIMIT, align 4
  %121 = call i32 @WREG32(i32 %120, i32 0)
  br label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %55

125:                                              ; preds = %55
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %127 = call i32 @vi_srbm_select(%struct.amdgpu_device* %126, i32 0, i32 0, i32 0, i32 0)
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 2
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %132 = call i32 @gfx_v8_0_init_compute_vmid(%struct.amdgpu_device* %131)
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %134 = call i32 @gfx_v8_0_init_gds_vmid(%struct.amdgpu_device* %133)
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 0
  %137 = call i32 @mutex_lock(i32* %136)
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %139 = call i32 @gfx_v8_0_select_se_sh(%struct.amdgpu_device* %138, i32 -1, i32 -1, i32 -1)
  %140 = load i32, i32* @mmPA_SC_FIFO_SIZE, align 4
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @PA_SC_FIFO_SIZE__SC_FRONTEND_PRIM_FIFO_SIZE__SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @PA_SC_FIFO_SIZE__SC_BACKEND_PRIM_FIFO_SIZE__SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = or i32 %147, %154
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %157 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @PA_SC_FIFO_SIZE__SC_HIZ_TILE_FIFO_SIZE__SHIFT, align 4
  %162 = shl i32 %160, %161
  %163 = or i32 %155, %162
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %165 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @PA_SC_FIFO_SIZE__SC_EARLYZ_TILE_FIFO_SIZE__SHIFT, align 4
  %170 = shl i32 %168, %169
  %171 = or i32 %163, %170
  %172 = call i32 @WREG32(i32 %140, i32 %171)
  %173 = load i32, i32* @mmSPI_ARB_PRIORITY, align 4
  %174 = call i32 @RREG32(i32 %173)
  store i32 %174, i32* %3, align 4
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* @SPI_ARB_PRIORITY, align 4
  %177 = load i32, i32* @PIPE_ORDER_TS0, align 4
  %178 = call i32 @REG_SET_FIELD(i32 %175, i32 %176, i32 %177, i32 2)
  store i32 %178, i32* %3, align 4
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @SPI_ARB_PRIORITY, align 4
  %181 = load i32, i32* @PIPE_ORDER_TS1, align 4
  %182 = call i32 @REG_SET_FIELD(i32 %179, i32 %180, i32 %181, i32 2)
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* @SPI_ARB_PRIORITY, align 4
  %185 = load i32, i32* @PIPE_ORDER_TS2, align 4
  %186 = call i32 @REG_SET_FIELD(i32 %183, i32 %184, i32 %185, i32 2)
  store i32 %186, i32* %3, align 4
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* @SPI_ARB_PRIORITY, align 4
  %189 = load i32, i32* @PIPE_ORDER_TS3, align 4
  %190 = call i32 @REG_SET_FIELD(i32 %187, i32 %188, i32 %189, i32 2)
  store i32 %190, i32* %3, align 4
  %191 = load i32, i32* @mmSPI_ARB_PRIORITY, align 4
  %192 = load i32, i32* %3, align 4
  %193 = call i32 @WREG32(i32 %191, i32 %192)
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %195 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %194, i32 0, i32 0
  %196 = call i32 @mutex_unlock(i32* %195)
  ret void
}

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @gfx_v8_0_tiling_mode_table_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_setup_rb(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_get_cu_info(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_config_init(%struct.amdgpu_device*) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vi_srbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gfx_v8_0_init_compute_vmid(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_init_gds_vmid(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
