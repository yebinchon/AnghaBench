; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_qcom_hwspinlock.c_qcom_hwspinlock_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_qcom_hwspinlock.c_qcom_hwspinlock_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.hwspinlock_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.device_node = type { i32 }
%struct.reg_field = type { i32, i32, i64 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"no syscon property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"no offset in syscon\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"no stride syscon\0A\00", align 1
@QCOM_MUTEX_NUM_LOCKS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_hwspinlock_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_hwspinlock_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_hwspinlock_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hwspinlock_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.reg_field, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device_node* @of_parse_phandle(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @dev_err(%struct.TYPE_9__* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %134

26:                                               ; preds = %1
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %27)
  store %struct.regmap* %28, %struct.regmap** %7, align 8
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = call i32 @of_node_put(%struct.device_node* %29)
  %31 = load %struct.regmap*, %struct.regmap** %7, align 8
  %32 = call i64 @IS_ERR(%struct.regmap* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.regmap*, %struct.regmap** %7, align 8
  %36 = call i32 @PTR_ERR(%struct.regmap* %35)
  store i32 %36, i32* %2, align 4
  br label %134

37:                                               ; preds = %26
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @of_property_read_u32_index(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1, i32* %10)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(%struct.TYPE_9__* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %134

51:                                               ; preds = %37
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @of_property_read_u32_index(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2, i32* %9)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(%struct.TYPE_9__* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %134

65:                                               ; preds = %51
  %66 = load i32, i32* @QCOM_MUTEX_NUM_LOCKS, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  store i64 %68, i64* %8, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i64, i64* %8, align 8
  %72 = add i64 8, %71
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.hwspinlock_device* @devm_kzalloc(%struct.TYPE_9__* %70, i32 %73, i32 %74)
  store %struct.hwspinlock_device* %75, %struct.hwspinlock_device** %4, align 8
  %76 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %4, align 8
  %77 = icmp ne %struct.hwspinlock_device* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %65
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %134

81:                                               ; preds = %65
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %4, align 8
  %84 = call i32 @platform_set_drvdata(%struct.platform_device* %82, %struct.hwspinlock_device* %83)
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %114, %81
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @QCOM_MUTEX_NUM_LOCKS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %9, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %90, %93
  %95 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %6, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %6, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %6, i32 0, i32 1
  store i32 31, i32* %97, align 4
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load %struct.regmap*, %struct.regmap** %7, align 8
  %101 = bitcast %struct.reg_field* %6 to { i64, i64 }*
  %102 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %101, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @devm_regmap_field_alloc(%struct.TYPE_9__* %99, %struct.regmap* %100, i64 %103, i64 %105)
  %107 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %4, align 8
  %108 = getelementptr inbounds %struct.hwspinlock_device, %struct.hwspinlock_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i32 %106, i32* %113, align 4
  br label %114

114:                                              ; preds = %89
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %85

117:                                              ; preds = %85
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %119)
  %121 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %4, align 8
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load i32, i32* @QCOM_MUTEX_NUM_LOCKS, align 4
  %125 = call i32 @hwspin_lock_register(%struct.hwspinlock_device* %121, %struct.TYPE_9__* %123, i32* @qcom_hwspinlock_ops, i32 0, i32 %124)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 @pm_runtime_disable(%struct.TYPE_9__* %130)
  br label %132

132:                                              ; preds = %128, %117
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %78, %59, %45, %34, %20
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @of_property_read_u32_index(i32, i8*, i32, i32*) #1

declare dso_local %struct.hwspinlock_device* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hwspinlock_device*) #1

declare dso_local i32 @devm_regmap_field_alloc(%struct.TYPE_9__*, %struct.regmap*, i64, i64) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @hwspin_lock_register(%struct.hwspinlock_device*, %struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
