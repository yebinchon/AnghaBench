; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a530_lm_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a530_lm_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a5xx_gpu = type { i32 }

@a5xx_sequence_regs = common dso_local global %struct.TYPE_3__* null, align 8
@REG_A5XX_GPMU_TEMP_SENSOR_ID = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_DELTA_TEMP_THRESHOLD = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_TEMP_SENSOR_CONFIG = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_GPMU_VOLTAGE = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_BASE_LEAKAGE = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_GPMU_PWR_THRESHOLD = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_BEC_ENABLE = common dso_local global i32 0, align 4
@REG_A5XX_GDPM_CONFIG1 = common dso_local global i32 0, align 4
@AGC_MSG_STATE = common dso_local global i32 0, align 4
@AGC_MSG_COMMAND = common dso_local global i32 0, align 4
@AGC_POWER_CONFIG_PRODUCTION_ID = common dso_local global i32 0, align 4
@AGC_MSG_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@AGC_INIT_MSG_MAGIC = common dso_local global i32 0, align 4
@AGC_INIT_MSG_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a530_lm_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a530_lm_setup(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca %struct.a5xx_gpu*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %6 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %7 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %6)
  store %struct.adreno_gpu* %7, %struct.adreno_gpu** %3, align 8
  %8 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %9 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %8)
  store %struct.a5xx_gpu* %9, %struct.a5xx_gpu** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a5xx_sequence_regs, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a5xx_sequence_regs, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a5xx_sequence_regs, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpu_write(%struct.msm_gpu* %16, i32 %22, i32 %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %35 = load i32, i32* @REG_A5XX_GPMU_TEMP_SENSOR_ID, align 4
  %36 = call i32 @gpu_write(%struct.msm_gpu* %34, i32 %35, i32 393223)
  %37 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %38 = load i32, i32* @REG_A5XX_GPMU_DELTA_TEMP_THRESHOLD, align 4
  %39 = call i32 @gpu_write(%struct.msm_gpu* %37, i32 %38, i32 1)
  %40 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %41 = load i32, i32* @REG_A5XX_GPMU_TEMP_SENSOR_CONFIG, align 4
  %42 = call i32 @gpu_write(%struct.msm_gpu* %40, i32 %41, i32 1)
  %43 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %44 = load i32, i32* @REG_A5XX_GPMU_GPMU_VOLTAGE, align 4
  %45 = call i32 @gpu_write(%struct.msm_gpu* %43, i32 %44, i32 -2147483648)
  %46 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %47 = load i32, i32* @REG_A5XX_GPMU_BASE_LEAKAGE, align 4
  %48 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %49 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gpu_write(%struct.msm_gpu* %46, i32 %47, i32 %50)
  %52 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %53 = load i32, i32* @REG_A5XX_GPMU_GPMU_PWR_THRESHOLD, align 4
  %54 = call i32 @gpu_write(%struct.msm_gpu* %52, i32 %53, i32 -2147477648)
  %55 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %56 = load i32, i32* @REG_A5XX_GPMU_BEC_ENABLE, align 4
  %57 = call i32 @gpu_write(%struct.msm_gpu* %55, i32 %56, i32 268443647)
  %58 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %59 = load i32, i32* @REG_A5XX_GDPM_CONFIG1, align 4
  %60 = call i32 @gpu_write(%struct.msm_gpu* %58, i32 %59, i32 2105329)
  %61 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %62 = load i32, i32* @REG_A5XX_GPMU_BEC_ENABLE, align 4
  %63 = call i32 @gpu_write(%struct.msm_gpu* %61, i32 %62, i32 268443647)
  %64 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %65 = load i32, i32* @REG_A5XX_GDPM_CONFIG1, align 4
  %66 = call i32 @gpu_write(%struct.msm_gpu* %64, i32 %65, i32 2105329)
  %67 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %68 = load i32, i32* @AGC_MSG_STATE, align 4
  %69 = call i32 @gpu_write(%struct.msm_gpu* %67, i32 %68, i32 1)
  %70 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %71 = load i32, i32* @AGC_MSG_COMMAND, align 4
  %72 = load i32, i32* @AGC_POWER_CONFIG_PRODUCTION_ID, align 4
  %73 = call i32 @gpu_write(%struct.msm_gpu* %70, i32 %71, i32 %72)
  %74 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %75 = call i32 @AGC_MSG_PAYLOAD(i32 0)
  %76 = call i32 @gpu_write(%struct.msm_gpu* %74, i32 %75, i32 5448)
  %77 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %78 = call i32 @AGC_MSG_PAYLOAD(i32 1)
  %79 = call i32 @gpu_write(%struct.msm_gpu* %77, i32 %78, i32 1)
  %80 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %81 = call i32 @AGC_MSG_PAYLOAD(i32 2)
  %82 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %83 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %84 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @_get_mvolts(%struct.msm_gpu* %82, i32 %85)
  %87 = call i32 @gpu_write(%struct.msm_gpu* %80, i32 %81, i32 %86)
  %88 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %89 = call i32 @AGC_MSG_PAYLOAD(i32 3)
  %90 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %91 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 1000000
  %94 = call i32 @gpu_write(%struct.msm_gpu* %88, i32 %89, i32 %93)
  %95 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %96 = load i32, i32* @AGC_MSG_PAYLOAD_SIZE, align 4
  %97 = call i32 @gpu_write(%struct.msm_gpu* %95, i32 %96, i32 16)
  %98 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %99 = load i32, i32* @AGC_INIT_MSG_MAGIC, align 4
  %100 = load i32, i32* @AGC_INIT_MSG_VALUE, align 4
  %101 = call i32 @gpu_write(%struct.msm_gpu* %98, i32 %99, i32 %100)
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @AGC_MSG_PAYLOAD(i32) #1

declare dso_local i32 @_get_mvolts(%struct.msm_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
