; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dpaux.c_tegra_dpaux_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dpaux.c_tegra_dpaux_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.tegra_dpaux = type { i32, i8*, %struct.TYPE_16__, %struct.TYPE_15__, i32, %struct.TYPE_14__*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32*, i32*, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra_dpaux_hotplug = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"failed to get IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dpaux\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get reset control: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to get module clock: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to get parent clock: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to set clock to 270 MHz: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to get VDD supply: %ld\0A\00", align 1
@tegra_dpaux_irq = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to request IRQ#%u: %d\0A\00", align 1
@tegra_dpaux_transfer = common dso_local global i32 0, align 4
@DPAUX_PADCTL_FUNC_I2C = common dso_local global i32 0, align 4
@DPAUX_INTR_AUX_DONE = common dso_local global i32 0, align 4
@DPAUX_INTR_IRQ_EVENT = common dso_local global i32 0, align 4
@DPAUX_INTR_UNPLUG_EVENT = common dso_local global i32 0, align 4
@DPAUX_INTR_PLUG_EVENT = common dso_local global i32 0, align 4
@DPAUX_INTR_EN_AUX = common dso_local global i32 0, align 4
@DPAUX_INTR_AUX = common dso_local global i32 0, align 4
@dpaux_lock = common dso_local global i32 0, align 4
@dpaux_list = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@tegra_dpaux_pinctrl_ops = common dso_local global i32 0, align 4
@tegra_dpaux_pinmux_ops = common dso_local global i32 0, align 4
@tegra_dpaux_pins = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_dpaux_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dpaux_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_dpaux*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.tegra_dpaux* @devm_kzalloc(%struct.TYPE_14__* %9, i32 136, i32 %10)
  store %struct.tegra_dpaux* %11, %struct.tegra_dpaux** %4, align 8
  %12 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %13 = icmp ne %struct.tegra_dpaux* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %281

17:                                               ; preds = %1
  %18 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %18, i32 0, i32 12
  %20 = load i32, i32* @tegra_dpaux_hotplug, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %22, i32 0, i32 11
  %24 = call i32 @init_completion(i32* %23)
  %25 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %25, i32 0, i32 0
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %31 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %30, i32 0, i32 5
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load i32, i32* @IORESOURCE_MEM, align 4
  %34 = call %struct.resource* @platform_get_resource(%struct.platform_device* %32, i32 %33, i32 0)
  store %struct.resource* %34, %struct.resource** %5, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = call i8* @devm_ioremap_resource(%struct.TYPE_14__* %36, %struct.resource* %37)
  %39 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %39, i32 0, i32 10
  store i8* %38, i8** %40, align 8
  %41 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %41, i32 0, i32 10
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %17
  %47 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %48 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %47, i32 0, i32 10
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %2, align 4
  br label %281

51:                                               ; preds = %17
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = call i32 @platform_get_irq(%struct.platform_device* %52, i32 0)
  %54 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %55 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %57 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ENXIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %281

66:                                               ; preds = %51
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %96, label %72

72:                                               ; preds = %66
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i8* @devm_reset_control_get(%struct.TYPE_14__* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %76, i32 0, i32 9
  store i8* %75, i8** %77, align 8
  %78 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %79 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %78, i32 0, i32 9
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @IS_ERR(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %72
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %87 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %86, i32 0, i32 9
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  %90 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %92 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %91, i32 0, i32 9
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %2, align 4
  br label %281

95:                                               ; preds = %72
  br label %96

96:                                               ; preds = %95, %66
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i8* @devm_clk_get(%struct.TYPE_14__* %98, i8* null)
  %100 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %101 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %100, i32 0, i32 8
  store i8* %99, i8** %101, align 8
  %102 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %103 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %102, i32 0, i32 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @IS_ERR(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %96
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %111 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %110, i32 0, i32 8
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  %114 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %116 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %115, i32 0, i32 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @PTR_ERR(i8* %117)
  store i32 %118, i32* %2, align 4
  br label %281

119:                                              ; preds = %96
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i8* @devm_clk_get(%struct.TYPE_14__* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %123 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %124 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %123, i32 0, i32 7
  store i8* %122, i8** %124, align 8
  %125 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %126 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %125, i32 0, i32 7
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @IS_ERR(i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %119
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %134 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %133, i32 0, i32 7
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @PTR_ERR(i8* %135)
  %137 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %136)
  %138 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %139 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %138, i32 0, i32 7
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @PTR_ERR(i8* %140)
  store i32 %141, i32* %2, align 4
  br label %281

142:                                              ; preds = %119
  %143 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %144 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %143, i32 0, i32 7
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @clk_set_rate(i8* %145, i32 270000000)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load i32, i32* %7, align 4
  %153 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %2, align 4
  br label %281

155:                                              ; preds = %142
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i8* @devm_regulator_get_optional(%struct.TYPE_14__* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %159 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %160 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %159, i32 0, i32 6
  store i8* %158, i8** %160, align 8
  %161 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %162 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %161, i32 0, i32 6
  %163 = load i8*, i8** %162, align 8
  %164 = call i64 @IS_ERR(i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %196

166:                                              ; preds = %155
  %167 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %168 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %167, i32 0, i32 6
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @PTR_ERR(i8* %169)
  %171 = load i32, i32* @ENODEV, align 4
  %172 = sub nsw i32 0, %171
  %173 = icmp ne i32 %170, %172
  br i1 %173, label %174, label %195

174:                                              ; preds = %166
  %175 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %176 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %175, i32 0, i32 6
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @PTR_ERR(i8* %177)
  %179 = load i32, i32* @EPROBE_DEFER, align 4
  %180 = sub nsw i32 0, %179
  %181 = icmp ne i32 %178, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %174
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %186 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %185, i32 0, i32 6
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @PTR_ERR(i8* %187)
  %189 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %182, %174
  %191 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %192 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %191, i32 0, i32 6
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @PTR_ERR(i8* %193)
  store i32 %194, i32* %2, align 4
  br label %281

195:                                              ; preds = %166
  br label %196

196:                                              ; preds = %195, %155
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %199 = call i32 @platform_set_drvdata(%struct.platform_device* %197, %struct.tegra_dpaux* %198)
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = call i32 @pm_runtime_enable(%struct.TYPE_14__* %201)
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = call i32 @pm_runtime_get_sync(%struct.TYPE_14__* %204)
  %206 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %207 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %206, i32 0, i32 5
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %210 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @tegra_dpaux_irq, align 4
  %213 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %214 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %213, i32 0, i32 5
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = call i32 @dev_name(%struct.TYPE_14__* %215)
  %217 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %218 = call i32 @devm_request_irq(%struct.TYPE_14__* %208, i32 %211, i32 %212, i32 0, i32 %216, %struct.tegra_dpaux* %217)
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* %7, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %196
  %222 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %223 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %222, i32 0, i32 5
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %223, align 8
  %225 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %226 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %224, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %227, i32 %228)
  %230 = load i32, i32* %7, align 4
  store i32 %230, i32* %2, align 4
  br label %281

231:                                              ; preds = %196
  %232 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %233 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @disable_irq(i32 %234)
  %236 = load i32, i32* @tegra_dpaux_transfer, align 4
  %237 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %238 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  store i32 %236, i32* %239, align 8
  %240 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %241 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %240, i32 0, i32 0
  %242 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %243 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  store %struct.TYPE_14__* %241, %struct.TYPE_14__** %244, align 8
  %245 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %246 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %245, i32 0, i32 3
  %247 = call i32 @drm_dp_aux_register(%struct.TYPE_15__* %246)
  store i32 %247, i32* %7, align 4
  %248 = load i32, i32* %7, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %231
  %251 = load i32, i32* %7, align 4
  store i32 %251, i32* %2, align 4
  br label %281

252:                                              ; preds = %231
  %253 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %254 = load i32, i32* @DPAUX_PADCTL_FUNC_I2C, align 4
  %255 = call i32 @tegra_dpaux_pad_config(%struct.tegra_dpaux* %253, i32 %254)
  store i32 %255, i32* %7, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %252
  %259 = load i32, i32* %7, align 4
  store i32 %259, i32* %2, align 4
  br label %281

260:                                              ; preds = %252
  %261 = load i32, i32* @DPAUX_INTR_AUX_DONE, align 4
  %262 = load i32, i32* @DPAUX_INTR_IRQ_EVENT, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* @DPAUX_INTR_UNPLUG_EVENT, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* @DPAUX_INTR_PLUG_EVENT, align 4
  %267 = or i32 %265, %266
  store i32 %267, i32* %6, align 4
  %268 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* @DPAUX_INTR_EN_AUX, align 4
  %271 = call i32 @tegra_dpaux_writel(%struct.tegra_dpaux* %268, i32 %269, i32 %270)
  %272 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* @DPAUX_INTR_AUX, align 4
  %275 = call i32 @tegra_dpaux_writel(%struct.tegra_dpaux* %272, i32 %273, i32 %274)
  %276 = call i32 @mutex_lock(i32* @dpaux_lock)
  %277 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %278 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %277, i32 0, i32 0
  %279 = call i32 @list_add_tail(i32* %278, i32* @dpaux_list)
  %280 = call i32 @mutex_unlock(i32* @dpaux_lock)
  store i32 0, i32* %2, align 4
  br label %281

281:                                              ; preds = %260, %258, %250, %221, %190, %149, %130, %107, %83, %60, %46, %14
  %282 = load i32, i32* %2, align 4
  ret i32 %282
}

declare dso_local %struct.tegra_dpaux* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i8* @devm_reset_control_get(%struct.TYPE_14__*, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @clk_set_rate(i8*, i32) #1

declare dso_local i8* @devm_regulator_get_optional(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_dpaux*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_14__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_14__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.tegra_dpaux*) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @drm_dp_aux_register(%struct.TYPE_15__*) #1

declare dso_local i32 @tegra_dpaux_pad_config(%struct.tegra_dpaux*, i32) #1

declare dso_local i32 @tegra_dpaux_writel(%struct.tegra_dpaux*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
