; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pcf8591.c_pcf8591_read_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pcf8591.c_pcf8591_read_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.pcf8591_data = type { i32, i32 }

@PCF8591_CONTROL_AICH_MASK = common dso_local global i32 0, align 4
@input_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @pcf8591_read_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8591_read_channel(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.pcf8591_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.i2c_client* @to_i2c_client(%struct.device* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %7, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %12 = call %struct.pcf8591_data* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.pcf8591_data* %12, %struct.pcf8591_data** %8, align 8
  %13 = load %struct.pcf8591_data*, %struct.pcf8591_data** %8, align 8
  %14 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.pcf8591_data*, %struct.pcf8591_data** %8, align 8
  %17 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCF8591_CONTROL_AICH_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load %struct.pcf8591_data*, %struct.pcf8591_data** %8, align 8
  %25 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PCF8591_CONTROL_AICH_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.pcf8591_data*, %struct.pcf8591_data** %8, align 8
  %33 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %35 = load %struct.pcf8591_data*, %struct.pcf8591_data** %8, align 8
  %36 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %34, i32 %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %40 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %39)
  br label %41

41:                                               ; preds = %23, %2
  %42 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %43 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.pcf8591_data*, %struct.pcf8591_data** %8, align 8
  %45 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @input_mode, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %61, label %52

52:                                               ; preds = %49, %41
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 3
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* @input_mode, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @input_mode, align 4
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %65

61:                                               ; preds = %58, %55, %49
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @REG_TO_SIGNED(i32 %62)
  %64 = mul nsw i32 10, %63
  store i32 %64, i32* %3, align 4
  br label %68

65:                                               ; preds = %58, %52
  %66 = load i32, i32* %6, align 4
  %67 = mul nsw i32 10, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.pcf8591_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @REG_TO_SIGNED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
