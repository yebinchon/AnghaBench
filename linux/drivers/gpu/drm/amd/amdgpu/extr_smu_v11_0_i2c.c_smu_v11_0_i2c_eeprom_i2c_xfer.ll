; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_eeprom_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_eeprom_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i64 }
%struct.amdgpu_ras_eeprom_control = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"I2C bus unlocked, stopping transaction!\00", align 1
@EIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @smu_v11_0_i2c_eeprom_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_i2c_eeprom_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_ras_eeprom_control*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = call %struct.amdgpu_ras_eeprom_control* @to_eeprom_control(%struct.i2c_adapter* %11)
  store %struct.amdgpu_ras_eeprom_control* %12, %struct.amdgpu_ras_eeprom_control** %10, align 8
  %13 = load %struct.amdgpu_ras_eeprom_control*, %struct.amdgpu_ras_eeprom_control** %10, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, %struct.amdgpu_ras_eeprom_control* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %97

21:                                               ; preds = %3
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %23 = call i32 @smu_v11_0_i2c_init(%struct.i2c_adapter* %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %90, %21
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %24
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i64 %31
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @I2C_M_RD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %28
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i64 %42
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i64 %49
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i64 %55
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @smu_v11_0_i2c_eeprom_read_data(%struct.i2c_adapter* %39, i32 %46, i32 %52, i32 %58)
  store i32 %59, i32* %9, align 4
  br label %82

60:                                               ; preds = %28
  %61 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %62 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i64 %64
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i64 %71
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i64 %77
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @smu_v11_0_i2c_eeprom_write_data(%struct.i2c_adapter* %61, i32 %68, i32 %74, i32 %80)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %60, %38
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @I2C_OK, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %93

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %24

93:                                               ; preds = %86, %24
  %94 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %95 = call i32 @smu_v11_0_i2c_fini(%struct.i2c_adapter* %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %17
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.amdgpu_ras_eeprom_control* @to_eeprom_control(%struct.i2c_adapter*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @smu_v11_0_i2c_init(%struct.i2c_adapter*) #1

declare dso_local i32 @smu_v11_0_i2c_eeprom_read_data(%struct.i2c_adapter*, i32, i32, i32) #1

declare dso_local i32 @smu_v11_0_i2c_eeprom_write_data(%struct.i2c_adapter*, i32, i32, i32) #1

declare dso_local i32 @smu_v11_0_i2c_fini(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
