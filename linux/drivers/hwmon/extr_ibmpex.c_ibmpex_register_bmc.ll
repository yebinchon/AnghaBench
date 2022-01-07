; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpex.c_ibmpex_register_bmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpex.c_ibmpex_register_bmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.ibmpex_bmc_data = type { i32, i32, i32, %struct.device*, i32, i32, %struct.TYPE_5__, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@driver_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to register user with IPMI interface %d\0A\00", align 1
@PEX_NET_FUNCTION = common dso_local global i32 0, align 4
@PEX_COMMAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Unable to register hwmon device for IPMI interface %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Error %d finding sensors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.device*)* @ibmpex_register_bmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmpex_register_bmc(i32 %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ibmpex_bmc_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.device* %1, %struct.device** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ibmpex_bmc_data* @kzalloc(i32 80, i32 %7)
  store %struct.ibmpex_bmc_data* %8, %struct.ibmpex_bmc_data** %5, align 8
  %9 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %10 = icmp ne %struct.ibmpex_bmc_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %126

12:                                               ; preds = %2
  %13 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %14 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %15 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %14, i32 0, i32 10
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %18 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %19 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %18, i32 0, i32 10
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %22 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %21, i32 0, i32 10
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %28 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %31 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %30, i32 0, i32 3
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %33 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %36 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %37 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %36, i32 0, i32 1
  %38 = call i32 @ipmi_create_user(i32 %34, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @driver_data, i32 0, i32 1), %struct.ibmpex_bmc_data* %35, i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %12
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %44 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %123

47:                                               ; preds = %12
  %48 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %49 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %48, i32 0, i32 9
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %52 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %51, i32 0, i32 8
  store i64 0, i64* %52, align 8
  %53 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %54 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %53, i32 0, i32 7
  %55 = call i32 @init_completion(i32* %54)
  %56 = load i32, i32* @PEX_NET_FUNCTION, align 4
  %57 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %58 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @PEX_COMMAND, align 4
  %61 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %62 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %65 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %68 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %71 = call i32 @ibmpex_ver_check(%struct.ibmpex_bmc_data* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %47
  br label %118

75:                                               ; preds = %47
  %76 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %77 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %76, i32 0, i32 3
  %78 = load %struct.device*, %struct.device** %77, align 8
  %79 = call i32 @hwmon_device_register(%struct.device* %78)
  %80 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %81 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %83 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %75
  %88 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %89 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %88, i32 0, i32 3
  %90 = load %struct.device*, %struct.device** %89, align 8
  %91 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %92 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %118

95:                                               ; preds = %75
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %98 = call i32 @dev_set_drvdata(%struct.device* %96, %struct.ibmpex_bmc_data* %97)
  %99 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %100 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %99, i32 0, i32 4
  %101 = call i32 @list_add_tail(i32* %100, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @driver_data, i32 0, i32 0))
  %102 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %103 = call i32 @ibmpex_find_sensors(%struct.ibmpex_bmc_data* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %95
  %107 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %108 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %107, i32 0, i32 3
  %109 = load %struct.device*, %struct.device** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %113

112:                                              ; preds = %95
  br label %126

113:                                              ; preds = %106
  %114 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %115 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @hwmon_device_unregister(i32 %116)
  br label %118

118:                                              ; preds = %113, %87, %74
  %119 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %120 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ipmi_destroy_user(i32 %121)
  br label %123

123:                                              ; preds = %118, %41
  %124 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %125 = call i32 @kfree(%struct.ibmpex_bmc_data* %124)
  br label %126

126:                                              ; preds = %123, %112, %11
  ret void
}

declare dso_local %struct.ibmpex_bmc_data* @kzalloc(i32, i32) #1

declare dso_local i32 @ipmi_create_user(i32, i32*, %struct.ibmpex_bmc_data*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ibmpex_ver_check(%struct.ibmpex_bmc_data*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ibmpex_bmc_data*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ibmpex_find_sensors(%struct.ibmpex_bmc_data*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @ipmi_destroy_user(i32) #1

declare dso_local i32 @kfree(%struct.ibmpex_bmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
