; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv05.c_nv05_devinit_meminit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv05.c_nv05_devinit_meminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.io_mapping = type { i32 }

@nv05_devinit_meminit.default_config_tab = internal constant [8 x [2 x i32]] [[2 x i32] [i32 36, i32 0], [2 x i32] [i32 40, i32 0], [2 x i32] [i32 36, i32 1], [2 x i32] [i32 31, i32 0], [2 x i32] [i32 15, i32 0], [2 x i32] [i32 23, i32 0], [2 x i32] [i32 6, i32 0], [2 x i32] zeroinitializer], align 16
@.str = private unnamed_addr constant [18 x i8] c"failed to map fb\0A\00", align 1
@NV04_PFB_BOOT_0 = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_UMA_ENABLE = common dso_local global i32 0, align 4
@NV04_PFB_DEBUG_0 = common dso_local global i32 0, align 4
@NV04_PFB_DEBUG_0_REFRESH_OFF = common dso_local global i32 0, align 4
@NV04_PFB_CFG0 = common dso_local global i32 0, align 4
@NV04_PFB_CFG0_SCRAMBLE = common dso_local global i32 0, align 4
@NV04_PFB_CFG1 = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_WIDTH_128 = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT_32MB = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT_16MB = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT_8MB = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT_4MB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_devinit*)* @nv05_devinit_meminit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv05_devinit_meminit(%struct.nvkm_devinit* %0) #0 {
  %2 = alloca %struct.nvkm_devinit*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.nvkm_bios*, align 8
  %6 = alloca %struct.io_mapping*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %2, align 8
  %14 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %2, align 8
  %15 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %14, i32 0, i32 0
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %3, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %4, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %20 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %19, i32 0, i32 0
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %20, align 8
  store %struct.nvkm_bios* %21, %struct.nvkm_bios** %5, align 8
  store i64 3735928559, i64* %7, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %23 = call %struct.io_mapping* @fbmem_init(%struct.nvkm_device* %22)
  store %struct.io_mapping* %23, %struct.io_mapping** %6, align 8
  %24 = load %struct.io_mapping*, %struct.io_mapping** %6, align 8
  %25 = icmp ne %struct.io_mapping* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %28 = call i32 @nvkm_error(%struct.nvkm_subdev* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %222

29:                                               ; preds = %1
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %31 = call i32 @nvkm_rd32(%struct.nvkm_device* %30, i32 1052672)
  %32 = and i32 %31, 60
  %33 = ashr i32 %32, 2
  store i32 %33, i32* %9, align 4
  %34 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %35 = call i64 @bmp_mem_init_table(%struct.nvkm_bios* %34)
  store i64 %35, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %29
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 2, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = add nsw i64 %43, 0
  %45 = call i32 @nvbios_rd08(%struct.nvkm_bios* %38, i64 %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = add nsw i64 %52, 1
  %54 = call i32 @nvbios_rd08(%struct.nvkm_bios* %47, i64 %53)
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  br label %69

56:                                               ; preds = %29
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @nv05_devinit_meminit.default_config_tab, i64 0, i64 %58
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %59, i64 0, i64 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @nv05_devinit_meminit.default_config_tab, i64 0, i64 %64
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %65, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %56, %37
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %71 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %72 = call i32 @nvkm_rdvgas(%struct.nvkm_device* %71, i32 0, i32 1)
  %73 = or i32 %72, 32
  %74 = call i32 @nvkm_wrvgas(%struct.nvkm_device* %70, i32 0, i32 1, i32 %73)
  %75 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %76 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %77 = call i32 @nvkm_rd32(%struct.nvkm_device* %75, i32 %76)
  %78 = load i32, i32* @NV04_PFB_BOOT_0_UMA_ENABLE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %214

82:                                               ; preds = %69
  %83 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %84 = load i32, i32* @NV04_PFB_DEBUG_0, align 4
  %85 = load i32, i32* @NV04_PFB_DEBUG_0_REFRESH_OFF, align 4
  %86 = call i32 @nvkm_mask(%struct.nvkm_device* %83, i32 %84, i32 %85, i32 0)
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, 16
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %104, %89
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 8
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @nvbios_rd32(%struct.nvkm_bios* %96, i64 %97)
  store i64 %98, i64* %13, align 8
  %99 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @NV04_PFB_SCRAMBLE(i32 %100)
  %102 = load i64, i64* %13, align 8
  %103 = call i32 @nvkm_wr32(%struct.nvkm_device* %99, i32 %101, i64 %102)
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = load i64, i64* %8, align 8
  %108 = add nsw i64 %107, 4
  store i64 %108, i64* %8, align 8
  br label %92

109:                                              ; preds = %92
  br label %110

110:                                              ; preds = %109, %82
  %111 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %112 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @nvkm_mask(%struct.nvkm_device* %111, i32 %112, i32 63, i32 %114)
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 128
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %110
  %121 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %122 = load i32, i32* @NV04_PFB_CFG0, align 4
  %123 = load i32, i32* @NV04_PFB_CFG0_SCRAMBLE, align 4
  %124 = call i32 @nvkm_mask(%struct.nvkm_device* %121, i32 %122, i32 0, i32 %123)
  br label %125

125:                                              ; preds = %120, %110
  %126 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %127 = load i32, i32* @NV04_PFB_CFG1, align 4
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 1
  %131 = shl i32 %130, 20
  %132 = call i32 @nvkm_mask(%struct.nvkm_device* %126, i32 %127, i32 7340033, i32 %131)
  %133 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %134 = load i32, i32* @NV04_PFB_CFG1, align 4
  %135 = call i32 @nvkm_mask(%struct.nvkm_device* %133, i32 %134, i32 0, i32 1)
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %145, %125
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %137, 4
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load %struct.io_mapping*, %struct.io_mapping** %6, align 8
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 4, %141
  %143 = load i64, i64* %7, align 8
  %144 = call i32 @fbmem_poke(%struct.io_mapping* %140, i32 %142, i64 %143)
  br label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %136

148:                                              ; preds = %136
  %149 = load %struct.io_mapping*, %struct.io_mapping** %6, align 8
  %150 = call i64 @fbmem_peek(%struct.io_mapping* %149, i32 12)
  %151 = load i64, i64* %7, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %155 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %156 = load i32, i32* @NV04_PFB_BOOT_0_RAM_WIDTH_128, align 4
  %157 = call i32 @nvkm_mask(%struct.nvkm_device* %154, i32 %155, i32 %156, i32 0)
  br label %158

158:                                              ; preds = %153, %148
  %159 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %160 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %161 = call i32 @nvkm_rd32(%struct.nvkm_device* %159, i32 %160)
  %162 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %163 = and i32 %161, %162
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_32MB, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %158
  %168 = load %struct.io_mapping*, %struct.io_mapping** %6, align 8
  %169 = load i64, i64* %7, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %7, align 8
  %171 = call i32 @fbmem_readback(%struct.io_mapping* %168, i32 16777216, i64 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.io_mapping*, %struct.io_mapping** %6, align 8
  %175 = load i64, i64* %7, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %7, align 8
  %177 = call i32 @fbmem_readback(%struct.io_mapping* %174, i32 0, i64 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %173, %167
  %180 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %181 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %182 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %183 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_16MB, align 4
  %184 = call i32 @nvkm_mask(%struct.nvkm_device* %180, i32 %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %179, %173, %158
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_16MB, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %201

189:                                              ; preds = %185
  %190 = load %struct.io_mapping*, %struct.io_mapping** %6, align 8
  %191 = load i64, i64* %7, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %7, align 8
  %193 = call i32 @fbmem_readback(%struct.io_mapping* %190, i32 8388608, i64 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %189
  %196 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %197 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %198 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %199 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_8MB, align 4
  %200 = call i32 @nvkm_mask(%struct.nvkm_device* %196, i32 %197, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %195, %189, %185
  %202 = load %struct.io_mapping*, %struct.io_mapping** %6, align 8
  %203 = load i64, i64* %7, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %7, align 8
  %205 = call i32 @fbmem_readback(%struct.io_mapping* %202, i32 4194304, i64 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %201
  %208 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %209 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %210 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %211 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_4MB, align 4
  %212 = call i32 @nvkm_mask(%struct.nvkm_device* %208, i32 %209, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %207, %201
  br label %214

214:                                              ; preds = %213, %81
  %215 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %216 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %217 = call i32 @nvkm_rdvgas(%struct.nvkm_device* %216, i32 0, i32 1)
  %218 = and i32 %217, -33
  %219 = call i32 @nvkm_wrvgas(%struct.nvkm_device* %215, i32 0, i32 1, i32 %218)
  %220 = load %struct.io_mapping*, %struct.io_mapping** %6, align 8
  %221 = call i32 @fbmem_fini(%struct.io_mapping* %220)
  br label %222

222:                                              ; preds = %214, %26
  ret void
}

declare dso_local %struct.io_mapping* @fbmem_init(%struct.nvkm_device*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i64 @bmp_mem_init_table(%struct.nvkm_bios*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvkm_wrvgas(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rdvgas(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i64 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i64) #1

declare dso_local i32 @NV04_PFB_SCRAMBLE(i32) #1

declare dso_local i32 @fbmem_poke(%struct.io_mapping*, i32, i64) #1

declare dso_local i64 @fbmem_peek(%struct.io_mapping*, i32) #1

declare dso_local i32 @fbmem_readback(%struct.io_mapping*, i32, i64) #1

declare dso_local i32 @fbmem_fini(%struct.io_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
