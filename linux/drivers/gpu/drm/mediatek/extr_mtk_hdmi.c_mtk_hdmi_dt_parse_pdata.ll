; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_dt_parse_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_dt_parse_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32, i32, %struct.regmap*, %struct.regmap*, i32, %struct.device*, i32 }
%struct.regmap = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to get clocks: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"mediatek,mt8173-cec\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to find CEC node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Waiting for CEC device %pOF\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"mediatek,syscon-hdmi\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Failed to get system configuration registers: %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"hdmi-connector\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Waiting for external bridge\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Failed to find ddc-i2c-bus node in %pOF\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Failed to get ddc i2c adapter by node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi*, %struct.platform_device*)* @mtk_hdmi_dt_parse_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_dt_parse_pdata(%struct.mtk_hdmi* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_hdmi*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.platform_device*, align 8
  %12 = alloca %struct.regmap*, align 8
  %13 = alloca %struct.resource*, align 8
  %14 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %7, align 8
  %20 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %21 = load %struct.device_node*, %struct.device_node** %7, align 8
  %22 = call i32 @mtk_hdmi_get_all_clk(%struct.mtk_hdmi* %20, %struct.device_node* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %3, align 4
  br label %169

30:                                               ; preds = %2
  %31 = load %struct.device_node*, %struct.device_node** %7, align 8
  %32 = getelementptr inbounds %struct.device_node, %struct.device_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.device_node* @of_get_compatible_child(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %34, %struct.device_node** %8, align 8
  %35 = load %struct.device_node*, %struct.device_node** %8, align 8
  %36 = icmp ne %struct.device_node* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %169

42:                                               ; preds = %30
  %43 = load %struct.device_node*, %struct.device_node** %8, align 8
  %44 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %43)
  store %struct.platform_device* %44, %struct.platform_device** %11, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %46 = icmp ne %struct.platform_device* %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %42
  %48 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %49 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to %struct.device*
  %53 = load %struct.device_node*, %struct.device_node** %8, align 8
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %53)
  %55 = load %struct.device_node*, %struct.device_node** %8, align 8
  %56 = call i32 @of_node_put(%struct.device_node* %55)
  %57 = load i32, i32* @EPROBE_DEFER, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %169

59:                                               ; preds = %42
  %60 = load %struct.device_node*, %struct.device_node** %8, align 8
  %61 = call i32 @of_node_put(%struct.device_node* %60)
  %62 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %65 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %64, i32 0, i32 5
  store %struct.device* %63, %struct.device** %65, align 8
  %66 = load %struct.device_node*, %struct.device_node** %7, align 8
  %67 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store %struct.regmap* %67, %struct.regmap** %12, align 8
  %68 = load %struct.device_node*, %struct.device_node** %7, align 8
  %69 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %70 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %69, i32 0, i32 4
  %71 = call i32 @of_property_read_u32_index(%struct.device_node* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 1, i32* %70)
  store i32 %71, i32* %14, align 4
  %72 = load %struct.regmap*, %struct.regmap** %12, align 8
  %73 = call i64 @IS_ERR(%struct.regmap* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %59
  %76 = load %struct.regmap*, %struct.regmap** %12, align 8
  %77 = call i32 @PTR_ERR(%struct.regmap* %76)
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %75, %59
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %3, align 4
  br label %169

86:                                               ; preds = %78
  %87 = load %struct.regmap*, %struct.regmap** %12, align 8
  %88 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %89 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %88, i32 0, i32 3
  store %struct.regmap* %87, %struct.regmap** %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %91 = load i32, i32* @IORESOURCE_MEM, align 4
  %92 = call %struct.resource* @platform_get_resource(%struct.platform_device* %90, i32 %91, i32 0)
  store %struct.resource* %92, %struct.resource** %13, align 8
  %93 = load %struct.device*, %struct.device** %6, align 8
  %94 = load %struct.resource*, %struct.resource** %13, align 8
  %95 = call %struct.regmap* @devm_ioremap_resource(%struct.device* %93, %struct.resource* %94)
  %96 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %97 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %96, i32 0, i32 2
  store %struct.regmap* %95, %struct.regmap** %97, align 8
  %98 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %99 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %98, i32 0, i32 2
  %100 = load %struct.regmap*, %struct.regmap** %99, align 8
  %101 = call i64 @IS_ERR(%struct.regmap* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %86
  %104 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %105 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %104, i32 0, i32 2
  %106 = load %struct.regmap*, %struct.regmap** %105, align 8
  %107 = call i32 @PTR_ERR(%struct.regmap* %106)
  store i32 %107, i32* %3, align 4
  br label %169

108:                                              ; preds = %86
  %109 = load %struct.device_node*, %struct.device_node** %7, align 8
  %110 = call %struct.device_node* @of_graph_get_remote_node(%struct.device_node* %109, i32 1, i32 0)
  store %struct.device_node* %110, %struct.device_node** %9, align 8
  %111 = load %struct.device_node*, %struct.device_node** %9, align 8
  %112 = icmp ne %struct.device_node* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %169

116:                                              ; preds = %108
  %117 = load %struct.device_node*, %struct.device_node** %9, align 8
  %118 = call i32 @of_device_is_compatible(%struct.device_node* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %137, label %120

120:                                              ; preds = %116
  %121 = load %struct.device_node*, %struct.device_node** %9, align 8
  %122 = call i32 @of_drm_find_bridge(%struct.device_node* %121)
  %123 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %124 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %126 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %120
  %130 = load %struct.device*, %struct.device** %6, align 8
  %131 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %132 = load %struct.device_node*, %struct.device_node** %9, align 8
  %133 = call i32 @of_node_put(%struct.device_node* %132)
  %134 = load i32, i32* @EPROBE_DEFER, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %169

136:                                              ; preds = %120
  br label %137

137:                                              ; preds = %136, %116
  %138 = load %struct.device_node*, %struct.device_node** %9, align 8
  %139 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 0)
  store %struct.device_node* %139, %struct.device_node** %10, align 8
  %140 = load %struct.device_node*, %struct.device_node** %10, align 8
  %141 = icmp ne %struct.device_node* %140, null
  br i1 %141, label %150, label %142

142:                                              ; preds = %137
  %143 = load %struct.device*, %struct.device** %6, align 8
  %144 = load %struct.device_node*, %struct.device_node** %9, align 8
  %145 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %143, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), %struct.device_node* %144)
  %146 = load %struct.device_node*, %struct.device_node** %9, align 8
  %147 = call i32 @of_node_put(%struct.device_node* %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %169

150:                                              ; preds = %137
  %151 = load %struct.device_node*, %struct.device_node** %9, align 8
  %152 = call i32 @of_node_put(%struct.device_node* %151)
  %153 = load %struct.device_node*, %struct.device_node** %10, align 8
  %154 = call i32 @of_find_i2c_adapter_by_node(%struct.device_node* %153)
  %155 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %156 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.device_node*, %struct.device_node** %10, align 8
  %158 = call i32 @of_node_put(%struct.device_node* %157)
  %159 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %160 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %150
  %164 = load %struct.device*, %struct.device** %6, align 8
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %164, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %169

168:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %163, %142, %129, %113, %103, %81, %47, %37, %25
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @mtk_hdmi_get_all_clk(%struct.mtk_hdmi*, %struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.device_node* @of_get_compatible_child(i32, i8*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.regmap* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_node(%struct.device_node*, i32, i32) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_drm_find_bridge(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_find_i2c_adapter_by_node(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
