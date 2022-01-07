; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl319x.c_is31fl319x_microamp_to_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl319x.c_is31fl319x_microamp_to_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@IS31FL319X_CURRENT_STEP = common dso_local global i32 0, align 4
@IS31FL319X_CONFIG2_CS_STEP_REF = common dso_local global i32 0, align 4
@IS31FL319X_CONFIG2_CS_MASK = common dso_local global i32 0, align 4
@IS31FL319X_CONFIG2_CS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @is31fl319x_microamp_to_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is31fl319x_microamp_to_cs(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @IS31FL319X_CURRENT_STEP, align 4
  %8 = sdiv i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @IS31FL319X_CONFIG2_CS_STEP_REF, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %9, %10
  %12 = load i32, i32* @IS31FL319X_CONFIG2_CS_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @IS31FL319X_CONFIG2_CS_SHIFT, align 4
  %15 = shl i32 %13, %14
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
