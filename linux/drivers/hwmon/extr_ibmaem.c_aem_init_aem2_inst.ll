; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_init_aem2_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_init_aem2_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.aem_ipmi_data = type { i32, i32 }
%struct.aem_find_instance_resp = type { i32, i32, i32 }
%struct.aem_data = type { i64, %struct.TYPE_10__*, %struct.TYPE_13__, i32, %struct.aem_data*, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AEM2_NUM_ENERGY_REGS = common dso_local global i32 0, align 4
@AEM_DEFAULT_POWER_INTERVAL = common dso_local global i32 0, align 4
@aem_ida = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@aem_driver = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unable to register hwmon device for IPMI interface %d\0A\00", align 1
@update_aem2_sensors = common dso_local global i32 0, align 4
@driver_data = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Found AEM v%d.%d at 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aem_ipmi_data*, %struct.aem_find_instance_resp*)* @aem_init_aem2_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aem_init_aem2_inst(%struct.aem_ipmi_data* %0, %struct.aem_find_instance_resp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aem_ipmi_data*, align 8
  %5 = alloca %struct.aem_find_instance_resp*, align 8
  %6 = alloca %struct.aem_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aem_ipmi_data* %0, %struct.aem_ipmi_data** %4, align 8
  store %struct.aem_find_instance_resp* %1, %struct.aem_find_instance_resp** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 80, i32 %11)
  %13 = bitcast i8* %12 to %struct.aem_data*
  store %struct.aem_data* %13, %struct.aem_data** %6, align 8
  %14 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %15 = icmp ne %struct.aem_data* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %206

18:                                               ; preds = %2
  %19 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %20 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %19, i32 0, i32 11
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.aem_find_instance_resp*, %struct.aem_find_instance_resp** %5, align 8
  %23 = getelementptr inbounds %struct.aem_find_instance_resp, %struct.aem_find_instance_resp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %26 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load %struct.aem_find_instance_resp*, %struct.aem_find_instance_resp** %5, align 8
  %28 = getelementptr inbounds %struct.aem_find_instance_resp, %struct.aem_find_instance_resp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %31 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.aem_find_instance_resp*, %struct.aem_find_instance_resp** %5, align 8
  %33 = getelementptr inbounds %struct.aem_find_instance_resp, %struct.aem_find_instance_resp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %36 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %49, %18
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AEM2_NUM_ENERGY_REGS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32, i32* @AEM_DEFAULT_POWER_INTERVAL, align 4
  %43 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %44 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %43, i32 0, i32 10
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %37

52:                                               ; preds = %37
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i64 @ida_simple_get(i32* @aem_ida, i32 0, i32 0, i32 %53)
  %55 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %56 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %58 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %202

62:                                               ; preds = %52
  %63 = load i32, i32* @DRVNAME, align 4
  %64 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %65 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.TYPE_10__* @platform_device_alloc(i32 %63, i64 %66)
  %68 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %69 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %68, i32 0, i32 1
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %69, align 8
  %70 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %71 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = icmp ne %struct.TYPE_10__* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %62
  br label %197

75:                                               ; preds = %62
  %76 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %77 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aem_driver, i32 0, i32 0), i32** %80, align 8
  %81 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %82 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = call i32 @platform_device_add(%struct.TYPE_10__* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %188

88:                                               ; preds = %75
  %89 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %90 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %93 = call i32 @platform_set_drvdata(%struct.TYPE_10__* %91, %struct.aem_data* %92)
  %94 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %95 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %94, i32 0, i32 2
  %96 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %4, align 8
  %97 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %4, align 8
  %100 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @aem_init_ipmi_data(%struct.TYPE_13__* %95, i32 %98, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %88
  br label %188

106:                                              ; preds = %88
  %107 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %108 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %107, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = call i32 @hwmon_device_register(%struct.TYPE_11__* %110)
  %112 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %113 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %115 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @IS_ERR(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %106
  %120 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %121 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %4, align 8
  %125 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dev_err(%struct.TYPE_11__* %123, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %129 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @PTR_ERR(i32 %130)
  store i32 %131, i32* %8, align 4
  br label %182

132:                                              ; preds = %106
  %133 = load i32, i32* @update_aem2_sensors, align 4
  %134 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %135 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %134, i32 0, i32 9
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i8* @kzalloc(i32 88, i32 %136)
  %138 = bitcast i8* %137 to %struct.aem_data*
  %139 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %140 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %139, i32 0, i32 4
  store %struct.aem_data* %138, %struct.aem_data** %140, align 8
  %141 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %142 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %141, i32 0, i32 4
  %143 = load %struct.aem_data*, %struct.aem_data** %142, align 8
  %144 = icmp ne %struct.aem_data* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %132
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %8, align 4
  br label %177

148:                                              ; preds = %132
  %149 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %150 = call i32 @aem2_find_sensors(%struct.aem_data* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %172

154:                                              ; preds = %148
  %155 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %156 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %155, i32 0, i32 8
  %157 = call i32 @list_add_tail(i32* %156, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @driver_data, i32 0, i32 0))
  %158 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %159 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %163 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %166 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %169 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dev_info(i32 %161, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %164, i32 %167, i32 %170)
  store i32 0, i32* %3, align 4
  br label %206

172:                                              ; preds = %153
  %173 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %174 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %173, i32 0, i32 4
  %175 = load %struct.aem_data*, %struct.aem_data** %174, align 8
  %176 = call i32 @kfree(%struct.aem_data* %175)
  br label %177

177:                                              ; preds = %172, %145
  %178 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %179 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @hwmon_device_unregister(i32 %180)
  br label %182

182:                                              ; preds = %177, %119
  %183 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %184 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @ipmi_destroy_user(i32 %186)
  br label %188

188:                                              ; preds = %182, %105, %87
  %189 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %190 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %189, i32 0, i32 1
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = call i32 @platform_set_drvdata(%struct.TYPE_10__* %191, %struct.aem_data* null)
  %193 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %194 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %193, i32 0, i32 1
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = call i32 @platform_device_unregister(%struct.TYPE_10__* %195)
  br label %197

197:                                              ; preds = %188, %74
  %198 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %199 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @ida_simple_remove(i32* @aem_ida, i64 %200)
  br label %202

202:                                              ; preds = %197, %61
  %203 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %204 = call i32 @kfree(%struct.aem_data* %203)
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %202, %154, %16
  %207 = load i32, i32* %3, align 4
  ret i32 %207
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

declare dso_local i32 @aem2_find_sensors(%struct.aem_data*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

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
