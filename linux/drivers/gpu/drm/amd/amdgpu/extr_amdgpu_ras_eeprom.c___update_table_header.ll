; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras_eeprom.c___update_table_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras_eeprom.c___update_table_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ras_eeprom_control = type { i32, i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@EEPROM_ADDRESS_SIZE = common dso_local global i32 0, align 4
@EEPROM_TABLE_HEADER_SIZE = common dso_local global i32 0, align 4
@EEPROM_I2C_TARGET_ADDR = common dso_local global i32 0, align 4
@EEPROM_HDR_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to write EEPROM table header, ret:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ras_eeprom_control*, i8*)* @__update_table_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__update_table_header(%struct.amdgpu_ras_eeprom_control* %0, i8* %1) #0 {
  %3 = alloca %struct.amdgpu_ras_eeprom_control*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_msg, align 8
  store %struct.amdgpu_ras_eeprom_control* %0, %struct.amdgpu_ras_eeprom_control** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  %8 = load i32, i32* @EEPROM_ADDRESS_SIZE, align 4
  %9 = load i32, i32* @EEPROM_TABLE_HEADER_SIZE, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %7, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 3
  %15 = load i32, i32* @EEPROM_I2C_TARGET_ADDR, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @EEPROM_HDR_START, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 4
  %19 = load %struct.amdgpu_ras_eeprom_control*, %struct.amdgpu_ras_eeprom_control** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, %struct.amdgpu_ras_eeprom_control* %19, i32 0, i32 1
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @EEPROM_ADDRESS_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = call i32 @__encode_table_header_to_buff(i32* %20, i8* %24)
  %26 = load %struct.amdgpu_ras_eeprom_control*, %struct.amdgpu_ras_eeprom_control** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, %struct.amdgpu_ras_eeprom_control* %26, i32 0, i32 0
  %28 = call i32 @i2c_transfer(i32* %27, %struct.i2c_msg* %6, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @__encode_table_header_to_buff(i32*, i8*) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
