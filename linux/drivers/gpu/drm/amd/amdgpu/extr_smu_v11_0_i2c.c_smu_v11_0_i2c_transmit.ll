; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"I2C_Transmit(), address = %x, bytes = %d , data: \00", align 1
@drm_debug = common dso_local global i32 0, align 4
@DRM_UT_DRIVER = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"data: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SMUIO = common dso_local global i32 0, align 4
@mmCKSVII2C_IC_STATUS = common dso_local global i32 0, align 4
@CKSVII2C_IC_STATUS = common dso_local global i32 0, align 4
@TFNF = common dso_local global i32 0, align 4
@CKSVII2C_IC_DATA_CMD = common dso_local global i32 0, align 4
@RESTART = common dso_local global i32 0, align 4
@I2C_RESTART = common dso_local global i32 0, align 4
@DAT = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@I2C_NO_STOP = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@mmCKSVII2C_IC_DATA_CMD = common dso_local global i32 0, align 4
@I2C_SW_TIMEOUT = common dso_local global i32 0, align 4
@I2C_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"TIMEOUT ERROR !!!\00", align 1
@I2C_NAK_7B_ADDR_NOACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Received I2C_NAK_7B_ADDR_NOACK !!!\00", align 1
@I2C_NAK_TXDATA_NOACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Received I2C_NAK_TXDATA_NOACK !!!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i32*, i32, i32)* @smu_v11_0_i2c_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_i2c_transmit(%struct.i2c_adapter* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %17 = call %struct.amdgpu_device* @to_amdgpu_device(%struct.i2c_adapter* %16)
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* @drm_debug, align 4
  %22 = load i32, i32* @DRM_UT_DRIVER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i32, i32* @KERN_INFO, align 4
  %27 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @print_hex_dump(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 16, i32 1, i32* %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %25, %5
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @smu_v11_0_i2c_set_address(%struct.i2c_adapter* %32, i32 %33)
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %36 = call i32 @smu_v11_0_i2c_enable(%struct.i2c_adapter* %35, i32 1)
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %38 = call i32 @smu_v11_0_i2c_clear_status(%struct.i2c_adapter* %37)
  %39 = load i64, i64* @jiffies, align 8
  %40 = call i64 @msecs_to_jiffies(i32 20)
  %41 = add i64 %39, %40
  store i64 %41, i64* %15, align 8
  br label %42

42:                                               ; preds = %129, %31
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %130

45:                                               ; preds = %42
  %46 = load i32, i32* @SMUIO, align 4
  %47 = load i32, i32* @mmCKSVII2C_IC_STATUS, align 4
  %48 = call i32 @RREG32_SOC15(i32 %46, i32 0, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @CKSVII2C_IC_STATUS, align 4
  %51 = load i32, i32* @TFNF, align 4
  %52 = call i64 @REG_GET_FIELD(i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %120

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %117, %54
  store i32 0, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @CKSVII2C_IC_DATA_CMD, align 4
  %61 = load i32, i32* @RESTART, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @I2C_RESTART, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  %68 = call i32 @REG_SET_FIELD(i32 %59, i32 %60, i32 %61, i32 %67)
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %58, %55
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @CKSVII2C_IC_DATA_CMD, align 4
  %72 = load i32, i32* @DAT, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @REG_SET_FIELD(i32 %70, i32 %71, i32 %72, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %92

81:                                               ; preds = %69
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @CKSVII2C_IC_DATA_CMD, align 4
  %84 = load i32, i32* @STOP, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @I2C_NO_STOP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 0, i32 1
  %91 = call i32 @REG_SET_FIELD(i32 %82, i32 %83, i32 %84, i32 %90)
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %81, %69
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @CKSVII2C_IC_DATA_CMD, align 4
  %95 = load i32, i32* @CMD, align 4
  %96 = call i32 @REG_SET_FIELD(i32 %93, i32 %94, i32 %95, i32 0)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* @SMUIO, align 4
  %98 = load i32, i32* @mmCKSVII2C_IC_DATA_CMD, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @WREG32_SOC15(i32 %97, i32 0, i32 %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* @SMUIO, align 4
  %106 = load i32, i32* @mmCKSVII2C_IC_STATUS, align 4
  %107 = call i32 @RREG32_SOC15(i32 %105, i32 0, i32 %106)
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %92
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @CKSVII2C_IC_STATUS, align 4
  %114 = load i32, i32* @TFNF, align 4
  %115 = call i64 @REG_GET_FIELD(i32 %112, i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %111, %108
  %118 = phi i1 [ false, %108 ], [ %116, %111 ]
  br i1 %118, label %55, label %119

119:                                              ; preds = %117
  br label %120

120:                                              ; preds = %119, %45
  %121 = load i64, i64* @jiffies, align 8
  %122 = load i64, i64* %15, align 8
  %123 = call i64 @time_after(i64 %121, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @I2C_SW_TIMEOUT, align 4
  %127 = load i32, i32* %14, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %14, align 4
  br label %133

129:                                              ; preds = %120
  br label %42

130:                                              ; preds = %42
  %131 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %132 = call i32 @smu_v11_0_i2c_poll_tx_status(%struct.i2c_adapter* %131)
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %130, %125
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @I2C_OK, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %159

137:                                              ; preds = %133
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @I2C_SW_TIMEOUT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %137
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @I2C_NAK_7B_ADDR_NOACK, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %144
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @I2C_NAK_TXDATA_NOACK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %151
  br label %159

159:                                              ; preds = %158, %133
  %160 = load i32, i32* %14, align 4
  ret i32 %160
}

declare dso_local %struct.amdgpu_device* @to_amdgpu_device(%struct.i2c_adapter*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @smu_v11_0_i2c_set_address(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @smu_v11_0_i2c_enable(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @smu_v11_0_i2c_clear_status(%struct.i2c_adapter*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @smu_v11_0_i2c_poll_tx_status(%struct.i2c_adapter*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
