; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_exynos5433_decon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_exynos5433_decon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.decon_context = type { i64, i32, i32, i32, i32, %struct.clk*, %struct.clk*, %struct.clk**, %struct.device*, i32 }
%struct.clk = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFTYPE_HDMI = common dso_local global i32 0, align 4
@decon_clks_name = common dso_local global i32* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vsync\00", align 1
@decon_irq_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"lcd_sys\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"te\00", align 1
@decon_te_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@I80_HW_TRG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"samsung,disp-sysreg\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to get system register\0A\00", align 1
@decon_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos5433_decon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5433_decon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.decon_context*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.decon_context* @devm_kzalloc(%struct.device* %12, i32 64, i32 %13)
  store %struct.decon_context* %14, %struct.decon_context** %5, align 8
  %15 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %16 = icmp ne %struct.decon_context* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %184

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %23 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %22, i32 0, i32 8
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i64 @of_device_get_match_data(%struct.device* %24)
  %26 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %27 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %29 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %28, i32 0, i32 9
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %32 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @IFTYPE_HDMI, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %33, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %40 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %20
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %71, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** @decon_clks_name, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %49 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %48, i32 0, i32 8
  %50 = load %struct.device*, %struct.device** %49, align 8
  %51 = load i32*, i32** @decon_clks_name, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.clk* @devm_clk_get(%struct.device* %50, i32 %55)
  store %struct.clk* %56, %struct.clk** %9, align 8
  %57 = load %struct.clk*, %struct.clk** %9, align 8
  %58 = call i64 @IS_ERR(%struct.clk* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load %struct.clk*, %struct.clk** %9, align 8
  %62 = call i32 @PTR_ERR(%struct.clk* %61)
  store i32 %62, i32* %2, align 4
  br label %184

63:                                               ; preds = %47
  %64 = load %struct.clk*, %struct.clk** %9, align 8
  %65 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %66 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %65, i32 0, i32 7
  %67 = load %struct.clk**, %struct.clk*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.clk*, %struct.clk** %67, i64 %69
  store %struct.clk* %64, %struct.clk** %70, align 8
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %42

74:                                               ; preds = %42
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load i32, i32* @IORESOURCE_MEM, align 4
  %77 = call %struct.resource* @platform_get_resource(%struct.platform_device* %75, i32 %76, i32 0)
  store %struct.resource* %77, %struct.resource** %6, align 8
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.resource*, %struct.resource** %6, align 8
  %80 = call %struct.clk* @devm_ioremap_resource(%struct.device* %78, %struct.resource* %79)
  %81 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %82 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %81, i32 0, i32 6
  store %struct.clk* %80, %struct.clk** %82, align 8
  %83 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %84 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %83, i32 0, i32 6
  %85 = load %struct.clk*, %struct.clk** %84, align 8
  %86 = call i64 @IS_ERR(%struct.clk* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %74
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %92 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %91, i32 0, i32 6
  %93 = load %struct.clk*, %struct.clk** %92, align 8
  %94 = call i32 @PTR_ERR(%struct.clk* %93)
  store i32 %94, i32* %2, align 4
  br label %184

95:                                               ; preds = %74
  %96 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %97 = load i32, i32* @decon_irq_handler, align 4
  %98 = call i32 @decon_conf_irq(%struct.decon_context* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 0)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %184

103:                                              ; preds = %95
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %106 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %108 = load i32, i32* @decon_irq_handler, align 4
  %109 = call i32 @decon_conf_irq(%struct.decon_context* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 0)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %184

114:                                              ; preds = %103
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %117 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %119 = load i32, i32* @decon_te_irq_handler, align 4
  %120 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %121 = call i32 @decon_conf_irq(%struct.decon_context* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %119, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %184

126:                                              ; preds = %114
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %132 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @I80_HW_TRG, align 4
  %134 = xor i32 %133, -1
  %135 = sext i32 %134 to i64
  %136 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %137 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = and i64 %138, %135
  store i64 %139, i64* %137, align 8
  br label %140

140:                                              ; preds = %129, %126
  %141 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %142 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @I80_HW_TRG, align 4
  %145 = sext i32 %144 to i64
  %146 = and i64 %143, %145
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %140
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = getelementptr inbounds %struct.device, %struct.device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call %struct.clk* @syscon_regmap_lookup_by_phandle(i32 %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %153 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %154 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %153, i32 0, i32 5
  store %struct.clk* %152, %struct.clk** %154, align 8
  %155 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %156 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %155, i32 0, i32 5
  %157 = load %struct.clk*, %struct.clk** %156, align 8
  %158 = call i64 @IS_ERR(%struct.clk* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %148
  %161 = load %struct.device*, %struct.device** %4, align 8
  %162 = call i32 @dev_err(%struct.device* %161, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %163 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %164 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %163, i32 0, i32 5
  %165 = load %struct.clk*, %struct.clk** %164, align 8
  %166 = call i32 @PTR_ERR(%struct.clk* %165)
  store i32 %166, i32* %2, align 4
  br label %184

167:                                              ; preds = %148
  br label %168

168:                                              ; preds = %167, %140
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %171 = call i32 @platform_set_drvdata(%struct.platform_device* %169, %struct.decon_context* %170)
  %172 = load %struct.device*, %struct.device** %4, align 8
  %173 = call i32 @pm_runtime_enable(%struct.device* %172)
  %174 = load %struct.device*, %struct.device** %4, align 8
  %175 = call i32 @component_add(%struct.device* %174, i32* @decon_component_ops)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %168
  br label %180

179:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %184

180:                                              ; preds = %178
  %181 = load %struct.device*, %struct.device** %4, align 8
  %182 = call i32 @pm_runtime_disable(%struct.device* %181)
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %180, %179, %160, %124, %112, %101, %88, %60, %17
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.decon_context* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @decon_conf_irq(%struct.decon_context*, i8*, i32, i32) #1

declare dso_local %struct.clk* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.decon_context*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
