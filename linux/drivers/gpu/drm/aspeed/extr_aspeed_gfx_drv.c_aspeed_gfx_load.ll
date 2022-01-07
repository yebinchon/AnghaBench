; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_drv.c_aspeed_gfx_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_drv.c_aspeed_gfx_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32*, %struct.aspeed_gfx* }
%struct.aspeed_gfx = type { i64, i64, i64, i64 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"aspeed,ast2500-scu\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to find SCU regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to initialize reserved mem: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to set DMA mask: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"missing or invalid reset controller device tree entry\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"missing or invalid clk device tree entry\00", align 1
@CRT_CTRL1 = common dso_local global i64 0, align 8
@CRT_CTRL2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to initialise vblank\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to create outputs\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Cannot setup simple display pipe\0A\00", align 1
@aspeed_gfx_irq_handler = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"aspeed gfx\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Failed to install IRQ handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @aspeed_gfx_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_gfx_load(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.aspeed_gfx*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call %struct.platform_device* @to_platform_device(i32* %10)
  store %struct.platform_device* %11, %struct.platform_device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.aspeed_gfx* @devm_kzalloc(i32* %13, i32 32, i32 %14)
  store %struct.aspeed_gfx* %15, %struct.aspeed_gfx** %5, align 8
  %16 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %17 = icmp ne %struct.aspeed_gfx* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %205

21:                                               ; preds = %1
  %22 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 1
  store %struct.aspeed_gfx* %22, %struct.aspeed_gfx** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = call i64 @devm_ioremap_resource(i32* %30, %struct.resource* %31)
  %33 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %34 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %36 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @IS_ERR(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %21
  %41 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %42 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @PTR_ERR(i64 %43)
  store i32 %44, i32* %2, align 4
  br label %205

45:                                               ; preds = %21
  %46 = call i64 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %48 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %50 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @IS_ERR(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %59 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @PTR_ERR(i64 %60)
  store i32 %61, i32* %2, align 4
  br label %205

62:                                               ; preds = %45
  %63 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @of_reserved_mem_device_init(i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %205

75:                                               ; preds = %62
  %76 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %77 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @DMA_BIT_MASK(i32 32)
  %80 = call i32 @dma_set_mask_and_coherent(i32* %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %205

89:                                               ; preds = %75
  %90 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i64 @devm_reset_control_get_exclusive(i32* %91, i32* null)
  %93 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %94 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %96 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @IS_ERR(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %89
  %101 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %104 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %105 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @PTR_ERR(i64 %106)
  store i32 %107, i32* %2, align 4
  br label %205

108:                                              ; preds = %89
  %109 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %110 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @reset_control_deassert(i64 %111)
  %113 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %114 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i64 @devm_clk_get(i32* %115, i32* null)
  %117 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %118 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %120 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @IS_ERR(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %108
  %125 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %128 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %129 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @PTR_ERR(i64 %130)
  store i32 %131, i32* %2, align 4
  br label %205

132:                                              ; preds = %108
  %133 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %134 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @clk_prepare_enable(i64 %135)
  %137 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %138 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CRT_CTRL1, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel(i32 0, i64 %141)
  %143 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %144 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CRT_CTRL2, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i32 0, i64 %147)
  %149 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %150 = call i32 @aspeed_gfx_setup_mode_config(%struct.drm_device* %149)
  %151 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %152 = call i32 @drm_vblank_init(%struct.drm_device* %151, i32 1)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %132
  %156 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %157 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 (i32*, i8*, ...) @dev_err(i32* %158, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %2, align 4
  br label %205

161:                                              ; preds = %132
  %162 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %163 = call i32 @aspeed_gfx_create_output(%struct.drm_device* %162)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %168 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 (i32*, i8*, ...) @dev_err(i32* %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %2, align 4
  br label %205

172:                                              ; preds = %161
  %173 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %174 = call i32 @aspeed_gfx_create_pipe(%struct.drm_device* %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %179 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 (i32*, i8*, ...) @dev_err(i32* %180, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %2, align 4
  br label %205

183:                                              ; preds = %172
  %184 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %185 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %188 = call i32 @platform_get_irq(%struct.platform_device* %187, i32 0)
  %189 = load i32, i32* @aspeed_gfx_irq_handler, align 4
  %190 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %191 = call i32 @devm_request_irq(i32* %186, i32 %188, i32 %189, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), %struct.drm_device* %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %183
  %195 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %196 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 (i32*, i8*, ...) @dev_err(i32* %197, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %2, align 4
  br label %205

200:                                              ; preds = %183
  %201 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %202 = call i32 @drm_mode_config_reset(%struct.drm_device* %201)
  %203 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %204 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %203, i32 32)
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %200, %194, %177, %166, %155, %124, %100, %83, %69, %54, %40, %18
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.platform_device* @to_platform_device(i32*) #1

declare dso_local %struct.aspeed_gfx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @of_reserved_mem_device_init(i32*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @devm_reset_control_get_exclusive(i32*, i32*) #1

declare dso_local i32 @reset_control_deassert(i64) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @aspeed_gfx_setup_mode_config(%struct.drm_device*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @aspeed_gfx_create_output(%struct.drm_device*) #1

declare dso_local i32 @aspeed_gfx_create_pipe(%struct.drm_device*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.drm_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
