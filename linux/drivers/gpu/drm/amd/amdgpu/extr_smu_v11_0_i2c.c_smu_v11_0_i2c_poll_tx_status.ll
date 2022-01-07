; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_poll_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_poll_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.amdgpu_device = type { i32 }

@I2C_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@I2C_SW_TIMEOUT = common dso_local global i32 0, align 4
@SMUIO = common dso_local global i32 0, align 4
@mmCKSVII2C_IC_STATUS = common dso_local global i32 0, align 4
@CKSVII2C_IC_STATUS = common dso_local global i32 0, align 4
@TFE = common dso_local global i32 0, align 4
@mmCKSVII2C_IC_INTR_STAT = common dso_local global i32 0, align 4
@CKSVII2C_IC_INTR_STAT = common dso_local global i32 0, align 4
@R_TX_ABRT = common dso_local global i32 0, align 4
@mmCKSVII2C_IC_TX_ABRT_SOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"TX was terminated, IC_TX_ABRT_SOURCE val is:%x\00", align 1
@CKSVII2C_IC_TX_ABRT_SOURCE = common dso_local global i32 0, align 4
@ABRT_TXDATA_NOACK = common dso_local global i32 0, align 4
@I2C_NAK_TXDATA_NOACK = common dso_local global i32 0, align 4
@ABRT_7B_ADDR_NOACK = common dso_local global i32 0, align 4
@I2C_NAK_7B_ADDR_NOACK = common dso_local global i32 0, align 4
@I2C_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @smu_v11_0_i2c_poll_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_i2c_poll_tx_status(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %10 = call %struct.amdgpu_device* @to_amdgpu_device(%struct.i2c_adapter* %9)
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %4, align 8
  %11 = load i32, i32* @I2C_OK, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* @jiffies, align 8
  %13 = call i64 @msecs_to_jiffies(i32 20)
  %14 = add i64 %12, %13
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @time_after(i64 %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @I2C_SW_TIMEOUT, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load i32, i32* @SMUIO, align 4
  %26 = load i32, i32* @mmCKSVII2C_IC_STATUS, align 4
  %27 = call i32 @RREG32_SOC15(i32 %25, i32 0, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CKSVII2C_IC_STATUS, align 4
  %31 = load i32, i32* @TFE, align 4
  %32 = call i32 @REG_GET_FIELD(i32 %29, i32 %30, i32 %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %15, label %34

34:                                               ; preds = %28, %20
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @I2C_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %84

40:                                               ; preds = %34
  %41 = load i32, i32* @SMUIO, align 4
  %42 = load i32, i32* @mmCKSVII2C_IC_INTR_STAT, align 4
  %43 = call i32 @RREG32_SOC15(i32 %41, i32 0, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @CKSVII2C_IC_INTR_STAT, align 4
  %46 = load i32, i32* @R_TX_ABRT, align 4
  %47 = call i32 @REG_GET_FIELD(i32 %44, i32 %45, i32 %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %82

49:                                               ; preds = %40
  %50 = load i32, i32* @SMUIO, align 4
  %51 = load i32, i32* @mmCKSVII2C_IC_TX_ABRT_SOURCE, align 4
  %52 = call i32 @RREG32_SOC15(i32 %50, i32 0, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @CKSVII2C_IC_TX_ABRT_SOURCE, align 4
  %57 = load i32, i32* @ABRT_TXDATA_NOACK, align 4
  %58 = call i32 @REG_GET_FIELD(i32 %55, i32 %56, i32 %57)
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* @I2C_NAK_TXDATA_NOACK, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %79

64:                                               ; preds = %49
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @CKSVII2C_IC_TX_ABRT_SOURCE, align 4
  %67 = load i32, i32* @ABRT_7B_ADDR_NOACK, align 4
  %68 = call i32 @REG_GET_FIELD(i32 %65, i32 %66, i32 %67)
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @I2C_NAK_7B_ADDR_NOACK, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %78

74:                                               ; preds = %64
  %75 = load i32, i32* @I2C_ABORT, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %60
  %80 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %81 = call i32 @smu_v11_0_i2c_clear_status(%struct.i2c_adapter* %80)
  br label %82

82:                                               ; preds = %79, %40
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %38
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.amdgpu_device* @to_amdgpu_device(%struct.i2c_adapter*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @smu_v11_0_i2c_clear_status(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
