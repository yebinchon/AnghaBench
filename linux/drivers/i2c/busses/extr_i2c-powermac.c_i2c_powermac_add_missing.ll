; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_add_missing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_add_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.pmac_i2c_bus = type { i32 }
%struct.device_node = type { i32 }
%union.i2c_smbus_data = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"k2-i2c\00", align 1
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"MAC,pcm3052\00", align 1
@ONYX_REG_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*, %struct.pmac_i2c_bus*, i32)* @i2c_powermac_add_missing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_powermac_add_missing(%struct.i2c_adapter* %0, %struct.pmac_i2c_bus* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.pmac_i2c_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.i2c_smbus_data, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.pmac_i2c_bus* %1, %struct.pmac_i2c_bus** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %5, align 8
  %11 = call %struct.device_node* @pmac_i2c_get_bus_node(%struct.pmac_i2c_bus* %10)
  store %struct.device_node* %11, %struct.device_node** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %7, align 8
  %13 = call i64 @of_device_is_compatible(%struct.device_node* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %15
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %20 = load i32, i32* @I2C_SMBUS_READ, align 4
  %21 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %22 = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %19, i32 70, i32 0, i32 %20, i32 67, i32 %21, %union.i2c_smbus_data* %9)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %27 = call i32 @i2c_powermac_create_one(%struct.i2c_adapter* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 70)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %30 = load i32, i32* @I2C_SMBUS_READ, align 4
  %31 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %32 = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %29, i32 71, i32 0, i32 %30, i32 67, i32 %31, %union.i2c_smbus_data* %9)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %37 = call i32 @i2c_powermac_create_one(%struct.i2c_adapter* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 71)
  br label %38

38:                                               ; preds = %35, %28
  br label %39

39:                                               ; preds = %38, %15, %3
  ret void
}

declare dso_local %struct.device_node* @pmac_i2c_get_bus_node(%struct.pmac_i2c_bus*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @i2c_smbus_xfer(%struct.i2c_adapter*, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @i2c_powermac_create_one(%struct.i2c_adapter*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
