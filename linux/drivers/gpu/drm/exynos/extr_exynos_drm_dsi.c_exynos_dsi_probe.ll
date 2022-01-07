; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.exynos_dsi = type { i64, i32, i32, i32, i32*, %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.device*, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_5__ = type { %struct.device*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@exynos_dsi_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vddcore\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@clk_names = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"sclk_mipi\00", align 1
@OLD_SCLK_MIPI_CLK_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to get the clock: %s\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to remap io region\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"dsim\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to get dsim phy\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to request dsi irq resource\0A\00", align 1
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@exynos_dsi_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"failed to request dsi irq\0A\00", align 1
@exynos_dsi_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_dsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.exynos_dsi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.exynos_dsi* @devm_kzalloc(%struct.device* %11, i32 88, i32 %12)
  store %struct.exynos_dsi* %13, %struct.exynos_dsi** %6, align 8
  %14 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %15 = icmp ne %struct.exynos_dsi* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %256

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  %22 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %23 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %22, i32 0, i32 12
  store i32 %21, i32* %23, align 4
  %24 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %25 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %24, i32 0, i32 11
  %26 = call i32 @init_completion(i32* %25)
  %27 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %28 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %27, i32 0, i32 10
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %31 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %30, i32 0, i32 9
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %34 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32* @exynos_dsi_ops, i32** %35, align 8
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %38 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store %struct.device* %36, %struct.device** %39, align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %42 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %41, i32 0, i32 7
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call %struct.TYPE_6__* @of_device_get_match_data(%struct.device* %43)
  %45 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %46 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %45, i32 0, i32 5
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %46, align 8
  %47 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %48 = call i32 @exynos_dsi_parse_dt(%struct.exynos_dsi* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %19
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %256

53:                                               ; preds = %19
  %54 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %55 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %54, i32 0, i32 6
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %58, align 8
  %59 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %60 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %59, i32 0, i32 6
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %63, align 8
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %66 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %65, i32 0, i32 6
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %67)
  %69 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %70 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %69, i32 0, i32 6
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = call i32 @devm_regulator_bulk_get(%struct.device* %64, i32 %68, %struct.TYPE_7__* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %53
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EPROBE_DEFER, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %256

81:                                               ; preds = %53
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %84 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %83, i32 0, i32 5
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i32* @devm_kcalloc(%struct.device* %82, i32 %87, i32 4, i32 %88)
  %90 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %91 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %90, i32 0, i32 4
  store i32* %89, i32** %91, align 8
  %92 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %93 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %81
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %256

99:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %166, %99
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %103 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %102, i32 0, i32 5
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %101, %106
  br i1 %107, label %108, label %169

108:                                              ; preds = %100
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load i32*, i32** @clk_names, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @devm_clk_get(%struct.device* %109, i32 %114)
  %116 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %117 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %115, i32* %121, align 4
  %122 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %123 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @IS_ERR(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %165

131:                                              ; preds = %108
  %132 = load i32*, i32** @clk_names, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @strcmp(i32 %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %131
  %140 = load i32*, i32** @clk_names, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @OLD_SCLK_MIPI_CLK_NAME, align 4
  %146 = call i32 @strcpy(i32 %144, i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %8, align 4
  br label %166

149:                                              ; preds = %131
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = load i32*, i32** @clk_names, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  %157 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %158 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @PTR_ERR(i32 %163)
  store i32 %164, i32* %2, align 4
  br label %256

165:                                              ; preds = %108
  br label %166

166:                                              ; preds = %165, %139
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %100

169:                                              ; preds = %100
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = load i32, i32* @IORESOURCE_MEM, align 4
  %172 = call %struct.resource* @platform_get_resource(%struct.platform_device* %170, i32 %171, i32 0)
  store %struct.resource* %172, %struct.resource** %5, align 8
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = load %struct.resource*, %struct.resource** %5, align 8
  %175 = call i32 @devm_ioremap_resource(%struct.device* %173, %struct.resource* %174)
  %176 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %177 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 8
  %178 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %179 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @IS_ERR(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %169
  %184 = load %struct.device*, %struct.device** %4, align 8
  %185 = call i32 @dev_err(%struct.device* %184, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %186 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %187 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @PTR_ERR(i32 %188)
  store i32 %189, i32* %2, align 4
  br label %256

190:                                              ; preds = %169
  %191 = load %struct.device*, %struct.device** %4, align 8
  %192 = call i32 @devm_phy_get(%struct.device* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %193 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %194 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 4
  %195 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %196 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @IS_ERR(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %190
  %201 = load %struct.device*, %struct.device** %4, align 8
  %202 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %201, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %203 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %204 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @PTR_ERR(i32 %205)
  store i32 %206, i32* %2, align 4
  br label %256

207:                                              ; preds = %190
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = call i64 @platform_get_irq(%struct.platform_device* %208, i32 0)
  %210 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %211 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  %212 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %213 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %207
  %217 = load %struct.device*, %struct.device** %4, align 8
  %218 = call i32 @dev_err(%struct.device* %217, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %219 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %220 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %2, align 4
  br label %256

223:                                              ; preds = %207
  %224 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %225 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %229 = call i32 @irq_set_status_flags(i32 %227, i32 %228)
  %230 = load %struct.device*, %struct.device** %4, align 8
  %231 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %232 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = trunc i64 %233 to i32
  %235 = load i32, i32* @exynos_dsi_irq, align 4
  %236 = load i32, i32* @IRQF_ONESHOT, align 4
  %237 = load %struct.device*, %struct.device** %4, align 8
  %238 = call i32 @dev_name(%struct.device* %237)
  %239 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %240 = call i32 @devm_request_threaded_irq(%struct.device* %230, i32 %234, i32* null, i32 %235, i32 %236, i32 %238, %struct.exynos_dsi* %239)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %223
  %244 = load %struct.device*, %struct.device** %4, align 8
  %245 = call i32 @dev_err(%struct.device* %244, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %246 = load i32, i32* %7, align 4
  store i32 %246, i32* %2, align 4
  br label %256

247:                                              ; preds = %223
  %248 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %249 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %250 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %249, i32 0, i32 1
  %251 = call i32 @platform_set_drvdata(%struct.platform_device* %248, i32* %250)
  %252 = load %struct.device*, %struct.device** %4, align 8
  %253 = call i32 @pm_runtime_enable(%struct.device* %252)
  %254 = load %struct.device*, %struct.device** %4, align 8
  %255 = call i32 @component_add(%struct.device* %254, i32* @exynos_dsi_component_ops)
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %247, %243, %216, %200, %183, %149, %96, %75, %51, %16
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local %struct.exynos_dsi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_6__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @exynos_dsi_parse_dt(%struct.exynos_dsi*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_phy_get(%struct.device*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.exynos_dsi*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
