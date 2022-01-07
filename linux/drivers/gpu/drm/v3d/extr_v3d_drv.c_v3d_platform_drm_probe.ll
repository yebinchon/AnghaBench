; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_drv.c_v3d_platform_drm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_drv.c_v3d_platform_drm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.drm_device = type { %struct.v3d_dev* }
%struct.v3d_dev = type { i32, i32, i32, i32, i32, %struct.drm_device, i32, i32, i32*, i32*, i32, %struct.platform_device*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hub\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"core0\00", align 1
@V3D_MMU_DEBUG_INFO = common dso_local global i32 0, align 4
@V3D_MMU_PA_WIDTH = common dso_local global i32 0, align 4
@V3D_MMU_VA_WIDTH = common dso_local global i32 0, align 4
@V3D_HUB_IDENT1 = common dso_local global i32 0, align 4
@V3D_HUB_IDENT1_TVER = common dso_local global i32 0, align 4
@V3D_HUB_IDENT1_REV = common dso_local global i32 0, align 4
@V3D_HUB_IDENT1_NCORES = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"bridge\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to get reset control or bridge regs\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gca\00", align 1
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to allocate MMU scratch page\0A\00", align 1
@v3d_drm_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @v3d_platform_drm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_platform_drm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.v3d_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.v3d_dev* @kzalloc(i32 80, i32 %12)
  store %struct.v3d_dev* %13, %struct.v3d_dev** %6, align 8
  %14 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %15 = icmp ne %struct.v3d_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %212

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %22 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %21, i32 0, i32 12
  store %struct.device* %20, %struct.device** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %25 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %24, i32 0, i32 11
  store %struct.platform_device* %23, %struct.platform_device** %25, align 8
  %26 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %27 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %26, i32 0, i32 5
  store %struct.drm_device* %27, %struct.drm_device** %5, align 8
  %28 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %29 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %30 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %29, i32 0, i32 10
  %31 = call i32 @map_regs(%struct.v3d_dev* %28, i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %208

35:                                               ; preds = %19
  %36 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %37 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %38 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %37, i32 0, i32 9
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @map_regs(%struct.v3d_dev* %36, i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %208

45:                                               ; preds = %35
  %46 = load i32, i32* @V3D_MMU_DEBUG_INFO, align 4
  %47 = call i32 @V3D_READ(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @V3D_MMU_PA_WIDTH, align 4
  %50 = call i32 @V3D_GET_FIELD(i32 %48, i32 %49)
  %51 = add nsw i32 30, %50
  %52 = call i32 @DMA_BIT_MASK(i32 %51)
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @V3D_MMU_VA_WIDTH, align 4
  %57 = call i32 @V3D_GET_FIELD(i32 %55, i32 %56)
  %58 = add nsw i32 30, %57
  %59 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %60 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @V3D_HUB_IDENT1, align 4
  %62 = call i32 @V3D_READ(i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @V3D_HUB_IDENT1_TVER, align 4
  %65 = call i32 @V3D_GET_FIELD(i32 %63, i32 %64)
  %66 = mul nsw i32 %65, 10
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @V3D_HUB_IDENT1_REV, align 4
  %69 = call i32 @V3D_GET_FIELD(i32 %67, i32 %68)
  %70 = add nsw i32 %66, %69
  %71 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %72 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @V3D_HUB_IDENT1_NCORES, align 4
  %75 = call i32 @V3D_GET_FIELD(i32 %73, i32 %74)
  %76 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %77 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %79 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 1
  %82 = zext i1 %81 to i32
  %83 = call i32 @WARN_ON(i32 %82)
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32* @devm_reset_control_get_exclusive(%struct.device* %84, i32* null)
  %86 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %87 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %86, i32 0, i32 8
  store i32* %85, i32** %87, align 8
  %88 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %89 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %88, i32 0, i32 8
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @IS_ERR(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %45
  %94 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %95 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %94, i32 0, i32 8
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @PTR_ERR(i32* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @EPROBE_DEFER, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %208

103:                                              ; preds = %93
  %104 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %105 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %104, i32 0, i32 8
  store i32* null, i32** %105, align 8
  %106 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %107 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %108 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %107, i32 0, i32 7
  %109 = call i32 @map_regs(%struct.v3d_dev* %106, i32* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = call i32 @dev_err(%struct.device* %113, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %208

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %45
  %117 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %118 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %119, 41
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %123 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %124 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %123, i32 0, i32 6
  %125 = call i32 @map_regs(%struct.v3d_dev* %122, i32* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %208

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %116
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %133 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %132, i32 0, i32 3
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = load i32, i32* @__GFP_NOWARN, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @__GFP_ZERO, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @dma_alloc_wc(%struct.device* %131, i32 4096, i32* %133, i32 %138)
  %140 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %141 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %143 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %130
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = call i32 @dev_err(%struct.device* %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %7, align 4
  br label %208

151:                                              ; preds = %130
  %152 = load %struct.device*, %struct.device** %4, align 8
  %153 = call i32 @pm_runtime_use_autosuspend(%struct.device* %152)
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %154, i32 50)
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = call i32 @pm_runtime_enable(%struct.device* %156)
  %158 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %159 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %158, i32 0, i32 5
  %160 = load %struct.device*, %struct.device** %4, align 8
  %161 = call i32 @drm_dev_init(%struct.drm_device* %159, i32* @v3d_drm_driver, %struct.device* %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %151
  br label %199

165:                                              ; preds = %151
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %168 = call i32 @platform_set_drvdata(%struct.platform_device* %166, %struct.drm_device* %167)
  %169 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %170 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %171 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %170, i32 0, i32 0
  store %struct.v3d_dev* %169, %struct.v3d_dev** %171, align 8
  %172 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %173 = call i32 @v3d_gem_init(%struct.drm_device* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %165
  br label %196

177:                                              ; preds = %165
  %178 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %179 = call i32 @v3d_irq_init(%struct.v3d_dev* %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %193

183:                                              ; preds = %177
  %184 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %185 = call i32 @drm_dev_register(%struct.drm_device* %184, i32 0)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %190

189:                                              ; preds = %183
  store i32 0, i32* %2, align 4
  br label %212

190:                                              ; preds = %188
  %191 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %192 = call i32 @v3d_irq_disable(%struct.v3d_dev* %191)
  br label %193

193:                                              ; preds = %190, %182
  %194 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %195 = call i32 @v3d_gem_destroy(%struct.drm_device* %194)
  br label %196

196:                                              ; preds = %193, %176
  %197 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %198 = call i32 @drm_dev_put(%struct.drm_device* %197)
  br label %199

199:                                              ; preds = %196, %164
  %200 = load %struct.device*, %struct.device** %4, align 8
  %201 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %202 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %205 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @dma_free_wc(%struct.device* %200, i32 4096, i32 %203, i32 %206)
  br label %208

208:                                              ; preds = %199, %146, %128, %112, %102, %44, %34
  %209 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %210 = call i32 @kfree(%struct.v3d_dev* %209)
  %211 = load i32, i32* %7, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %208, %189, %16
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local %struct.v3d_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @map_regs(%struct.v3d_dev*, i32*, i8*) #1

declare dso_local i32 @V3D_READ(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @V3D_GET_FIELD(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32* @devm_reset_control_get_exclusive(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dma_alloc_wc(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @drm_dev_init(%struct.drm_device*, i32*, %struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.drm_device*) #1

declare dso_local i32 @v3d_gem_init(%struct.drm_device*) #1

declare dso_local i32 @v3d_irq_init(%struct.v3d_dev*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @v3d_irq_disable(%struct.v3d_dev*) #1

declare dso_local i32 @v3d_gem_destroy(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

declare dso_local i32 @dma_free_wc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.v3d_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
