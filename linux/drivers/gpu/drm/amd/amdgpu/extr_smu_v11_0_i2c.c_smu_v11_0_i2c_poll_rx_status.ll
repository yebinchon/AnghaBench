; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_poll_rx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_poll_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.amdgpu_device = type { i32 }

@I2C_OK = common dso_local global i32 0, align 4
@SMUIO = common dso_local global i32 0, align 4
@mmCKSVII2C_IC_TX_ABRT_SOURCE = common dso_local global i32 0, align 4
@CKSVII2C_IC_TX_ABRT_SOURCE = common dso_local global i32 0, align 4
@ABRT_7B_ADDR_NOACK = common dso_local global i32 0, align 4
@I2C_NAK_7B_ADDR_NOACK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@I2C_SW_TIMEOUT = common dso_local global i32 0, align 4
@mmCKSVII2C_IC_STATUS = common dso_local global i32 0, align 4
@CKSVII2C_IC_STATUS = common dso_local global i32 0, align 4
@RFNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @smu_v11_0_i2c_poll_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_i2c_poll_rx_status(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %9 = call %struct.amdgpu_device* @to_amdgpu_device(%struct.i2c_adapter* %8)
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %3, align 8
  %10 = load i32, i32* @I2C_OK, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @SMUIO, align 4
  %12 = load i32, i32* @mmCKSVII2C_IC_TX_ABRT_SOURCE, align 4
  %13 = call i32 @RREG32_SOC15(i32 %11, i32 0, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @CKSVII2C_IC_TX_ABRT_SOURCE, align 4
  %16 = load i32, i32* @ABRT_7B_ADDR_NOACK, align 4
  %17 = call i32 @REG_GET_FIELD(i32 %14, i32 %15, i32 %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @I2C_NAK_7B_ADDR_NOACK, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %24 = call i32 @smu_v11_0_i2c_clear_status(%struct.i2c_adapter* %23)
  br label %49

25:                                               ; preds = %1
  %26 = load i64, i64* @jiffies, align 8
  %27 = call i64 @msecs_to_jiffies(i32 20)
  %28 = add i64 %26, %27
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %42, %25
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @time_after(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @I2C_SW_TIMEOUT, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load i32, i32* @SMUIO, align 4
  %40 = load i32, i32* @mmCKSVII2C_IC_STATUS, align 4
  %41 = call i32 @RREG32_SOC15(i32 %39, i32 0, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CKSVII2C_IC_STATUS, align 4
  %45 = load i32, i32* @RFNE, align 4
  %46 = call i32 @REG_GET_FIELD(i32 %43, i32 %44, i32 %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %29, label %48

48:                                               ; preds = %42, %34
  br label %49

49:                                               ; preds = %48, %19
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.amdgpu_device* @to_amdgpu_device(%struct.i2c_adapter*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @smu_v11_0_i2c_clear_status(%struct.i2c_adapter*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
