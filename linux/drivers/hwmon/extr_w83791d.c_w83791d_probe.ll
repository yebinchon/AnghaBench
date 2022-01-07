; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_w83791d_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_w83791d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.w83791d_data = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUMBER_OF_FANIN = common dso_local global i32 0, align 4
@W83791D_REG_FAN_MIN = common dso_local global i32* null, align 8
@w83791d_group = common dso_local global i32 0, align 4
@W83791D_REG_GPIO = common dso_local global i32 0, align 4
@w83791d_group_fanpwm45 = common dso_local global i32 0, align 4
@W83791D_REG_DID_VID4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @w83791d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83791d_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.w83791d_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.w83791d_data* @devm_kzalloc(%struct.device* %14, i32 16, i32 %15)
  store %struct.w83791d_data* %16, %struct.w83791d_data** %6, align 8
  %17 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %18 = icmp ne %struct.w83791d_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %115

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %25 = call i32 @i2c_set_clientdata(%struct.i2c_client* %23, %struct.w83791d_data* %24)
  %26 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %27 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %26, i32 0, i32 2
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @w83791d_detect_subclients(%struct.i2c_client* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %115

35:                                               ; preds = %22
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = call i32 @w83791d_init_client(%struct.i2c_client* %36)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %56, %35
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @NUMBER_OF_FANIN, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load i32*, i32** @W83791D_REG_FAN_MIN, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @w83791d_read(%struct.i2c_client* %43, i32 %48)
  %50 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %51 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 0
  %63 = call i32 @sysfs_create_group(i32* %62, i32* @w83791d_group)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %115

68:                                               ; preds = %59
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = load i32, i32* @W83791D_REG_GPIO, align 4
  %71 = call i32 @w83791d_read(%struct.i2c_client* %69, i32 %70)
  %72 = and i32 %71, 16
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.device, %struct.device* %77, i32 0, i32 0
  %79 = call i32 @sysfs_create_group(i32* %78, i32* @w83791d_group_fanpwm45)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %109

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %68
  %85 = load %struct.device*, %struct.device** %7, align 8
  %86 = call i32 @hwmon_device_register(%struct.device* %85)
  %87 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %88 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %90 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @IS_ERR(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %96 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @PTR_ERR(i32 %97)
  store i32 %98, i32* %9, align 4
  br label %100

99:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %115

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.device, %struct.device* %105, i32 0, i32 0
  %107 = call i32 @sysfs_remove_group(i32* %106, i32* @w83791d_group_fanpwm45)
  br label %108

108:                                              ; preds = %103, %100
  br label %109

109:                                              ; preds = %108, %82
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.device, %struct.device* %111, i32 0, i32 0
  %113 = call i32 @sysfs_remove_group(i32* %112, i32* @w83791d_group)
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %109, %99, %66, %33, %19
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.w83791d_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.w83791d_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @w83791d_detect_subclients(%struct.i2c_client*) #1

declare dso_local i32 @w83791d_init_client(%struct.i2c_client*) #1

declare dso_local i32 @w83791d_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
