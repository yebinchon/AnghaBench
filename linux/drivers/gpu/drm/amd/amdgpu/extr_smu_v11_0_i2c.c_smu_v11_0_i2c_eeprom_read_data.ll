; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_eeprom_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_eeprom_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@I2C_NO_STOP = common dso_local global i32 0, align 4
@I2C_OK = common dso_local global i64 0, align 8
@I2C_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ReadData() - I2C error occurred :%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i2c_adapter*, i32, i32*, i64)* @smu_v11_0_i2c_eeprom_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smu_v11_0_i2c_eeprom_read_data(%struct.i2c_adapter* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* @I2C_NO_STOP, align 4
  %14 = call i64 @smu_v11_0_i2c_transmit(%struct.i2c_adapter* %10, i32 %11, i32* %12, i32 2, i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @I2C_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %28

19:                                               ; preds = %4
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i64, i64* %8, align 8
  %25 = sub nsw i64 %24, 2
  %26 = load i32, i32* @I2C_RESTART, align 4
  %27 = call i64 @smu_v11_0_i2c_receive(%struct.i2c_adapter* %20, i32 %21, i32* %23, i64 %25, i32 %26)
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %19, %18
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @I2C_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i64, i64* %9, align 8
  ret i64 %36
}

declare dso_local i64 @smu_v11_0_i2c_transmit(%struct.i2c_adapter*, i32, i32*, i32, i32) #1

declare dso_local i64 @smu_v11_0_i2c_receive(%struct.i2c_adapter*, i32, i32*, i64, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
