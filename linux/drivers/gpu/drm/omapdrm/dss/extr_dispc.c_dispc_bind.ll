; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.soc_device_attribute = type { i32 }
%struct.dss_device = type { i32*, %struct.dispc_device* }
%struct.dispc_device = type { i64, i32, i32, i32, %struct.platform_device*, i32, i32, i32, %struct.dss_device* }
%struct.resource = type { i32 }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dispc_soc_devices = common dso_local global i32 0, align 4
@dispc_of_match = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"platform_get_irq failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"syscon-pol\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to get syscon-pol regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to get syscon-pol offset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DISPC_REVISION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"OMAP DISPC rev %d.%d\0A\00", align 1
@dispc_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"dispc\00", align 1
@dispc_dump_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @dispc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.soc_device_attribute*, align 8
  %10 = alloca %struct.dss_device*, align 8
  %11 = alloca %struct.dispc_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.resource*, align 8
  %15 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.platform_device* @to_platform_device(%struct.device* %16)
  store %struct.platform_device* %17, %struct.platform_device** %8, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.dss_device* @dss_get_device(%struct.device* %18)
  store %struct.dss_device* %19, %struct.dss_device** %10, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  store %struct.device_node* %23, %struct.device_node** %15, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.dispc_device* @kzalloc(i32 56, i32 %24)
  store %struct.dispc_device* %25, %struct.dispc_device** %11, align 8
  %26 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %27 = icmp ne %struct.dispc_device* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %193

31:                                               ; preds = %3
  %32 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %33 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %34 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %33, i32 0, i32 4
  store %struct.platform_device* %32, %struct.platform_device** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %36 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %37 = call i32 @platform_set_drvdata(%struct.platform_device* %35, %struct.dispc_device* %36)
  %38 = load %struct.dss_device*, %struct.dss_device** %10, align 8
  %39 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %40 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %39, i32 0, i32 8
  store %struct.dss_device* %38, %struct.dss_device** %40, align 8
  %41 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %42 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %41, i32 0, i32 7
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load i32, i32* @dispc_soc_devices, align 4
  %45 = call %struct.soc_device_attribute* @soc_device_match(i32 %44)
  store %struct.soc_device_attribute* %45, %struct.soc_device_attribute** %9, align 8
  %46 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %9, align 8
  %47 = icmp ne %struct.soc_device_attribute* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %31
  %49 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %9, align 8
  %50 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %53 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  br label %63

