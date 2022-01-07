; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_pre_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_pre_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.radeon_i2c_chan = type { i32, %struct.radeon_i2c_bus_rec, %struct.TYPE_2__* }
%struct.radeon_i2c_bus_rec = type { i64, i64, i32, i64, i32, i64, i32, i64, i32, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i32 }

@CHIP_R200 = common dso_local global i64 0, align 8
@CHIP_RV350 = common dso_local global i64 0, align 8
@RADEON_GPIO_MONID = common dso_local global i64 0, align 8
@CHIP_R300 = common dso_local global i64 0, align 8
@CHIP_R350 = common dso_local global i64 0, align 8
@RADEON_GPIO_DVI_DDC = common dso_local global i64 0, align 8
@RADEON_GPIO_CRT2_DDC = common dso_local global i64 0, align 8
@RADEON_DVI_I2C_CNTL_0 = common dso_local global i64 0, align 8
@RADEON_I2C_SOFT_RST = common dso_local global i32 0, align 4
@R200_SEL_DDC1 = common dso_local global i32 0, align 4
@R200_SEL_DDC3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @pre_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pre_xfer(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.radeon_i2c_chan*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_i2c_bus_rec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %9 = call %struct.radeon_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter* %8)
  store %struct.radeon_i2c_chan* %9, %struct.radeon_i2c_chan** %3, align 8
  %10 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %4, align 8
  %15 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %15, i32 0, i32 1
  store %struct.radeon_i2c_bus_rec* %16, %struct.radeon_i2c_bus_rec** %5, align 8
  %17 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %20, i32 0, i32 12
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %1
  %25 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHIP_R200, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %24
  %31 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %32 = call i32 @ASIC_IS_AVIVO(%struct.radeon_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %86, label %34

34:                                               ; preds = %30
  %35 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHIP_RV350, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @RADEON_GPIO_MONID, align 8
  store i64 %41, i64* %7, align 8
  br label %59

42:                                               ; preds = %34
  %43 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CHIP_R300, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CHIP_R350, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48, %42
  %55 = load i64, i64* @RADEON_GPIO_DVI_DDC, align 8
  store i64 %55, i64* %7, align 8
  br label %58

56:                                               ; preds = %48
  %57 = load i64, i64* @RADEON_GPIO_CRT2_DDC, align 8
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %58, %40
  %60 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load i64, i64* @RADEON_DVI_I2C_CNTL_0, align 8
  %70 = load i32, i32* @RADEON_I2C_SOFT_RST, align 4
  %71 = load i32, i32* @R200_SEL_DDC1, align 4
  %72 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %71)
  %73 = or i32 %70, %72
  %74 = call i32 @WREG32(i64 %69, i32 %73)
  br label %82

75:                                               ; preds = %59
  %76 = load i64, i64* @RADEON_DVI_I2C_CNTL_0, align 8
  %77 = load i32, i32* @RADEON_I2C_SOFT_RST, align 4
  %78 = load i32, i32* @R200_SEL_DDC3, align 4
  %79 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %78)
  %80 = or i32 %77, %79
  %81 = call i32 @WREG32(i64 %76, i32 %80)
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  br label %86

86:                                               ; preds = %82, %30, %24
  br label %87

87:                                               ; preds = %86, %1
  %88 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %89 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %93 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %92, i32 0, i32 12
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %98 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @RREG32(i64 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, -65537
  store i32 %102, i32* %6, align 4
  %103 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %104 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @WREG32(i64 %105, i32 %106)
  br label %108

108:                                              ; preds = %96, %91, %87
  %109 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %110 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @RREG32(i64 %111)
  %113 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %114 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = xor i32 %115, -1
  %117 = and i32 %112, %116
  store i32 %117, i32* %6, align 4
  %118 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %119 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @WREG32(i64 %120, i32 %121)
  %123 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %124 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @RREG32(i64 %125)
  %127 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %128 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = xor i32 %129, -1
  %131 = and i32 %126, %130
  store i32 %131, i32* %6, align 4
  %132 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %133 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @WREG32(i64 %134, i32 %135)
  %137 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %138 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @RREG32(i64 %139)
  %141 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %142 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = xor i32 %143, -1
  %145 = and i32 %140, %144
  store i32 %145, i32* %6, align 4
  %146 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %147 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @WREG32(i64 %148, i32 %149)
  %151 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %152 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @RREG32(i64 %153)
  %155 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %156 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 8
  %158 = xor i32 %157, -1
  %159 = and i32 %154, %158
  store i32 %159, i32* %6, align 4
  %160 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %161 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %160, i32 0, i32 7
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @WREG32(i64 %162, i32 %163)
  %165 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %166 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @RREG32(i64 %167)
  %169 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %170 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %168, %171
  store i32 %172, i32* %6, align 4
  %173 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %174 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @WREG32(i64 %175, i32 %176)
  %178 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %179 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @RREG32(i64 %180)
  store i32 %181, i32* %6, align 4
  %182 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %183 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %182, i32 0, i32 10
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @RREG32(i64 %184)
  %186 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %187 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %186, i32 0, i32 11
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %185, %188
  store i32 %189, i32* %6, align 4
  %190 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %191 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %190, i32 0, i32 10
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @WREG32(i64 %192, i32 %193)
  %195 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %196 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %195, i32 0, i32 10
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @RREG32(i64 %197)
  store i32 %198, i32* %6, align 4
  ret i32 0
}

declare dso_local %struct.radeon_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @R200_DVI_I2C_PIN_SEL(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
