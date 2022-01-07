; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_init_aem1_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_init_aem1_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.aem_ipmi_data = type { i32, i32 }
%struct.aem_data = type { i32, i64, %struct.TYPE_10__*, %struct.TYPE_13__, i32, %struct.aem_data*, i32, i64, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AEM1_NUM_ENERGY_REGS = common dso_local global i32 0, align 4
@AEM_DEFAULT_POWER_INTERVAL = common dso_local global i32 0, align 4
@aem_ida = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@aem_driver = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unable to register hwmon device for IPMI interface %d\0A\00", align 1
@update_aem1_sensors = common dso_local global i32 0, align 4
@driver_data = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Found AEM v%d.%d at 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aem_ipmi_data*, i32)* @aem_init_aem1_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aem_init_aem1_inst(%struct.aem_ipmi_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aem_ipmi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aem_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aem_ipmi_data* %0, %struct.aem_ipmi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 88, i32 %11)
  %13 = bitcast i8* %12 to %struct.aem_data*
  store %struct.aem_data* %13, %struct.aem_data** %6, align 8
  %14 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %15 = icmp ne %struct.aem_data* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %198

18:                                               ; preds = %2
  %19 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %20 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %19, i32 0, i32 11
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %23 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %25 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %28 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %41, %18
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AEM1_NUM_ENERGY_REGS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* @AEM_DEFAULT_POWER_INTERVAL, align 4
  %35 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %36 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %35, i32 0, i32 10
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i64 @ida_simple_get(i32* @aem_ida, i32 0, i32 0, i32 %45)
  %47 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %48 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %50 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %194

54:                                               ; preds = %44
  %55 = load i32, i32* @DRVNAME, align 4
  %56 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %57 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.TYPE_10__* @platform_device_alloc(i32 %55, i64 %58)
  %60 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %61 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %60, i32 0, i32 2
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %61, align 8
  %62 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %63 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %54
  br label %189

67:                                               ; preds = %54
  %68 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %69 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %68, i32 0, i32 2
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aem_driver, i32 0, i32 0), i32** %72, align 8
  %73 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %74 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = call i32 @platform_device_add(%struct.TYPE_10__* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %180

80:                                               ; preds = %67
  %81 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %82 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %81, i32 0, i32 2
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %85 = call i32 @platform_set_drvdata(%struct.TYPE_10__* %83, %struct.aem_data* %84)
  %86 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %87 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %86, i32 0, i32 3
  %88 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %4, align 8
  %89 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %4, align 8
  %92 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @aem_init_ipmi_data(%struct.TYPE_13__* %87, i32 %90, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %80
  br label %180

98:                                               ; preds = %80
  %99 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %100 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %99, i32 0, i32 2
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = call i32 @hwmon_device_register(%struct.TYPE_11__* %102)
  %104 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %105 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %107 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @IS_ERR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %98
  %112 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %113 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %112, i32 0, i32 2
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %4, align 8
  %117 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dev_err(%struct.TYPE_11__* %115, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %121 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @PTR_ERR(i32 %122)
  store i32 %123, i32* %8, align 4
  br label %174

124:                                              ; preds = %98
  %125 = load i32, i32* @update_aem1_sensors, align 4
  %126 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %127 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %126, i32 0, i32 9
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = call i8* @kzalloc(i32 96, i32 %128)
  %130 = bitcast i8* %129 to %struct.aem_data*
  %131 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %132 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %131, i32 0, i32 5
  store %struct.aem_data* %130, %struct.aem_data** %132, align 8
  %133 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %134 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %133, i32 0, i32 5
  %135 = load %struct.aem_data*, %struct.aem_data** %134, align 8
  %136 = icmp ne %struct.aem_data* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %124
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %8, align 4
  br label %169

140:                                              ; preds = %124
  %141 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %142 = call i32 @aem1_find_sensors(%struct.aem_data* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %164

146:                                              ; preds = %140
  %147 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %148 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %147, i32 0, i32 8
  %149 = call i32 @list_add_tail(i32* %148, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @driver_data, i32 0, i32 0))
  %150 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %151 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %155 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %158 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %161 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dev_info(i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %156, i64 %159, i32 %162)
  store i32 0, i32* %3, align 4
  br label %198

164:                                              ; preds = %145
  %165 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %166 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %165, i32 0, i32 5
  %167 = load %struct.aem_data*, %struct.aem_data** %166, align 8
  %168 = call i32 @kfree(%struct.aem_data* %167)
  br label %169

169:                                              ; preds = %164, %137
  %170 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %171 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @hwmon_device_unregister(i32 %172)
  br label %174

174:                                              ; preds = %169, %111
  %175 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %176 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @ipmi_destroy_user(i32 %178)
  br label %180

180:                                              ; preds = %174, %97, %79
  %181 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %182 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %181, i32 0, i32 2
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = call i32 @platform_set_drvdata(%struct.TYPE_10__* %183, %struct.aem_data* null)
  %185 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %186 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %185, i32 0, i32 2
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = call i32 @platform_device_unregister(%struct.TYPE_10__* %187)
  br label %189

189:                                              ; preds = %180, %66
  %190 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %191 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @ida_simple_remove(i32* @aem_ida, i64 %192)
  br label %194

194:                                              ; preds = %189, %53
  %195 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %196 = call i32 @kfree(%struct.aem_data* %195)
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %194, %146, %16
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @platform_device_alloc(i32, i64) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.TYPE_10__*, %struct.aem_data*) #1

declare dso_local i32 @aem_init_ipmi_data(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @aem1_find_sensors(%struct.aem_data*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.aem_data*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @ipmi_destroy_user(i32) #1

declare dso_local i32 @platform_device_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @ida_simple_remove(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
