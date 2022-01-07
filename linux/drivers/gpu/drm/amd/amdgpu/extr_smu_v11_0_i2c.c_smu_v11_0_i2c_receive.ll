; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.amdgpu_device = type { i32 }

@I2C_OK = common dso_local global i32 0, align 4
@CKSVII2C_IC_DATA_CMD = common dso_local global i32 0, align 4
@RESTART = common dso_local global i32 0, align 4
@I2C_RESTART = common dso_local global i32 0, align 4
@DAT = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@I2C_NO_STOP = common dso_local global i32 0, align 4
@SMUIO = common dso_local global i32 0, align 4
@mmCKSVII2C_IC_DATA_CMD = common dso_local global i32 0, align 4
@I2C_SW_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"TIMEOUT ERROR !!!\00", align 1
@I2C_NAK_7B_ADDR_NOACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Received I2C_NAK_7B_ADDR_NOACK !!!\00", align 1
@I2C_NAK_TXDATA_NOACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Received I2C_NAK_TXDATA_NOACK !!!\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"I2C_Receive(), address = %x, bytes = %d, data :\00", align 1
@drm_debug = common dso_local global i32 0, align 4
@DRM_UT_DRIVER = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"data: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i32*, i32, i32)* @smu_v11_0_i2c_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_i2c_receive(%struct.i2c_adapter* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %16 = call %struct.amdgpu_device* @to_amdgpu_device(%struct.i2c_adapter* %15)
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %11, align 8
  %17 = load i32, i32* @I2C_OK, align 4
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @smu_v11_0_i2c_set_address(%struct.i2c_adapter* %18, i32 %19)
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %22 = call i32 @smu_v11_0_i2c_enable(%struct.i2c_adapter* %21, i32 1)
  br label %23

23:                                               ; preds = %96, %5
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %112

26:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %28 = call i32 @smu_v11_0_i2c_clear_status(%struct.i2c_adapter* %27)
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @CKSVII2C_IC_DATA_CMD, align 4
  %34 = load i32, i32* @RESTART, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @I2C_RESTART, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = call i32 @REG_SET_FIELD(i32 %32, i32 %33, i32 %34, i32 %40)
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %31, %26
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @CKSVII2C_IC_DATA_CMD, align 4
  %45 = load i32, i32* @DAT, align 4
  %46 = call i32 @REG_SET_FIELD(i32 %43, i32 %44, i32 %45, i32 0)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @CKSVII2C_IC_DATA_CMD, align 4
  %49 = load i32, i32* @CMD, align 4
  %50 = call i32 @REG_SET_FIELD(i32 %47, i32 %48, i32 %49, i32 1)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %64

53:                                               ; preds = %42
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @CKSVII2C_IC_DATA_CMD, align 4
  %56 = load i32, i32* @STOP, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @I2C_NO_STOP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 0, i32 1
  %63 = call i32 @REG_SET_FIELD(i32 %54, i32 %55, i32 %56, i32 %62)
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %53, %42
  %65 = load i32, i32* @SMUIO, align 4
  %66 = load i32, i32* @mmCKSVII2C_IC_DATA_CMD, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @WREG32_SOC15(i32 %65, i32 0, i32 %66, i32 %67)
  %69 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %70 = call i32 @smu_v11_0_i2c_poll_rx_status(%struct.i2c_adapter* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @I2C_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %64
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @I2C_SW_TIMEOUT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @I2C_NAK_7B_ADDR_NOACK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @I2C_NAK_TXDATA_NOACK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %88
  br label %112

96:                                               ; preds = %64
  %97 = load i32, i32* @SMUIO, align 4
  %98 = load i32, i32* @mmCKSVII2C_IC_DATA_CMD, align 4
  %99 = call i32 @RREG32_SOC15(i32 %97, i32 0, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @CKSVII2C_IC_DATA_CMD, align 4
  %102 = load i32, i32* @DAT, align 4
  %103 = call i32 @REG_GET_FIELD(i32 %100, i32 %101, i32 %102)
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %9, align 4
  br label %23

112:                                              ; preds = %95, %23
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* @drm_debug, align 4
  %117 = load i32, i32* @DRM_UT_DRIVER, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load i32, i32* @KERN_INFO, align 4
  %122 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @print_hex_dump(i32 %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 16, i32 1, i32* %123, i32 %124, i32 0)
  br label %126

126:                                              ; preds = %120, %112
  %127 = load i32, i32* %13, align 4
  ret i32 %127
}

declare dso_local %struct.amdgpu_device* @to_amdgpu_device(%struct.i2c_adapter*) #1

declare dso_local i32 @smu_v11_0_i2c_set_address(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @smu_v11_0_i2c_enable(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @smu_v11_0_i2c_clear_status(%struct.i2c_adapter*) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @smu_v11_0_i2c_poll_rx_status(%struct.i2c_adapter*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
