; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_crtc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_crtc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.zx_vou_hw = type { i8*, i8*, %struct.device*, i8*, i8*, i8*, i8*, i8* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"osd\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to remap osd region: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"timing_ctrl\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to remap timing_ctrl region: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dtrc\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to remap dtrc region: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"vou_ctrl\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"failed to remap vou_ctrl region: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"otfppu\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"failed to remap otfppu region: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"failed to get axi_clk: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"ppu_wclk\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"failed to get ppu_clk: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"failed to enable axi_clk: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"failed to enable ppu_clk: %d\0A\00", align 1
@vou_irq_handler = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"zx_vou\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"failed to request vou irq: %d\0A\00", align 1
@VOU_CHN_MAIN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [38 x i8] c"failed to init main channel crtc: %d\0A\00", align 1
@VOU_CHN_AUX = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [37 x i8] c"failed to init aux channel crtc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @zx_crtc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_crtc_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.zx_vou_hw*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.platform_device* @to_platform_device(%struct.device* %14)
  store %struct.platform_device* %15, %struct.platform_device** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.drm_device*
  store %struct.drm_device* %17, %struct.drm_device** %9, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.zx_vou_hw* @devm_kzalloc(%struct.device* %18, i32 64, i32 %19)
  store %struct.zx_vou_hw* %20, %struct.zx_vou_hw** %10, align 8
  %21 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %22 = icmp ne %struct.zx_vou_hw* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %266

26:                                               ; preds = %3
  %27 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %27, i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %29, %struct.resource** %11, align 8
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.resource*, %struct.resource** %11, align 8
  %32 = call i8* @devm_ioremap_resource(%struct.device* %30, %struct.resource* %31)
  %33 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %34 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %33, i32 0, i32 7
  store i8* %32, i8** %34, align 8
  %35 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %36 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %35, i32 0, i32 7
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @IS_ERR(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %26
  %41 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %42 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %41, i32 0, i32 7
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @DRM_DEV_ERROR(%struct.device* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %4, align 4
  br label %266

49:                                               ; preds = %26
  %50 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %50, i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %52, %struct.resource** %11, align 8
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load %struct.resource*, %struct.resource** %11, align 8
  %55 = call i8* @devm_ioremap_resource(%struct.device* %53, %struct.resource* %54)
  %56 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %57 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  %58 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %59 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %58, i32 0, i32 6
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %49
  %64 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %65 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %64, i32 0, i32 6
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %13, align 4
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @DRM_DEV_ERROR(%struct.device* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %4, align 4
  br label %266

72:                                               ; preds = %49
  %73 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %74 = load i32, i32* @IORESOURCE_MEM, align 4
  %75 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %73, i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.resource* %75, %struct.resource** %11, align 8
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = load %struct.resource*, %struct.resource** %11, align 8
  %78 = call i8* @devm_ioremap_resource(%struct.device* %76, %struct.resource* %77)
  %79 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %80 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %82 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %81, i32 0, i32 5
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @IS_ERR(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %72
  %87 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %88 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %87, i32 0, i32 5
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @PTR_ERR(i8* %89)
  store i32 %90, i32* %13, align 4
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @DRM_DEV_ERROR(%struct.device* %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %4, align 4
  br label %266

95:                                               ; preds = %72
  %96 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %97 = load i32, i32* @IORESOURCE_MEM, align 4
  %98 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %96, i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store %struct.resource* %98, %struct.resource** %11, align 8
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load %struct.resource*, %struct.resource** %11, align 8
  %101 = call i8* @devm_ioremap_resource(%struct.device* %99, %struct.resource* %100)
  %102 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %103 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %105 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @IS_ERR(i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %95
  %110 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %111 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %110, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %13, align 4
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @DRM_DEV_ERROR(%struct.device* %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %4, align 4
  br label %266

118:                                              ; preds = %95
  %119 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %120 = load i32, i32* @IORESOURCE_MEM, align 4
  %121 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %119, i32 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store %struct.resource* %121, %struct.resource** %11, align 8
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = load %struct.resource*, %struct.resource** %11, align 8
  %124 = call i8* @devm_ioremap_resource(%struct.device* %122, %struct.resource* %123)
  %125 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %126 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %128 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @IS_ERR(i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %118
  %133 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %134 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %133, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @PTR_ERR(i8* %135)
  store i32 %136, i32* %13, align 4
  %137 = load %struct.device*, %struct.device** %5, align 8
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @DRM_DEV_ERROR(%struct.device* %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %4, align 4
  br label %266

141:                                              ; preds = %118
  %142 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %143 = call i32 @platform_get_irq(%struct.platform_device* %142, i32 0)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %4, align 4
  br label %266

148:                                              ; preds = %141
  %149 = load %struct.device*, %struct.device** %5, align 8
  %150 = call i8* @devm_clk_get(%struct.device* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %151 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %152 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %154 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i64 @IS_ERR(i8* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %148
  %159 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %160 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @PTR_ERR(i8* %161)
  store i32 %162, i32* %13, align 4
  %163 = load %struct.device*, %struct.device** %5, align 8
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @DRM_DEV_ERROR(%struct.device* %163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %13, align 4
  store i32 %166, i32* %4, align 4
  br label %266

167:                                              ; preds = %148
  %168 = load %struct.device*, %struct.device** %5, align 8
  %169 = call i8* @devm_clk_get(%struct.device* %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %170 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %171 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  %172 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %173 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i64 @IS_ERR(i8* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %167
  %178 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %179 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @PTR_ERR(i8* %180)
  store i32 %181, i32* %13, align 4
  %182 = load %struct.device*, %struct.device** %5, align 8
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @DRM_DEV_ERROR(%struct.device* %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %13, align 4
  store i32 %185, i32* %4, align 4
  br label %266

186:                                              ; preds = %167
  %187 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %188 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @clk_prepare_enable(i8* %189)
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %186
  %194 = load %struct.device*, %struct.device** %5, align 8
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @DRM_DEV_ERROR(%struct.device* %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %13, align 4
  store i32 %197, i32* %4, align 4
  br label %266

198:                                              ; preds = %186
  %199 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %200 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @clk_prepare_enable(i8* %201)
  %203 = load i32, i32* %13, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = load %struct.device*, %struct.device** %5, align 8
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @DRM_DEV_ERROR(%struct.device* %206, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %207)
  br label %260

209:                                              ; preds = %198
  %210 = load %struct.device*, %struct.device** %5, align 8
  %211 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %212 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %211, i32 0, i32 2
  store %struct.device* %210, %struct.device** %212, align 8
  %213 = load %struct.device*, %struct.device** %5, align 8
  %214 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %215 = call i32 @dev_set_drvdata(%struct.device* %213, %struct.zx_vou_hw* %214)
  %216 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %217 = call i32 @vou_hw_init(%struct.zx_vou_hw* %216)
  %218 = load %struct.device*, %struct.device** %5, align 8
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* @vou_irq_handler, align 4
  %221 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %222 = call i32 @devm_request_irq(%struct.device* %218, i32 %219, i32 %220, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %struct.zx_vou_hw* %221)
  store i32 %222, i32* %13, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %209
  %226 = load %struct.device*, %struct.device** %5, align 8
  %227 = load i32, i32* %13, align 4
  %228 = call i32 @DRM_DEV_ERROR(%struct.device* %226, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %227)
  br label %255

229:                                              ; preds = %209
  %230 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %231 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %232 = load i32, i32* @VOU_CHN_MAIN, align 4
  %233 = call i32 @zx_crtc_init(%struct.drm_device* %230, %struct.zx_vou_hw* %231, i32 %232)
  store i32 %233, i32* %13, align 4
  %234 = load i32, i32* %13, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %229
  %237 = load %struct.device*, %struct.device** %5, align 8
  %238 = load i32, i32* %13, align 4
  %239 = call i32 @DRM_DEV_ERROR(%struct.device* %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i32 %238)
  br label %255

240:                                              ; preds = %229
  %241 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %242 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %243 = load i32, i32* @VOU_CHN_AUX, align 4
  %244 = call i32 @zx_crtc_init(%struct.drm_device* %241, %struct.zx_vou_hw* %242, i32 %243)
  store i32 %244, i32* %13, align 4
  %245 = load i32, i32* %13, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %240
  %248 = load %struct.device*, %struct.device** %5, align 8
  %249 = load i32, i32* %13, align 4
  %250 = call i32 @DRM_DEV_ERROR(%struct.device* %248, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %249)
  br label %255

251:                                              ; preds = %240
  %252 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %253 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %254 = call i32 @zx_overlay_init(%struct.drm_device* %252, %struct.zx_vou_hw* %253)
  store i32 0, i32* %4, align 4
  br label %266

255:                                              ; preds = %247, %236, %225
  %256 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %257 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @clk_disable_unprepare(i8* %258)
  br label %260

260:                                              ; preds = %255, %205
  %261 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %10, align 8
  %262 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @clk_disable_unprepare(i8* %263)
  %265 = load i32, i32* %13, align 4
  store i32 %265, i32* %4, align 4
  br label %266

266:                                              ; preds = %260, %251, %193, %177, %158, %146, %132, %109, %86, %63, %40, %23
  %267 = load i32, i32* %4, align 4
  ret i32 %267
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.zx_vou_hw* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.zx_vou_hw*) #1

declare dso_local i32 @vou_hw_init(%struct.zx_vou_hw*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.zx_vou_hw*) #1

declare dso_local i32 @zx_crtc_init(%struct.drm_device*, %struct.zx_vou_hw*, i32) #1

declare dso_local i32 @zx_overlay_init(%struct.drm_device*, %struct.zx_vou_hw*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
