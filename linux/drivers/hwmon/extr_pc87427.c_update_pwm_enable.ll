; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_update_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_update_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pc87427_data = type { i32*, i32* }

@LD_FAN = common dso_local global i64 0, align 8
@PWM_ENABLE_MODE_MASK = common dso_local global i32 0, align 4
@PC87427_REG_PWM_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pc87427_data*, i32, i32)* @update_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pwm_enable(%struct.pc87427_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pc87427_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pc87427_data* %0, %struct.pc87427_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %9 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @LD_FAN, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @PWM_ENABLE_MODE_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %17 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %15
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %26 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %24
  store i32 %32, i32* %30, align 4
  %33 = load %struct.pc87427_data*, %struct.pc87427_data** %4, align 8
  %34 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @PC87427_REG_PWM_ENABLE, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 %39, i64 %43)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
