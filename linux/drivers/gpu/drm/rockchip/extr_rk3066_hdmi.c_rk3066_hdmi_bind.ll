; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.rk3066_hdmi = type { i32*, i32*, %struct.TYPE_7__, %struct.TYPE_8__, i32*, i32*, %struct.drm_device*, %struct.device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*)* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to get HDMI hclk clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot enable HDMI hclk clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"unable to get rockchip,grf\0A\00", align 1
@HDMI_INTERNAL_CLK_DIVIDER = common dso_local global i32 0, align 4
@HDMI_SYS_POWER_MODE_B = common dso_local global i32 0, align 4
@HDMI_INTR_MASK1 = common dso_local global i32 0, align 4
@HDMI_INTR_HOTPLUG = common dso_local global i32 0, align 4
@HDMI_INTR_MASK2 = common dso_local global i32 0, align 4
@HDMI_INTR_MASK3 = common dso_local global i32 0, align 4
@HDMI_INTR_MASK4 = common dso_local global i32 0, align 4
@HDMI_SYS_POWER_MODE_A = common dso_local global i32 0, align 4
@rk3066_hdmi_hardirq = common dso_local global i32 0, align 4
@rk3066_hdmi_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to request hdmi irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @rk3066_hdmi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3066_hdmi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.rk3066_hdmi*, align 8
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
  %20 = call %struct.rk3066_hdmi* @devm_kzalloc(%struct.device* %18, i32 64, i32 %19)
  store %struct.rk3066_hdmi* %20, %struct.rk3066_hdmi** %10, align 8
  %21 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %22 = icmp ne %struct.rk3066_hdmi* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %209

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %29 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %28, i32 0, i32 7
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %31 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %32 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %31, i32 0, i32 6
  store %struct.drm_device* %30, %struct.drm_device** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %11, align 8
  %36 = load %struct.resource*, %struct.resource** %11, align 8
  %37 = icmp ne %struct.resource* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %209