54:                                               ; preds = %31
  %55 = load i32, i32* @dispc_of_match, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call %struct.TYPE_9__* @of_match_device(i32 %55, %struct.TYPE_8__* %57)
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %62 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %48
  %64 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %65 = call i32 @dispc_errata_i734_wa_init(%struct.dispc_device* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %189

69:                                               ; preds = %63
  %70 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %71 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %70, i32 0, i32 4
  %72 = load %struct.platform_device*, %struct.platform_device** %71, align 8
  %73 = load i32, i32* @IORESOURCE_MEM, align 4
  %74 = call %struct.resource* @platform_get_resource(%struct.platform_device* %72, i32 %73, i32 0)
  store %struct.resource* %74, %struct.resource** %14, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.resource*, %struct.resource** %14, align 8
  %78 = call i32 @devm_ioremap_resource(%struct.TYPE_8__* %76, %struct.resource* %77)
  %79 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %80 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %82 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %69
  %87 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %88 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @PTR_ERR(i32 %89)
  store i32 %90, i32* %13, align 4
  br label %189

91:                                               ; preds = %69
  %92 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %93 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %92, i32 0, i32 4
  %94 = load %struct.platform_device*, %struct.platform_device** %93, align 8
  %95 = call i64 @platform_get_irq(%struct.platform_device* %94, i32 0)
  %96 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %97 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %99 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %91
  %103 = call i32 @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %13, align 4
  br label %189

106:                                              ; preds = %91
  %107 = load %struct.device_node*, %struct.device_node** %15, align 8
  %108 = icmp ne %struct.device_node* %107, null
  br i1 %108, label %109, label %144

109:                                              ; preds = %106
  %110 = load %struct.device_node*, %struct.device_node** %15, align 8
  %111 = call i64 @of_property_read_bool(%struct.device_node* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %144

113:                                              ; preds = %109
  %114 = load %struct.device_node*, %struct.device_node** %15, align 8
  %115 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %117 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %119 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @IS_ERR(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %113
  %124 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @dev_err(%struct.TYPE_8__* %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %127 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %128 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @PTR_ERR(i32 %129)
  store i32 %130, i32* %13, align 4
  br label %189

131:                                              ; preds = %113
  %132 = load %struct.device_node*, %struct.device_node** %15, align 8
  %133 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %134 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %133, i32 0, i32 2
  %135 = call i64 @of_property_read_u32_index(%struct.device_node* %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 @dev_err(%struct.TYPE_8__* %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %13, align 4
  br label %189

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %109, %106
  %145 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %146 = call i32 @dispc_init_gamma_tables(%struct.dispc_device* %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %189

150:                                              ; preds = %144
  %151 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = call i32 @pm_runtime_enable(%struct.TYPE_8__* %152)
  %154 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %155 = call i32 @dispc_runtime_get(%struct.dispc_device* %154)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  br label %185

159:                                              ; preds = %150
  %160 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %161 = call i32 @_omap_dispc_initial_config(%struct.dispc_device* %160)
  %162 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %163 = load i32, i32* @DISPC_REVISION, align 4
  %164 = call i32 @dispc_read_reg(%struct.dispc_device* %162, i32 %163)
  store i32 %164, i32* %12, align 4
  %165 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @FLD_GET(i32 %167, i32 7, i32 4)
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @FLD_GET(i32 %169, i32 3, i32 0)
  %171 = call i32 @dev_dbg(%struct.TYPE_8__* %166, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %168, i32 %170)
  %172 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %173 = call i32 @dispc_runtime_put(%struct.dispc_device* %172)
  %174 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %175 = load %struct.dss_device*, %struct.dss_device** %10, align 8
  %176 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %175, i32 0, i32 1
  store %struct.dispc_device* %174, %struct.dispc_device** %176, align 8
  %177 = load %struct.dss_device*, %struct.dss_device** %10, align 8
  %178 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %177, i32 0, i32 0
  store i32* @dispc_ops, i32** %178, align 8
  %179 = load %struct.dss_device*, %struct.dss_device** %10, align 8
  %180 = load i32, i32* @dispc_dump_regs, align 4
  %181 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %182 = call i32 @dss_debugfs_create_file(%struct.dss_device* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %180, %struct.dispc_device* %181)
  %183 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %184 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  store i32 0, i32* %4, align 4
  br label %193

185:                                              ; preds = %158
  %186 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = call i32 @pm_runtime_disable(%struct.TYPE_8__* %187)
  br label %189

189:                                              ; preds = %185, %149, %137, %123, %102, %86, %68
  %190 = load %struct.dispc_device*, %struct.dispc_device** %11, align 8
  %191 = call i32 @kfree(%struct.dispc_device* %190)
  %192 = load i32, i32* %13, align 4
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %189, %159, %28
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.dss_device* @dss_get_device(%struct.device*) #1

declare dso_local %struct.dispc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dispc_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.soc_device_attribute* @soc_device_match(i32) #1

declare dso_local %struct.TYPE_9__* @of_match_device(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @dispc_errata_i734_wa_init(%struct.dispc_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @dispc_init_gamma_tables(%struct.dispc_device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @dispc_runtime_get(%struct.dispc_device*) #1

declare dso_local i32 @_omap_dispc_initial_config(%struct.dispc_device*) #1

declare dso_local i32 @dispc_read_reg(%struct.dispc_device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dispc_runtime_put(%struct.dispc_device*) #1

declare dso_local i32 @dss_debugfs_create_file(%struct.dss_device*, i8*, i32, %struct.dispc_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.dispc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
