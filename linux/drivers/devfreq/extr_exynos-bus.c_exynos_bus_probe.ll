; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.devfreq_dev_profile = type { i32, i32, i8*, i32 }
%struct.devfreq_simple_ondemand_data = type { i32, i32, %struct.devfreq* }
%struct.devfreq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.devfreq_passive_data = type { i32, i32, %struct.devfreq* }
%struct.exynos_bus = type { i32*, i32, %struct.devfreq*, %struct.device*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to find devicetree node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"devfreq\00", align 1
@exynos_bus_target = common dso_local global i8* null, align 8
@exynos_bus_get_dev_status = common dso_local global i32 0, align 4
@exynos_bus_exit = common dso_local global i32 0, align 4
@DEVFREQ_GOV_SIMPLE_ONDEMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to add devfreq device\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to register opp notifier\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"failed to enable devfreq-event devices\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"failed to set event to devfreq-event devices\0A\00", align 1
@exynos_bus_passive_exit = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@DEVFREQ_GOV_PASSIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"failed to add devfreq dev with passive governor\0A\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"exynos-bus: new bus device registered: %s (%6ld KHz ~ %6ld KHz)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_bus_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.devfreq_dev_profile*, align 8
  %8 = alloca %struct.devfreq_simple_ondemand_data*, align 8
  %9 = alloca %struct.devfreq_passive_data*, align 8
  %10 = alloca %struct.devfreq*, align 8
  %11 = alloca %struct.exynos_bus*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %4, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %5, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %272

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @devm_kzalloc(%struct.device* %31, i32 40, i32 %32)
  %34 = bitcast i8* %33 to %struct.exynos_bus*
  store %struct.exynos_bus* %34, %struct.exynos_bus** %11, align 8
  %35 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %36 = icmp ne %struct.exynos_bus* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %272

40:                                               ; preds = %29
  %41 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %42 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %41, i32 0, i32 4
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %47 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %46, i32 0, i32 3
  store %struct.device* %45, %struct.device** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %50 = call i32 @platform_set_drvdata(%struct.platform_device* %48, %struct.exynos_bus* %49)
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @devm_kzalloc(%struct.device* %51, i32 24, i32 %52)
  %54 = bitcast i8* %53 to %struct.devfreq_dev_profile*
  store %struct.devfreq_dev_profile* %54, %struct.devfreq_dev_profile** %7, align 8
  %55 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %7, align 8
  %56 = icmp ne %struct.devfreq_dev_profile* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %40
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %272

60:                                               ; preds = %40
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 0
  %63 = load %struct.device_node*, %struct.device_node** %62, align 8
  %64 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %64, %struct.device_node** %6, align 8
  %65 = load %struct.device_node*, %struct.device_node** %6, align 8
  %66 = icmp ne %struct.device_node* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.device_node*, %struct.device_node** %6, align 8
  %69 = call i32 @of_node_put(%struct.device_node* %68)
  store i32 1, i32* %16, align 4
  br label %79

70:                                               ; preds = %60
  %71 = load %struct.device_node*, %struct.device_node** %5, align 8
  %72 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %73 = call i32 @exynos_bus_parent_parse_of(%struct.device_node* %71, %struct.exynos_bus* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %2, align 4
  br label %272

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %67
  %80 = load %struct.device_node*, %struct.device_node** %5, align 8
  %81 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %82 = call i32 @exynos_bus_parse_of(%struct.device_node* %80, %struct.exynos_bus* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %260

86:                                               ; preds = %79
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %164

90:                                               ; preds = %86
  %91 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %7, align 8
  %92 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %91, i32 0, i32 0
  store i32 50, i32* %92, align 8
  %93 = load i8*, i8** @exynos_bus_target, align 8
  %94 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %7, align 8
  %95 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @exynos_bus_get_dev_status, align 4
  %97 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %7, align 8
  %98 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @exynos_bus_exit, align 4
  %100 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %7, align 8
  %101 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i8* @devm_kzalloc(%struct.device* %102, i32 16, i32 %103)
  %105 = bitcast i8* %104 to %struct.devfreq_simple_ondemand_data*
  store %struct.devfreq_simple_ondemand_data* %105, %struct.devfreq_simple_ondemand_data** %8, align 8
  %106 = load %struct.devfreq_simple_ondemand_data*, %struct.devfreq_simple_ondemand_data** %8, align 8
  %107 = icmp ne %struct.devfreq_simple_ondemand_data* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %90
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %12, align 4
  br label %253

111:                                              ; preds = %90
  %112 = load %struct.devfreq_simple_ondemand_data*, %struct.devfreq_simple_ondemand_data** %8, align 8
  %113 = getelementptr inbounds %struct.devfreq_simple_ondemand_data, %struct.devfreq_simple_ondemand_data* %112, i32 0, i32 0
  store i32 40, i32* %113, align 8
  %114 = load %struct.devfreq_simple_ondemand_data*, %struct.devfreq_simple_ondemand_data** %8, align 8
  %115 = getelementptr inbounds %struct.devfreq_simple_ondemand_data, %struct.devfreq_simple_ondemand_data* %114, i32 0, i32 1
  store i32 5, i32* %115, align 4
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %7, align 8
  %118 = load i32, i32* @DEVFREQ_GOV_SIMPLE_ONDEMAND, align 4
  %119 = load %struct.devfreq_simple_ondemand_data*, %struct.devfreq_simple_ondemand_data** %8, align 8
  %120 = call i8* @devm_devfreq_add_device(%struct.device* %116, %struct.devfreq_dev_profile* %117, i32 %118, %struct.devfreq_simple_ondemand_data* %119)
  %121 = bitcast i8* %120 to %struct.devfreq*
  %122 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %123 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %122, i32 0, i32 2
  store %struct.devfreq* %121, %struct.devfreq** %123, align 8
  %124 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %125 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %124, i32 0, i32 2
  %126 = load %struct.devfreq*, %struct.devfreq** %125, align 8
  %127 = call i64 @IS_ERR(%struct.devfreq* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %111
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i32 @dev_err(%struct.device* %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %132 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %133 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %132, i32 0, i32 2
  %134 = load %struct.devfreq*, %struct.devfreq** %133, align 8
  %135 = call i32 @PTR_ERR(%struct.devfreq* %134)
  store i32 %135, i32* %12, align 4
  br label %253

136:                                              ; preds = %111
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %139 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %138, i32 0, i32 2
  %140 = load %struct.devfreq*, %struct.devfreq** %139, align 8
  %141 = call i32 @devm_devfreq_register_opp_notifier(%struct.device* %137, %struct.devfreq* %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = call i32 @dev_err(%struct.device* %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %253

147:                                              ; preds = %136
  %148 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %149 = call i32 @exynos_bus_enable_edev(%struct.exynos_bus* %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.device*, %struct.device** %4, align 8
  %154 = call i32 @dev_err(%struct.device* %153, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %253

155:                                              ; preds = %147
  %156 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %157 = call i32 @exynos_bus_set_event(%struct.exynos_bus* %156)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.device*, %struct.device** %4, align 8
  %162 = call i32 @dev_err(%struct.device* %161, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %253

163:                                              ; preds = %155
  br label %215

164:                                              ; preds = %89
  %165 = load i8*, i8** @exynos_bus_target, align 8
  %166 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %7, align 8
  %167 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %166, i32 0, i32 2
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* @exynos_bus_passive_exit, align 4
  %169 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %7, align 8
  %170 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.device*, %struct.device** %4, align 8
  %172 = call %struct.devfreq* @devfreq_get_devfreq_by_phandle(%struct.device* %171, i32 0)
  store %struct.devfreq* %172, %struct.devfreq** %10, align 8
  %173 = load %struct.devfreq*, %struct.devfreq** %10, align 8
  %174 = call i64 @IS_ERR(%struct.devfreq* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %164
  %177 = load i32, i32* @EPROBE_DEFER, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %12, align 4
  br label %253

179:                                              ; preds = %164
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = load i32, i32* @GFP_KERNEL, align 4
  %182 = call i8* @devm_kzalloc(%struct.device* %180, i32 16, i32 %181)
  %183 = bitcast i8* %182 to %struct.devfreq_passive_data*
  store %struct.devfreq_passive_data* %183, %struct.devfreq_passive_data** %9, align 8
  %184 = load %struct.devfreq_passive_data*, %struct.devfreq_passive_data** %9, align 8
  %185 = icmp ne %struct.devfreq_passive_data* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %179
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %12, align 4
  br label %253

189:                                              ; preds = %179
  %190 = load %struct.devfreq*, %struct.devfreq** %10, align 8
  %191 = load %struct.devfreq_passive_data*, %struct.devfreq_passive_data** %9, align 8
  %192 = getelementptr inbounds %struct.devfreq_passive_data, %struct.devfreq_passive_data* %191, i32 0, i32 2
  store %struct.devfreq* %190, %struct.devfreq** %192, align 8
  %193 = load %struct.device*, %struct.device** %4, align 8
  %194 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %7, align 8
  %195 = load i32, i32* @DEVFREQ_GOV_PASSIVE, align 4
  %196 = load %struct.devfreq_passive_data*, %struct.devfreq_passive_data** %9, align 8
  %197 = bitcast %struct.devfreq_passive_data* %196 to %struct.devfreq_simple_ondemand_data*
  %198 = call i8* @devm_devfreq_add_device(%struct.device* %193, %struct.devfreq_dev_profile* %194, i32 %195, %struct.devfreq_simple_ondemand_data* %197)
  %199 = bitcast i8* %198 to %struct.devfreq*
  %200 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %201 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %200, i32 0, i32 2
  store %struct.devfreq* %199, %struct.devfreq** %201, align 8
  %202 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %203 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %202, i32 0, i32 2
  %204 = load %struct.devfreq*, %struct.devfreq** %203, align 8
  %205 = call i64 @IS_ERR(%struct.devfreq* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %189
  %208 = load %struct.device*, %struct.device** %4, align 8
  %209 = call i32 @dev_err(%struct.device* %208, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %210 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %211 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %210, i32 0, i32 2
  %212 = load %struct.devfreq*, %struct.devfreq** %211, align 8
  %213 = call i32 @PTR_ERR(%struct.devfreq* %212)
  store i32 %213, i32* %12, align 4
  br label %253

214:                                              ; preds = %189
  br label %215

215:                                              ; preds = %214, %163
  %216 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %217 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %216, i32 0, i32 2
  %218 = load %struct.devfreq*, %struct.devfreq** %217, align 8
  %219 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %218, i32 0, i32 0
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %13, align 4
  %223 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %224 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %223, i32 0, i32 2
  %225 = load %struct.devfreq*, %struct.devfreq** %224, align 8
  %226 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %225, i32 0, i32 0
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = sdiv i32 %231, 1000
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %14, align 8
  %234 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %235 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %234, i32 0, i32 2
  %236 = load %struct.devfreq*, %struct.devfreq** %235, align 8
  %237 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %236, i32 0, i32 0
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = sdiv i32 %245, 1000
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %15, align 8
  %248 = load %struct.device*, %struct.device** %4, align 8
  %249 = call i32 @dev_name(%struct.device* %248)
  %250 = load i64, i64* %14, align 8
  %251 = load i64, i64* %15, align 8
  %252 = call i32 @pr_info(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i32 %249, i64 %250, i64 %251)
  store i32 0, i32* %2, align 4
  br label %272

253:                                              ; preds = %207, %186, %176, %160, %152, %144, %129, %108
  %254 = load %struct.device*, %struct.device** %4, align 8
  %255 = call i32 @dev_pm_opp_of_remove_table(%struct.device* %254)
  %256 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %257 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @clk_disable_unprepare(i32 %258)
  br label %260

260:                                              ; preds = %253, %85
  %261 = load i32, i32* %16, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %260
  %264 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %265 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 @dev_pm_opp_put_regulators(i32* %266)
  %268 = load %struct.exynos_bus*, %struct.exynos_bus** %11, align 8
  %269 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %268, i32 0, i32 0
  store i32* null, i32** %269, align 8
  br label %270

270:                                              ; preds = %263, %260
  %271 = load i32, i32* %12, align 4
  store i32 %271, i32* %2, align 4
  br label %272

272:                                              ; preds = %270, %215, %76, %57, %37, %24
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.exynos_bus*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @exynos_bus_parent_parse_of(%struct.device_node*, %struct.exynos_bus*) #1

declare dso_local i32 @exynos_bus_parse_of(%struct.device_node*, %struct.exynos_bus*) #1

declare dso_local i8* @devm_devfreq_add_device(%struct.device*, %struct.devfreq_dev_profile*, i32, %struct.devfreq_simple_ondemand_data*) #1

declare dso_local i64 @IS_ERR(%struct.devfreq*) #1

declare dso_local i32 @PTR_ERR(%struct.devfreq*) #1

declare dso_local i32 @devm_devfreq_register_opp_notifier(%struct.device*, %struct.devfreq*) #1

declare dso_local i32 @exynos_bus_enable_edev(%struct.exynos_bus*) #1

declare dso_local i32 @exynos_bus_set_event(%struct.exynos_bus*) #1

declare dso_local %struct.devfreq* @devfreq_get_devfreq_by_phandle(%struct.device*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i64, i64) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_pm_opp_of_remove_table(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @dev_pm_opp_put_regulators(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