41:                                               ; preds = %26
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.resource*, %struct.resource** %11, align 8
  %44 = call i32* @devm_ioremap_resource(%struct.device* %42, %struct.resource* %43)
  %45 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %46 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %45, i32 0, i32 5
  store i32* %44, i32** %46, align 8
  %47 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %48 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @IS_ERR(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %54 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @PTR_ERR(i32* %55)
  store i32 %56, i32* %4, align 4
  br label %209

57:                                               ; preds = %41
  %58 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %59 = call i32 @platform_get_irq(%struct.platform_device* %58, i32 0)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %4, align 4
  br label %209

64:                                               ; preds = %57
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = call i32* @devm_clk_get(%struct.device* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %68 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %67, i32 0, i32 0
  store i32* %66, i32** %68, align 8
  %69 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %70 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @IS_ERR(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %78 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @PTR_ERR(i32* %79)
  store i32 %80, i32* %4, align 4
  br label %209

81:                                               ; preds = %64
  %82 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %83 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @clk_prepare_enable(i32* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %4, align 4
  br label %209

93:                                               ; preds = %81
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = getelementptr inbounds %struct.device, %struct.device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32* @syscon_regmap_lookup_by_phandle(i32 %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %99 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %98, i32 0, i32 4
  store i32* %97, i32** %99, align 8
  %100 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %101 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @IS_ERR(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %93
  %106 = load %struct.device*, %struct.device** %5, align 8
  %107 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %108 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %109 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @PTR_ERR(i32* %110)
  store i32 %111, i32* %13, align 4
  br label %203

112:                                              ; preds = %93
  %113 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %114 = load i32, i32* @HDMI_INTERNAL_CLK_DIVIDER, align 4
  %115 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %113, i32 %114, i32 25)
  %116 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %117 = call i32* @rk3066_hdmi_i2c_adapter(%struct.rk3066_hdmi* %116)
  %118 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %119 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %118, i32 0, i32 1
  store i32* %117, i32** %119, align 8
  %120 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %121 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @IS_ERR(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %112
  %126 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %127 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @PTR_ERR(i32* %128)
  store i32 %129, i32* %13, align 4
  %130 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %131 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %130, i32 0, i32 1
  store i32* null, i32** %131, align 8
  br label %203

132:                                              ; preds = %112
  %133 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %134 = load i32, i32* @HDMI_SYS_POWER_MODE_B, align 4
  %135 = call i32 @rk3066_hdmi_set_power_mode(%struct.rk3066_hdmi* %133, i32 %134)
  %136 = call i32 @usleep_range(i32 999, i32 1000)
  %137 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %138 = load i32, i32* @HDMI_INTR_MASK1, align 4
  %139 = load i32, i32* @HDMI_INTR_HOTPLUG, align 4
  %140 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %137, i32 %138, i32 %139)
  %141 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %142 = load i32, i32* @HDMI_INTR_MASK2, align 4
  %143 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %141, i32 %142, i32 0)
  %144 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %145 = load i32, i32* @HDMI_INTR_MASK3, align 4
  %146 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %144, i32 %145, i32 0)
  %147 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %148 = load i32, i32* @HDMI_INTR_MASK4, align 4
  %149 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %147, i32 %148, i32 0)
  %150 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %151 = load i32, i32* @HDMI_SYS_POWER_MODE_A, align 4
  %152 = call i32 @rk3066_hdmi_set_power_mode(%struct.rk3066_hdmi* %150, i32 %151)
  %153 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %154 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %155 = call i32 @rk3066_hdmi_register(%struct.drm_device* %153, %struct.rk3066_hdmi* %154)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %132
  br label %198

159:                                              ; preds = %132
  %160 = load %struct.device*, %struct.device** %5, align 8
  %161 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %162 = call i32 @dev_set_drvdata(%struct.device* %160, %struct.rk3066_hdmi* %161)
  %163 = load %struct.device*, %struct.device** %5, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @rk3066_hdmi_hardirq, align 4
  %166 = load i32, i32* @rk3066_hdmi_irq, align 4
  %167 = load i32, i32* @IRQF_SHARED, align 4
  %168 = load %struct.device*, %struct.device** %5, align 8
  %169 = call i32 @dev_name(%struct.device* %168)
  %170 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %171 = call i32 @devm_request_threaded_irq(%struct.device* %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %169, %struct.rk3066_hdmi* %170)
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %159
  %175 = load %struct.device*, %struct.device** %5, align 8
  %176 = load i32, i32* %13, align 4
  %177 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %175, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %176)
  br label %179

178:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  br label %209

179:                                              ; preds = %174
  %180 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %181 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %184, align 8
  %186 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %187 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %186, i32 0, i32 3
  %188 = call i32 %185(%struct.TYPE_8__* %187)
  %189 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %190 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %193, align 8
  %195 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %196 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %195, i32 0, i32 2
  %197 = call i32 %194(%struct.TYPE_7__* %196)
  br label %198

198:                                              ; preds = %179, %158
  %199 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %200 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @i2c_put_adapter(i32* %201)
  br label %203

203:                                              ; preds = %198, %125, %105
  %204 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %10, align 8
  %205 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @clk_disable_unprepare(i32* %206)
  %208 = load i32, i32* %13, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %203, %178, %88, %74, %62, %52, %38, %23
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.rk3066_hdmi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @hdmi_writeb(%struct.rk3066_hdmi*, i32, i32) #1

declare dso_local i32* @rk3066_hdmi_i2c_adapter(%struct.rk3066_hdmi*) #1

declare dso_local i32 @rk3066_hdmi_set_power_mode(%struct.rk3066_hdmi*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rk3066_hdmi_register(%struct.drm_device*, %struct.rk3066_hdmi*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.rk3066_hdmi*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.rk3066_hdmi*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @i2c_put_adapter(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
