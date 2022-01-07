; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-slave-eeprom.c_i2c_slave_eeprom_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-slave-eeprom.c_i2c_slave_eeprom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.eeprom_data = type { i32, i32, %struct.TYPE_7__, i32, i8*, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }

@I2C_SLAVE_BYTELEN = common dso_local global i32 0, align 4
@I2C_SLAVE_FLAG_ADDR16 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_SLAVE_FLAG_RO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"slave-eeprom\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@i2c_slave_eeprom_bin_read = common dso_local global i32 0, align 4
@i2c_slave_eeprom_bin_write = common dso_local global i32 0, align 4
@i2c_slave_eeprom_slave_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @i2c_slave_eeprom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_slave_eeprom_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.eeprom_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load i32, i32* @I2C_SLAVE_BYTELEN, align 4
  %11 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @FIELD_GET(i32 %10, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @I2C_SLAVE_FLAG_ADDR16, align 4
  %17 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @FIELD_GET(i32 %16, i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = add i64 64, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.eeprom_data* @devm_kzalloc(%struct.TYPE_8__* %23, i32 %27, i32 %28)
  store %struct.eeprom_data* %29, %struct.eeprom_data** %6, align 8
  %30 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %31 = icmp ne %struct.eeprom_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %112

35:                                               ; preds = %2
  %36 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %37 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 2, i32 1
  %42 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %43 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sub i32 %44, 1
  %46 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %47 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @I2C_SLAVE_FLAG_RO, align 4
  %49 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @FIELD_GET(i32 %48, i32 %51)
  %53 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %54 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %56 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %55, i32 0, i32 3
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %60 = call i32 @i2c_set_clientdata(%struct.i2c_client* %58, %struct.eeprom_data* %59)
  %61 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %62 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %61, i32 0, i32 2
  %63 = call i32 @sysfs_bin_attr_init(%struct.TYPE_7__* %62)
  %64 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %65 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %67, align 8
  %68 = load i32, i32* @S_IRUSR, align 4
  %69 = load i32, i32* @S_IWUSR, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %72 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 8
  %75 = load i32, i32* @i2c_slave_eeprom_bin_read, align 4
  %76 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %77 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @i2c_slave_eeprom_bin_write, align 4
  %80 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %81 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %85 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %91 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %90, i32 0, i32 2
  %92 = call i32 @sysfs_create_bin_file(i32* %89, %struct.TYPE_7__* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %35
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %112

97:                                               ; preds = %35
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = load i32, i32* @i2c_slave_eeprom_slave_cb, align 4
  %100 = call i32 @i2c_slave_register(%struct.i2c_client* %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.eeprom_data*, %struct.eeprom_data** %6, align 8
  %108 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %107, i32 0, i32 2
  %109 = call i32 @sysfs_remove_bin_file(i32* %106, %struct.TYPE_7__* %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %112

111:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %103, %95, %32
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local %struct.eeprom_data* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.eeprom_data*) #1

declare dso_local i32 @sysfs_bin_attr_init(%struct.TYPE_7__*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @i2c_slave_register(%struct.i2c_client*, i32) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
