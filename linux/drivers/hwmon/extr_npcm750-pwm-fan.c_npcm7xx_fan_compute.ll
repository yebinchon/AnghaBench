; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_fan_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_fan_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm7xx_pwm_fan_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@NPCM7XX_FAN_CMPA = common dso_local global i64 0, align 8
@FAN_INIT = common dso_local global i64 0, align 8
@FAN_PREPARE_TO_GET_FIRST_CAPTURE = common dso_local global i64 0, align 8
@FAN_ENOUGH_SAMPLE = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TCNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.npcm7xx_pwm_fan_data*, i64, i64, i64, i64, i64, i64)* @npcm7xx_fan_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm7xx_fan_compute(%struct.npcm7xx_pwm_fan_data* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.npcm7xx_pwm_fan_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.npcm7xx_pwm_fan_data* %0, %struct.npcm7xx_pwm_fan_data** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @NPCM7XX_FAN_CMPA, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %7
  %22 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %23 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @NPCM7XX_FAN_REG_TCRA(i32 %24, i64 %25)
  %27 = call i64 @ioread16(i32 %26)
  store i64 %27, i64* %17, align 8
  br label %35

28:                                               ; preds = %7
  %29 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %30 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @NPCM7XX_FAN_REG_TCRB(i32 %31, i64 %32)
  %34 = call i64 @ioread16(i32 %33)
  store i64 %34, i64* %17, align 8
  br label %35

35:                                               ; preds = %28, %21
  %36 = load i64, i64* %14, align 8
  %37 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %38 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @NPCM7XX_FAN_REG_TICLR(i32 %39, i64 %40)
  %42 = call i32 @iowrite8(i64 %36, i32 %41)
  %43 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %44 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FAN_INIT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %35
  %53 = load i64, i64* @FAN_PREPARE_TO_GET_FIRST_CAPTURE, align 8
  %54 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %55 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 %53, i64* %59, align 8
  %60 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %61 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  br label %180

66:                                               ; preds = %35
  %67 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %68 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @FAN_ENOUGH_SAMPLE, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %66
  %78 = load i64, i64* @NPCM7XX_FAN_TCNT, align 8
  %79 = load i64, i64* %17, align 8
  %80 = sub nsw i64 %78, %79
  %81 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %82 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %80
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  %91 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %92 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  br label %179

99:                                               ; preds = %66
  %100 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %101 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @FAN_ENOUGH_SAMPLE, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp eq i64 %106, %108
  br i1 %109, label %110, label %146

110:                                              ; preds = %99
  %111 = load i64, i64* @NPCM7XX_FAN_TCNT, align 8
  %112 = load i64, i64* %17, align 8
  %113 = sub nsw i64 %111, %112
  %114 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %115 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %113
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 8
  %124 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %125 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @FAN_ENOUGH_SAMPLE, align 4
  %132 = sdiv i32 %130, %131
  %133 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %134 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i64, i64* %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  store i32 %132, i32* %138, align 4
  %139 = load i64, i64* @FAN_INIT, align 8
  %140 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %141 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i64, i64* %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store i64 %139, i64* %145, align 8
  br label %146

146:                                              ; preds = %110, %99
  %147 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %148 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = call i32 @NPCM7XX_FAN_REG_TIEN(i32 %149, i64 %150)
  %152 = call i64 @ioread8(i32 %151)
  store i64 %152, i64* %15, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %12, align 8
  %155 = xor i64 %154, -1
  %156 = and i64 %153, %155
  %157 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %158 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i64, i64* %9, align 8
  %161 = call i32 @NPCM7XX_FAN_REG_TIEN(i32 %159, i64 %160)
  %162 = call i32 @iowrite8(i64 %156, i32 %161)
  %163 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %164 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i64, i64* %9, align 8
  %167 = call i32 @NPCM7XX_FAN_REG_TCKC(i32 %165, i64 %166)
  %168 = call i64 @ioread8(i32 %167)
  store i64 %168, i64* %16, align 8
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* %13, align 8
  %171 = xor i64 %170, -1
  %172 = and i64 %169, %171
  %173 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %8, align 8
  %174 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i64, i64* %9, align 8
  %177 = call i32 @NPCM7XX_FAN_REG_TCKC(i32 %175, i64 %176)
  %178 = call i32 @iowrite8(i64 %172, i32 %177)
  br label %179

179:                                              ; preds = %146, %77
  br label %180

180:                                              ; preds = %179, %52
  ret void
}

declare dso_local i64 @ioread16(i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCRA(i32, i64) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCRB(i32, i64) #1

declare dso_local i32 @iowrite8(i64, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TICLR(i32, i64) #1

declare dso_local i64 @ioread8(i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TIEN(i32, i64) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCKC(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
