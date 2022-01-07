; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.tegra_dc = type { i64, i64, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__*, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32 }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to get reset\0A\00", align 1
@TEGRA_POWERGATE_DIS = common dso_local global i32 0, align 4
@TEGRA_POWERGATE_DISB = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"failed to get IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to probe RGB output: %d\0A\00", align 1
@dc_client_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_dc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.tegra_dc*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tegra_dc* @devm_kzalloc(i32* %8, i32 80, i32 %9)
  store %struct.tegra_dc* %10, %struct.tegra_dc** %5, align 8
  %11 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %12 = icmp ne %struct.tegra_dc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %211

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.TYPE_3__* @of_device_get_match_data(i32* %18)
  %20 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %20, i32 0, i32 5
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %21, align 8
  %22 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %23 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %22, i32 0, i32 9
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %28 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %27, i32 0, i32 8
  store i32* %26, i32** %28, align 8
  %29 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %30 = call i32 @tegra_dc_parse_dt(%struct.tegra_dc* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %211

35:                                               ; preds = %16
  %36 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %37 = call i32 @tegra_dc_couple(%struct.tegra_dc* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %211

42:                                               ; preds = %35
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @devm_clk_get(i32* %44, i32* null)
  %46 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %47 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %49 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %58 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %211

61:                                               ; preds = %42
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @devm_reset_control_get(i32* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %66 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %68 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %77 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %211

80:                                               ; preds = %61
  %81 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %82 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @clk_prepare_enable(i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %211

89:                                               ; preds = %80
  %90 = call i32 @usleep_range(i32 2000, i32 4000)
  %91 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %92 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @reset_control_assert(i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %211

99:                                               ; preds = %89
  %100 = call i32 @usleep_range(i32 2000, i32 4000)
  %101 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %102 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @clk_disable_unprepare(i32 %103)
  %105 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %106 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %105, i32 0, i32 5
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %99
  %112 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %113 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @TEGRA_POWERGATE_DIS, align 4
  %118 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %119 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  br label %124

120:                                              ; preds = %111
  %121 = load i32, i32* @TEGRA_POWERGATE_DISB, align 4
  %122 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %123 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %116
  %125 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %126 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @tegra_powergate_power_off(i32 %127)
  br label %129

129:                                              ; preds = %124, %99
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = load i32, i32* @IORESOURCE_MEM, align 4
  %132 = call %struct.resource* @platform_get_resource(%struct.platform_device* %130, i32 %131, i32 0)
  store %struct.resource* %132, %struct.resource** %4, align 8
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load %struct.resource*, %struct.resource** %4, align 8
  %136 = call i32 @devm_ioremap_resource(i32* %134, %struct.resource* %135)
  %137 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %138 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 8
  %139 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %140 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @IS_ERR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %129
  %145 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %146 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @PTR_ERR(i32 %147)
  store i32 %148, i32* %2, align 4
  br label %211

149:                                              ; preds = %129
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = call i64 @platform_get_irq(%struct.platform_device* %150, i32 0)
  %152 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %153 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %155 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %149
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = call i32 (i32*, i8*, ...) @dev_err(i32* %160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %162 = load i32, i32* @ENXIO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %211

164:                                              ; preds = %149
  %165 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %166 = call i32 @tegra_dc_rgb_probe(%struct.tegra_dc* %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @ENODEV, align 4
  %172 = sub nsw i32 0, %171
  %173 = icmp ne i32 %170, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load i32, i32* %6, align 4
  %178 = call i32 (i32*, i8*, ...) @dev_err(i32* %176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %2, align 4
  br label %211

180:                                              ; preds = %169, %164
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %183 = call i32 @platform_set_drvdata(%struct.platform_device* %181, %struct.tegra_dc* %182)
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = call i32 @pm_runtime_enable(i32* %185)
  %187 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %188 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  %190 = call i32 @INIT_LIST_HEAD(i32* %189)
  %191 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %192 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  store i32* @dc_client_ops, i32** %193, align 8
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 0
  %196 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %197 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  store i32* %195, i32** %198, align 8
  %199 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %200 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %199, i32 0, i32 2
  %201 = call i32 @host1x_client_register(%struct.TYPE_4__* %200)
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %180
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = load i32, i32* %6, align 4
  %208 = call i32 (i32*, i8*, ...) @dev_err(i32* %206, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* %6, align 4
  store i32 %209, i32* %2, align 4
  br label %211

210:                                              ; preds = %180
  store i32 0, i32* %2, align 4
  br label %211

211:                                              ; preds = %210, %204, %174, %158, %144, %97, %87, %72, %53, %40, %33, %13
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.tegra_dc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @of_device_get_match_data(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tegra_dc_parse_dt(%struct.tegra_dc*) #1

declare dso_local i32 @tegra_dc_couple(%struct.tegra_dc*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_reset_control_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @tegra_powergate_power_off(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @tegra_dc_rgb_probe(%struct.tegra_dc*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_dc*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @host1x_client_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
