; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds620.c_ds620_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds620.c_ds620_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ds620_platform_data = type { i32 }

@DS620_REG_CONF = common dso_local global i32 0, align 4
@DS620_REG_CONFIG_1SHOT = common dso_local global i32 0, align 4
@DS620_REG_CONFIG_PO2 = common dso_local global i32 0, align 4
@DS620_REG_CONFIG_PO1 = common dso_local global i32 0, align 4
@DS620_REG_CONFIG_R1 = common dso_local global i32 0, align 4
@DS620_REG_CONFIG_R0 = common dso_local global i32 0, align 4
@DS620_COM_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @ds620_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds620_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.ds620_platform_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call %struct.ds620_platform_data* @dev_get_platdata(i32* %7)
  store %struct.ds620_platform_data* %8, %struct.ds620_platform_data** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = load i32, i32* @DS620_REG_CONF, align 4
  %11 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @DS620_REG_CONFIG_1SHOT, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @DS620_REG_CONFIG_PO2, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ds620_platform_data*, %struct.ds620_platform_data** %3, align 8
  %20 = icmp ne %struct.ds620_platform_data* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.ds620_platform_data*, %struct.ds620_platform_data** %3, align 8
  %23 = getelementptr inbounds %struct.ds620_platform_data, %struct.ds620_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @DS620_REG_CONFIG_PO1, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %49

31:                                               ; preds = %21, %1
  %32 = load %struct.ds620_platform_data*, %struct.ds620_platform_data** %3, align 8
  %33 = icmp ne %struct.ds620_platform_data* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.ds620_platform_data*, %struct.ds620_platform_data** %3, align 8
  %36 = getelementptr inbounds %struct.ds620_platform_data, %struct.ds620_platform_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @DS620_REG_CONFIG_PO1, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %34, %31
  %44 = load i32, i32* @DS620_REG_CONFIG_PO2, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %39
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i32, i32* @DS620_REG_CONFIG_R1, align 4
  %51 = load i32, i32* @DS620_REG_CONFIG_R0, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %60 = load i32, i32* @DS620_REG_CONF, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %49
  %64 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %65 = load i32, i32* @DS620_COM_START, align 4
  %66 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %64, i32 %65)
  ret void
}

declare dso_local %struct.ds620_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
