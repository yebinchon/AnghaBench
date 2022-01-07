; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.soc_device_attribute = type { i32 }
%struct.component_match = type { i32 }
%struct.resource = type { i32 }
%struct.dss_device = type { i64, i64, %struct.TYPE_14__, i32, i32, %struct.platform_device* }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_16__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to set the DMA mask\0A\00", align 1
@dss_soc_devices = common dso_local global i32 0, align 4
@dss_of_match = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@dss_debug_dump_clocks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"dss\00", align 1
@dss_dump_regs = common dso_local global i32 0, align 4
@dss_add_child_component = common dso_local global i32 0, align 4
@dss_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dss_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.soc_device_attribute*, align 8
  %5 = alloca %struct.component_match*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.dss_device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.component_match* null, %struct.component_match** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.dss_device* @kzalloc(i32 48, i32 %9)
  store %struct.dss_device* %10, %struct.dss_device** %7, align 8
  %11 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %12 = icmp ne %struct.dss_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %204

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %19 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %18, i32 0, i32 5
  store %struct.platform_device* %17, %struct.platform_device** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.dss_device* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @DMA_BIT_MASK(i32 32)
  %26 = call i32 @dma_set_coherent_mask(%struct.TYPE_15__* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(%struct.TYPE_15__* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %200

33:                                               ; preds = %16
  %34 = load i32, i32* @dss_soc_devices, align 4
  %35 = call %struct.soc_device_attribute* @soc_device_match(i32 %34)
  store %struct.soc_device_attribute* %35, %struct.soc_device_attribute** %4, align 8
  %36 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %37 = icmp ne %struct.soc_device_attribute* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %40 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %43 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  br label %53

44:                                               ; preds = %33
  %45 = load i32, i32* @dss_of_match, align 4
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call %struct.TYPE_16__* @of_match_device(i32 %45, %struct.TYPE_15__* %47)
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %52 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %44, %38
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load i32, i32* @IORESOURCE_MEM, align 4
  %56 = call %struct.resource* @platform_get_resource(%struct.platform_device* %54, i32 %55, i32 0)
  store %struct.resource* %56, %struct.resource** %6, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = call i32 @devm_ioremap_resource(%struct.TYPE_15__* %58, %struct.resource* %59)
  %61 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %62 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %64 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %53
  %69 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %70 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %8, align 4
  br label %200

73:                                               ; preds = %53
  %74 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %75 = call i32 @dss_get_clocks(%struct.dss_device* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %200

79:                                               ; preds = %73
  %80 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %81 = call i32 @dss_setup_default_clock(%struct.dss_device* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %197

85:                                               ; preds = %79
  %86 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %87 = call i32 @dss_video_pll_probe(%struct.dss_device* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %197

91:                                               ; preds = %85
  %92 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %93 = call i32 @dss_init_ports(%struct.dss_device* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %176

97:                                               ; preds = %91
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @pm_runtime_enable(%struct.TYPE_15__* %99)
  %101 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %102 = call i32 @dss_probe_hardware(%struct.dss_device* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %170

106:                                              ; preds = %97
  %107 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %108 = call i32 @dss_initialize_debugfs(%struct.dss_device* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %170

112:                                              ; preds = %106
  %113 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %114 = load i32, i32* @dss_debug_dump_clocks, align 4
  %115 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %116 = call i8* @dss_debugfs_create_file(%struct.dss_device* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %114, %struct.dss_device* %115)
  %117 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %118 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  store i8* %116, i8** %119, align 8
  %120 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %121 = load i32, i32* @dss_dump_regs, align 4
  %122 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %123 = call i8* @dss_debugfs_create_file(%struct.dss_device* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %121, %struct.dss_device* %122)
  %124 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %125 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @of_platform_populate(i32 %130, i32* null, i32* null, %struct.TYPE_15__* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %112
  br label %157

137:                                              ; preds = %112
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 @omapdss_gather_components(%struct.TYPE_15__* %139)
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load i32, i32* @dss_add_child_component, align 4
  %144 = call i32 @device_for_each_child(%struct.TYPE_15__* %142, %struct.component_match** %5, i32 %143)
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load %struct.component_match*, %struct.component_match** %5, align 8
  %148 = call i32 @component_master_add_with_match(%struct.TYPE_15__* %146, i32* @dss_component_ops, %struct.component_match* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %137
  br label %153

152:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %204

153:                                              ; preds = %151
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @of_platform_depopulate(%struct.TYPE_15__* %155)
  br label %157

157:                                              ; preds = %153, %136
  %158 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %159 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @dss_debugfs_remove_file(i8* %161)
  %163 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %164 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @dss_debugfs_remove_file(i8* %166)
  %168 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %169 = call i32 @dss_uninitialize_debugfs(%struct.dss_device* %168)
  br label %170

170:                                              ; preds = %157, %111, %105
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = call i32 @pm_runtime_disable(%struct.TYPE_15__* %172)
  %174 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %175 = call i32 @dss_uninit_ports(%struct.dss_device* %174)
  br label %176

176:                                              ; preds = %170, %96
  %177 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %178 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %183 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @dss_video_pll_uninit(i64 %184)
  br label %186

186:                                              ; preds = %181, %176
  %187 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %188 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %193 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @dss_video_pll_uninit(i64 %194)
  br label %196

196:                                              ; preds = %191, %186
  br label %197

197:                                              ; preds = %196, %90, %84
  %198 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %199 = call i32 @dss_put_clocks(%struct.dss_device* %198)
  br label %200

200:                                              ; preds = %197, %78, %68, %29
  %201 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %202 = call i32 @kfree(%struct.dss_device* %201)
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %200, %152, %13
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.dss_device* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dss_device*) #1

declare dso_local i32 @dma_set_coherent_mask(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.soc_device_attribute* @soc_device_match(i32) #1

declare dso_local %struct.TYPE_16__* @of_match_device(i32, %struct.TYPE_15__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_15__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dss_get_clocks(%struct.dss_device*) #1

declare dso_local i32 @dss_setup_default_clock(%struct.dss_device*) #1

declare dso_local i32 @dss_video_pll_probe(%struct.dss_device*) #1

declare dso_local i32 @dss_init_ports(%struct.dss_device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_15__*) #1

declare dso_local i32 @dss_probe_hardware(%struct.dss_device*) #1

declare dso_local i32 @dss_initialize_debugfs(%struct.dss_device*) #1

declare dso_local i8* @dss_debugfs_create_file(%struct.dss_device*, i8*, i32, %struct.dss_device*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @omapdss_gather_components(%struct.TYPE_15__*) #1

declare dso_local i32 @device_for_each_child(%struct.TYPE_15__*, %struct.component_match**, i32) #1

declare dso_local i32 @component_master_add_with_match(%struct.TYPE_15__*, i32*, %struct.component_match*) #1

declare dso_local i32 @of_platform_depopulate(%struct.TYPE_15__*) #1

declare dso_local i32 @dss_debugfs_remove_file(i8*) #1

declare dso_local i32 @dss_uninitialize_debugfs(%struct.dss_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_15__*) #1

declare dso_local i32 @dss_uninit_ports(%struct.dss_device*) #1

declare dso_local i32 @dss_video_pll_uninit(i64) #1

declare dso_local i32 @dss_put_clocks(%struct.dss_device*) #1

declare dso_local i32 @kfree(%struct.dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
