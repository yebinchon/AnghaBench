; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_dsi = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mtk_dsi_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to get engine clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"digital\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to get digital clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to get hs clock: %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to ioremap memory: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"dphy\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to get MIPI-DPHY: %d\0A\00", align 1
@MTK_DSI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to identify by alias: %d\0A\00", align 1
@mtk_dsi_funcs = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"Failed to initialize component: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"failed to request dsi irq resource\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@mtk_dsi_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"failed to request mediatek dsi irq\0A\00", align 1
@mtk_dsi_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_dsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dsi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_dsi*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mtk_dsi* @devm_kzalloc(%struct.device* %12, i32 72, i32 %13)
  store %struct.mtk_dsi* %14, %struct.mtk_dsi** %4, align 8
  %15 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %16 = icmp ne %struct.mtk_dsi* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %211

20:                                               ; preds = %1
  %21 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* @mtk_dsi_ops, i32** %23, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %25, i32 0, i32 9
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.device* %24, %struct.device** %27, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %31, i32 0, i32 8
  %33 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %33, i32 0, i32 7
  %35 = call i32 @drm_of_find_panel_or_bridge(i32 %30, i32 0, i32 0, i32* %32, i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %2, align 4
  br label %211

40:                                               ; preds = %20
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i8* @devm_clk_get(%struct.device* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %44 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %46 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %45, i32 0, i32 6
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %52 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %51, i32 0, i32 6
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %211

59:                                               ; preds = %40
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i8* @devm_clk_get(%struct.device* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %63 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  %64 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %65 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %64, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @IS_ERR(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %59
  %70 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %71 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %70, i32 0, i32 5
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @PTR_ERR(i8* %72)
  store i32 %73, i32* %9, align 4
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %211

78:                                               ; preds = %59
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = call i8* @devm_clk_get(%struct.device* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %82 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %84 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %83, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @IS_ERR(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %78
  %89 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %90 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @PTR_ERR(i8* %91)
  store i32 %92, i32* %9, align 4
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %2, align 4
  br label %211

97:                                               ; preds = %78
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load i32, i32* @IORESOURCE_MEM, align 4
  %100 = call %struct.resource* @platform_get_resource(%struct.platform_device* %98, i32 %99, i32 0)
  store %struct.resource* %100, %struct.resource** %6, align 8
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = load %struct.resource*, %struct.resource** %6, align 8
  %103 = call i8* @devm_ioremap_resource(%struct.device* %101, %struct.resource* %102)
  %104 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %105 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %107 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @IS_ERR(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %97
  %112 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %113 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @PTR_ERR(i8* %114)
  store i32 %115, i32* %9, align 4
  %116 = load %struct.device*, %struct.device** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %2, align 4
  br label %211

120:                                              ; preds = %97
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = call i8* @devm_phy_get(%struct.device* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %123 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %124 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %126 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @IS_ERR(i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %120
  %131 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %132 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @PTR_ERR(i8* %133)
  store i32 %134, i32* %9, align 4
  %135 = load %struct.device*, %struct.device** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %2, align 4
  br label %211

139:                                              ; preds = %120
  %140 = load %struct.device*, %struct.device** %5, align 8
  %141 = getelementptr inbounds %struct.device, %struct.device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MTK_DSI, align 4
  %144 = call i32 @mtk_ddp_comp_get_id(i32 %142, i32 %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load %struct.device*, %struct.device** %5, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %2, align 4
  br label %211

152:                                              ; preds = %139
  %153 = load %struct.device*, %struct.device** %5, align 8
  %154 = load %struct.device*, %struct.device** %5, align 8
  %155 = getelementptr inbounds %struct.device, %struct.device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %158 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %157, i32 0, i32 1
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @mtk_ddp_comp_init(%struct.device* %153, i32 %156, i32* %158, i32 %159, i32* @mtk_dsi_funcs)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %152
  %164 = load %struct.device*, %struct.device** %5, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %164, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %2, align 4
  br label %211

168:                                              ; preds = %152
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = call i32 @platform_get_irq(%struct.platform_device* %169, i32 0)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %175, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %177 = load i32, i32* @EPROBE_DEFER, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %2, align 4
  br label %211

179:                                              ; preds = %168
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %182 = call i32 @irq_set_status_flags(i32 %180, i32 %181)
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @mtk_dsi_irq, align 4
  %187 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = call i32 @dev_name(%struct.device* %189)
  %191 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %192 = call i32 @devm_request_irq(%struct.device* %184, i32 %185, i32 %186, i32 %187, i32 %190, %struct.mtk_dsi* %191)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %179
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %197, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %199 = load i32, i32* @EPROBE_DEFER, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %2, align 4
  br label %211

201:                                              ; preds = %179
  %202 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %203 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %202, i32 0, i32 0
  %204 = call i32 @init_waitqueue_head(i32* %203)
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %207 = call i32 @platform_set_drvdata(%struct.platform_device* %205, %struct.mtk_dsi* %206)
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %208, i32 0, i32 0
  %210 = call i32 @component_add(%struct.device* %209, i32* @mtk_dsi_component_ops)
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %201, %195, %173, %163, %147, %130, %111, %88, %69, %50, %38, %17
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.mtk_dsi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i8* @devm_phy_get(%struct.device*, i8*) #1

declare dso_local i32 @mtk_ddp_comp_get_id(i32, i32) #1

declare dso_local i32 @mtk_ddp_comp_init(%struct.device*, i32, i32*, i32, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.mtk_dsi*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_dsi*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
