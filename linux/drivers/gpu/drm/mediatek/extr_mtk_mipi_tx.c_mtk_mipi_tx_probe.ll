; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mipi_tx.c_mtk_mipi_tx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mipi_tx.c_mtk_mipi_tx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_mipi_tx = type { %struct.phy_provider*, %struct.device*, %struct.TYPE_2__, %struct.phy_provider*, i32 }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i8**, i32, i32, i32* }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }
%struct.clk = type opaque
%struct.phy = type opaque

@CLK_SET_RATE_GATE = common dso_local global i32 0, align 4
@mtk_mipi_tx_pll_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to get memory resource: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to get reference clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to read clock-output-names: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to register PLL: %d\0A\00", align 1
@mtk_mipi_tx_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to create MIPI D-PHY: %d\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_mipi_tx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mipi_tx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_mipi_tx*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  %10 = alloca %struct.phy*, align 8
  %11 = alloca %struct.phy_provider*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i8** %8, i8*** %16, align 8
  %17 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  %19 = load i32, i32* @CLK_SET_RATE_GATE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* @mtk_mipi_tx_pll_ops, i32** %20, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mtk_mipi_tx* @devm_kzalloc(%struct.device* %21, i32 40, i32 %22)
  store %struct.mtk_mipi_tx* %23, %struct.mtk_mipi_tx** %5, align 8
  %24 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %25 = icmp ne %struct.mtk_mipi_tx* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %155

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @of_device_get_match_data(%struct.device* %30)
  %32 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %33 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %6, align 8
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = call %struct.phy_provider* @devm_ioremap_resource(%struct.device* %37, %struct.resource* %38)
  %40 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %41 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %40, i32 0, i32 3
  store %struct.phy_provider* %39, %struct.phy_provider** %41, align 8
  %42 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %43 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %42, i32 0, i32 3
  %44 = load %struct.phy_provider*, %struct.phy_provider** %43, align 8
  %45 = call i64 @IS_ERR(%struct.phy_provider* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %29
  %48 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %49 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %48, i32 0, i32 3
  %50 = load %struct.phy_provider*, %struct.phy_provider** %49, align 8
  %51 = call i32 @PTR_ERR(%struct.phy_provider* %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %2, align 4
  br label %155

56:                                               ; preds = %29
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call %struct.phy_provider* @devm_clk_get(%struct.device* %57, i32* null)
  %59 = bitcast %struct.phy_provider* %58 to %struct.clk*
  store %struct.clk* %59, %struct.clk** %7, align 8
  %60 = load %struct.clk*, %struct.clk** %7, align 8
  %61 = bitcast %struct.clk* %60 to %struct.phy_provider*
  %62 = call i64 @IS_ERR(%struct.phy_provider* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.clk*, %struct.clk** %7, align 8
  %66 = bitcast %struct.clk* %65 to %struct.phy_provider*
  %67 = call i32 @PTR_ERR(%struct.phy_provider* %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %2, align 4
  br label %155

72:                                               ; preds = %56
  %73 = load %struct.clk*, %struct.clk** %7, align 8
  %74 = bitcast %struct.clk* %73 to %struct.phy_provider*
  %75 = call i8* @__clk_get_name(%struct.phy_provider* %74)
  store i8* %75, i8** %8, align 8
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = getelementptr inbounds %struct.device, %struct.device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  %80 = call i32 @of_property_read_string(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %72
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %2, align 4
  br label %155

88:                                               ; preds = %72
  %89 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %90 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %91, align 8
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %94 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %93, i32 0, i32 2
  %95 = call %struct.phy_provider* @devm_clk_register(%struct.device* %92, %struct.TYPE_2__* %94)
  %96 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %97 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %96, i32 0, i32 0
  store %struct.phy_provider* %95, %struct.phy_provider** %97, align 8
  %98 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %99 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %98, i32 0, i32 0
  %100 = load %struct.phy_provider*, %struct.phy_provider** %99, align 8
  %101 = call i64 @IS_ERR(%struct.phy_provider* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %88
  %104 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %105 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %104, i32 0, i32 0
  %106 = load %struct.phy_provider*, %struct.phy_provider** %105, align 8
  %107 = call i32 @PTR_ERR(%struct.phy_provider* %106)
  store i32 %107, i32* %12, align 4
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %2, align 4
  br label %155

112:                                              ; preds = %88
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = call %struct.phy_provider* @devm_phy_create(%struct.device* %113, i32* null, i32* @mtk_mipi_tx_ops)
  %115 = bitcast %struct.phy_provider* %114 to %struct.phy*
  store %struct.phy* %115, %struct.phy** %10, align 8
  %116 = load %struct.phy*, %struct.phy** %10, align 8
  %117 = bitcast %struct.phy* %116 to %struct.phy_provider*
  %118 = call i64 @IS_ERR(%struct.phy_provider* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = load %struct.phy*, %struct.phy** %10, align 8
  %122 = bitcast %struct.phy* %121 to %struct.phy_provider*
  %123 = call i32 @PTR_ERR(%struct.phy_provider* %122)
  store i32 %123, i32* %12, align 4
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %2, align 4
  br label %155

128:                                              ; preds = %112
  %129 = load %struct.phy*, %struct.phy** %10, align 8
  %130 = bitcast %struct.phy* %129 to %struct.phy_provider*
  %131 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %132 = call i32 @phy_set_drvdata(%struct.phy_provider* %130, %struct.mtk_mipi_tx* %131)
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load i32, i32* @of_phy_simple_xlate, align 4
  %135 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %133, i32 %134)
  store %struct.phy_provider* %135, %struct.phy_provider** %11, align 8
  %136 = load %struct.phy_provider*, %struct.phy_provider** %11, align 8
  %137 = call i64 @IS_ERR(%struct.phy_provider* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %128
  %140 = load %struct.phy_provider*, %struct.phy_provider** %11, align 8
  %141 = call i32 @PTR_ERR(%struct.phy_provider* %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %2, align 4
  br label %155

143:                                              ; preds = %128
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %146 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %145, i32 0, i32 1
  store %struct.device* %144, %struct.device** %146, align 8
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = getelementptr inbounds %struct.device, %struct.device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @of_clk_src_simple_get, align 4
  %151 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %5, align 8
  %152 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %151, i32 0, i32 0
  %153 = load %struct.phy_provider*, %struct.phy_provider** %152, align 8
  %154 = call i32 @of_clk_add_provider(i32 %149, i32 %150, %struct.phy_provider* %153)
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %143, %139, %120, %103, %83, %64, %47, %26
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.mtk_mipi_tx* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy_provider* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.phy_provider* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i8* @__clk_get_name(%struct.phy_provider*) #1

declare dso_local i32 @of_property_read_string(i32, i8*, i32*) #1

declare dso_local %struct.phy_provider* @devm_clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.mtk_mipi_tx*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @of_clk_add_provider(i32, i32, %struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
