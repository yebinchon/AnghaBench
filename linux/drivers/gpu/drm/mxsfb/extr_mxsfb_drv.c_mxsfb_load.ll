; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_drv.c_mxsfb_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_drv.c_mxsfb_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_4__, %struct.mxsfb_drm_private* }
%struct.TYPE_4__ = type { i32*, i32*, i32, i32, i32, i32, i32 }
%struct.mxsfb_drm_private = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.platform_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mxsfb_devdata = common dso_local global i32* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"disp_axi\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to initialise vblank\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to create outputs\0A\00", align 1
@mxsfb_funcs = common dso_local global i32 0, align 4
@mxsfb_formats = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Cannot setup simple display pipe\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Cannot connect panel\0A\00", align 1
@MXSFB_MIN_XRES = common dso_local global i32 0, align 4
@MXSFB_MIN_YRES = common dso_local global i32 0, align 4
@MXSFB_MAX_XRES = common dso_local global i32 0, align 4
@MXSFB_MAX_YRES = common dso_local global i32 0, align 4
@mxsfb_mode_config_funcs = common dso_local global i32 0, align 4
@mxsfb_mode_config_helpers = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to install IRQ handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i64)* @mxsfb_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxsfb_load(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.mxsfb_drm_private*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.platform_device* @to_platform_device(i32 %12)
  store %struct.platform_device* %13, %struct.platform_device** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mxsfb_drm_private* @devm_kzalloc(i32* %15, i32 56, i32 %16)
  store %struct.mxsfb_drm_private* %17, %struct.mxsfb_drm_private** %7, align 8
  %18 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %19 = icmp ne %struct.mxsfb_drm_private* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %240

23:                                               ; preds = %2
  %24 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 2
  store %struct.mxsfb_drm_private* %24, %struct.mxsfb_drm_private** %26, align 8
  %27 = load i32*, i32** @mxsfb_devdata, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %35 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %34, i32 0, i32 7
  store i32* %33, i32** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %8, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = call i32* @devm_ioremap_resource(i32 %41, %struct.resource* %42)
  %44 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %45 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %44, i32 0, i32 6
  store i32* %43, i32** %45, align 8
  %46 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %47 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @IS_ERR(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %23
  %52 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %53 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @PTR_ERR(i32* %54)
  store i32 %55, i32* %3, align 4
  br label %240

56:                                               ; preds = %23
  %57 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @devm_clk_get(i32 %59, i8* null)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %63 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %62, i32 0, i32 5
  store i32* %61, i32** %63, align 8
  %64 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %65 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @IS_ERR(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %71 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @PTR_ERR(i32* %72)
  store i32 %73, i32* %3, align 4
  br label %240

74:                                               ; preds = %56
  %75 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @devm_clk_get(i32 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %81 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %80, i32 0, i32 4
  store i32* %79, i32** %81, align 8
  %82 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %83 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @IS_ERR(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %74
  %88 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %89 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %88, i32 0, i32 4
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %87, %74
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @devm_clk_get(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %97 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %96, i32 0, i32 3
  store i32* %95, i32** %97, align 8
  %98 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %99 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @IS_ERR(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %90
  %104 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %105 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %104, i32 0, i32 3
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %103, %90
  %107 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %108 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @DMA_BIT_MASK(i32 32)
  %111 = call i32 @dma_set_mask_and_coherent(i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %240

116:                                              ; preds = %106
  %117 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %118 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @pm_runtime_enable(i32 %119)
  %121 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %122 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %123 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @drm_vblank_init(%struct.drm_device* %121, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %116
  %130 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %131 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %234

134:                                              ; preds = %116
  %135 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %136 = call i32 @drm_mode_config_init(%struct.drm_device* %135)
  %137 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %138 = call i32 @mxsfb_create_output(%struct.drm_device* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %143 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @dev_err(i32 %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %234

146:                                              ; preds = %134
  %147 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %148 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %149 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %148, i32 0, i32 2
  %150 = load i32, i32* @mxsfb_formats, align 4
  %151 = load i32, i32* @mxsfb_formats, align 4
  %152 = call i32 @ARRAY_SIZE(i32 %151)
  %153 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %154 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %153, i32 0, i32 1
  %155 = call i32 @drm_simple_display_pipe_init(%struct.drm_device* %147, i32* %149, i32* @mxsfb_funcs, i32 %150, i32 %152, i32* null, i32* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %146
  %159 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %160 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @dev_err(i32 %161, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %234

163:                                              ; preds = %146
  %164 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %165 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %168 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %167, i32 0, i32 1
  %169 = call i32 @drm_panel_attach(i32 %166, i32* %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %163
  %173 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %174 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @dev_err(i32 %175, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %234

177:                                              ; preds = %163
  %178 = load i32, i32* @MXSFB_MIN_XRES, align 4
  %179 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %180 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 5
  store i32 %178, i32* %181, align 4
  %182 = load i32, i32* @MXSFB_MIN_YRES, align 4
  %183 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %184 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 4
  store i32 %182, i32* %185, align 8
  %186 = load i32, i32* @MXSFB_MAX_XRES, align 4
  %187 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %188 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 3
  store i32 %186, i32* %189, align 4
  %190 = load i32, i32* @MXSFB_MAX_YRES, align 4
  %191 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %192 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  store i32 %190, i32* %193, align 8
  %194 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %195 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  store i32* @mxsfb_mode_config_funcs, i32** %196, align 8
  %197 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %198 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  store i32* @mxsfb_mode_config_helpers, i32** %199, align 8
  %200 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %201 = call i32 @drm_mode_config_reset(%struct.drm_device* %200)
  %202 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %203 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @pm_runtime_get_sync(i32 %204)
  %206 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %207 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %208 = call i32 @platform_get_irq(%struct.platform_device* %207, i32 0)
  %209 = call i32 @drm_irq_install(%struct.drm_device* %206, i32 %208)
  store i32 %209, i32* %9, align 4
  %210 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %211 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @pm_runtime_put_sync(i32 %212)
  %214 = load i32, i32* %9, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %177
  %217 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %218 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @dev_err(i32 %219, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %229

221:                                              ; preds = %177
  %222 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %223 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %222)
  %224 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %225 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %226 = call i32 @platform_set_drvdata(%struct.platform_device* %224, %struct.drm_device* %225)
  %227 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %228 = call i32 @drm_helper_hpd_irq_event(%struct.drm_device* %227)
  store i32 0, i32* %3, align 4
  br label %240

229:                                              ; preds = %216
  %230 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %231 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @drm_panel_detach(i32 %232)
  br label %234

234:                                              ; preds = %229, %172, %158, %141, %129
  %235 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %236 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @pm_runtime_disable(i32 %237)
  %239 = load i32, i32* %9, align 4
  store i32 %239, i32* %3, align 4
  br label %240

240:                                              ; preds = %234, %221, %114, %69, %51, %20
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.mxsfb_drm_private* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(i32, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @mxsfb_create_output(%struct.drm_device*) #1

declare dso_local i32 @drm_simple_display_pipe_init(%struct.drm_device*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_panel_attach(i32, i32*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @drm_irq_install(%struct.drm_device*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.drm_device*) #1

declare dso_local i32 @drm_helper_hpd_irq_event(%struct.drm_device*) #1

declare dso_local i32 @drm_panel_detach(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
