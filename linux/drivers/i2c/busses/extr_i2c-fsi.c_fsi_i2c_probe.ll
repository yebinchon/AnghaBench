; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsi_i2c_master = type { i32, i32, i32 }
%struct.fsi_i2c_port = type { i32, %struct.TYPE_4__, i64, %struct.fsi_i2c_master* }
%struct.TYPE_4__ = type { i32, %struct.fsi_i2c_port*, i32*, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.device*, %struct.device_node* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_FSI_STAT = common dso_local global i32 0, align 4
@I2C_STAT_MAX_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"I2C master has %d ports\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@fsi_i2c_algorithm = common dso_local global i32 0, align 4
@fsi_i2c_bus_recovery_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"i2c_bus-%u\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to register adapter: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @fsi_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_i2c_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fsi_i2c_master*, align 8
  %5 = alloca %struct.fsi_i2c_port*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.fsi_i2c_master* @devm_kzalloc(%struct.device* %11, i32 12, i32 %12)
  store %struct.fsi_i2c_master* %13, %struct.fsi_i2c_master** %4, align 8
  %14 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %15 = icmp ne %struct.fsi_i2c_master* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %140

19:                                               ; preds = %1
  %20 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %21 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %20, i32 0, i32 2
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @to_fsi_dev(%struct.device* %23)
  %25 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %26 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %28 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %31 = call i32 @fsi_i2c_dev_init(%struct.fsi_i2c_master* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %2, align 4
  br label %140

36:                                               ; preds = %19
  %37 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %38 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @I2C_FSI_STAT, align 4
  %41 = call i32 @fsi_i2c_read_reg(i32 %39, i32 %40, i64* %9)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %2, align 4
  br label %140

46:                                               ; preds = %36
  %47 = load i32, i32* @I2C_STAT_MAX_PORT, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @FIELD_GET(i32 %47, i64 %48)
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %8, align 8
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %52)
  store i64 0, i64* %7, align 8
  br label %54

54:                                               ; preds = %133, %46
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %136

58:                                               ; preds = %54
  %59 = load %struct.device*, %struct.device** %3, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call %struct.device_node* @fsi_i2c_find_port_of_node(i32 %61, i64 %62)
  store %struct.device_node* %63, %struct.device_node** %6, align 8
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = icmp ne %struct.device_node* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.device_node*, %struct.device_node** %6, align 8
  %68 = call i32 @of_device_is_available(%struct.device_node* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %133

71:                                               ; preds = %66, %58
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.fsi_i2c_port* @kzalloc(i32 80, i32 %72)
  store %struct.fsi_i2c_port* %73, %struct.fsi_i2c_port** %5, align 8
  %74 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %75 = icmp ne %struct.fsi_i2c_port* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load %struct.device_node*, %struct.device_node** %6, align 8
  %78 = call i32 @of_node_put(%struct.device_node* %77)
  br label %136

79:                                               ; preds = %71
  %80 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %81 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %82 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %81, i32 0, i32 3
  store %struct.fsi_i2c_master* %80, %struct.fsi_i2c_master** %82, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %85 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* @THIS_MODULE, align 4
  %87 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %88 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  store i32 %86, i32* %89, align 8
  %90 = load %struct.device_node*, %struct.device_node** %6, align 8
  %91 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %92 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store %struct.device_node* %90, %struct.device_node** %94, align 8
  %95 = load %struct.device*, %struct.device** %3, align 8
  %96 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %97 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store %struct.device* %95, %struct.device** %99, align 8
  %100 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %101 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  store i32* @fsi_i2c_algorithm, i32** %102, align 8
  %103 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %104 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i32* @fsi_i2c_bus_recovery_info, i32** %105, align 8
  %106 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %107 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %108 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store %struct.fsi_i2c_port* %106, %struct.fsi_i2c_port** %109, align 8
  %110 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %111 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @snprintf(i32 %113, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %114)
  %116 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %117 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %116, i32 0, i32 1
  %118 = call i32 @i2c_add_adapter(%struct.TYPE_4__* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %79
  %122 = load %struct.device*, %struct.device** %3, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %126 = call i32 @kfree(%struct.fsi_i2c_port* %125)
  br label %133

127:                                              ; preds = %79
  %128 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %129 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %128, i32 0, i32 0
  %130 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %131 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %130, i32 0, i32 0
  %132 = call i32 @list_add(i32* %129, i32* %131)
  br label %133

133:                                              ; preds = %127, %121, %70
  %134 = load i64, i64* %7, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %7, align 8
  br label %54

136:                                              ; preds = %76, %54
  %137 = load %struct.device*, %struct.device** %3, align 8
  %138 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %139 = call i32 @dev_set_drvdata(%struct.device* %137, %struct.fsi_i2c_master* %138)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %44, %34, %16
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.fsi_i2c_master* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @to_fsi_dev(%struct.device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fsi_i2c_dev_init(%struct.fsi_i2c_master*) #1

declare dso_local i32 @fsi_i2c_read_reg(i32, i32, i64*) #1

declare dso_local i64 @FIELD_GET(i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local %struct.device_node* @fsi_i2c_find_port_of_node(i32, i64) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local %struct.fsi_i2c_port* @kzalloc(i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.fsi_i2c_port*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.fsi_i2c_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
