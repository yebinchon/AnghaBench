; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_dpi = type { i32, i32, %struct.TYPE_2__*, i8*, i8*, i8*, i8*, %struct.mtk_dpi_conf*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_dpi_conf = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to ioremap mem resource: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to get engine clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to get pixel clock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to get tvdpll clock: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Failed to get irq: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Found bridge node: %pOF\0A\00", align 1
@MTK_DPI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to identify by alias: %d\0A\00", align 1
@mtk_dpi_funcs = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"Failed to initialize component: %d\0A\00", align 1
@mtk_dpi_component_ops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Failed to add component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_dpi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dpi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_dpi*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mtk_dpi* @devm_kzalloc(%struct.device* %11, i32 64, i32 %12)
  store %struct.mtk_dpi* %13, %struct.mtk_dpi** %5, align 8
  %14 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %15 = icmp ne %struct.mtk_dpi* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %185

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %21, i32 0, i32 8
  store %struct.device* %20, %struct.device** %22, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i64 @of_device_get_match_data(%struct.device* %23)
  %25 = inttoptr i64 %24 to %struct.mtk_dpi_conf*
  %26 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %27 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %26, i32 0, i32 7
  store %struct.mtk_dpi_conf* %25, %struct.mtk_dpi_conf** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 0)
  store %struct.resource* %30, %struct.resource** %6, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = call i8* @devm_ioremap_resource(%struct.device* %31, %struct.resource* %32)
  %34 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %35 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %37 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %36, i32 0, i32 6
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @IS_ERR(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %19
  %42 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %43 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %42, i32 0, i32 6
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @PTR_ERR(i8* %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %185

50:                                               ; preds = %19
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i8* @devm_clk_get(%struct.device* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %54 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %56 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %55, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @IS_ERR(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %62 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %61, i32 0, i32 5
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %185

69:                                               ; preds = %50
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i8* @devm_clk_get(%struct.device* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %73 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %75 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @IS_ERR(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %69
  %80 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %81 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @PTR_ERR(i8* %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %185

88:                                               ; preds = %69
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i8* @devm_clk_get(%struct.device* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %92 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %94 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @IS_ERR(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %88
  %99 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %100 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %8, align 4
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @dev_err(%struct.device* %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %2, align 4
  br label %185

107:                                              ; preds = %88
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = call i32 @platform_get_irq(%struct.platform_device* %108, i32 0)
  %110 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %111 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %113 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %107
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %119 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dev_err(%struct.device* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %185

124:                                              ; preds = %107
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = getelementptr inbounds %struct.device, %struct.device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %129 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %128, i32 0, i32 2
  %130 = call i32 @drm_of_find_panel_or_bridge(i32 %127, i32 0, i32 0, i32* null, %struct.TYPE_2__** %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %185

135:                                              ; preds = %124
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %138 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dev_info(%struct.device* %136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %141)
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = getelementptr inbounds %struct.device, %struct.device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @MTK_DPI, align 4
  %147 = call i32 @mtk_ddp_comp_get_id(i32 %145, i32 %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %135
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @dev_err(%struct.device* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %2, align 4
  br label %185

155:                                              ; preds = %135
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = getelementptr inbounds %struct.device, %struct.device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %161 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %160, i32 0, i32 1
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @mtk_ddp_comp_init(%struct.device* %156, i32 %159, i32* %161, i32 %162, i32* @mtk_dpi_funcs)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %155
  %167 = load %struct.device*, %struct.device** %4, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @dev_err(%struct.device* %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %2, align 4
  br label %185

171:                                              ; preds = %155
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %174 = call i32 @platform_set_drvdata(%struct.platform_device* %172, %struct.mtk_dpi* %173)
  %175 = load %struct.device*, %struct.device** %4, align 8
  %176 = call i32 @component_add(%struct.device* %175, i32* @mtk_dpi_component_ops)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %171
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @dev_err(%struct.device* %180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %8, align 4
  store i32 %183, i32* %2, align 4
  br label %185

184:                                              ; preds = %171
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %184, %179, %166, %150, %133, %116, %98, %79, %60, %41, %16
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.mtk_dpi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, i32*, %struct.TYPE_2__**) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @mtk_ddp_comp_get_id(i32, i32) #1

declare dso_local i32 @mtk_ddp_comp_init(%struct.device*, i32, i32*, i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_dpi*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
