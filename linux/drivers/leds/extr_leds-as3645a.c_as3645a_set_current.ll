; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_set_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_set_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3645a = type { i32, i32 }

@AS_CURRENT_FLASH_CURRENT_SHIFT = common dso_local global i32 0, align 4
@AS_CURRENT_ASSIST_LIGHT_SHIFT = common dso_local global i32 0, align 4
@AS_CURRENT_LED_DET_ON = common dso_local global i32 0, align 4
@AS_CURRENT_SET_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3645a*)* @as3645a_set_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3645a_set_current(%struct.as3645a* %0) #0 {
  %2 = alloca %struct.as3645a*, align 8
  %3 = alloca i32, align 4
  store %struct.as3645a* %0, %struct.as3645a** %2, align 8
  %4 = load %struct.as3645a*, %struct.as3645a** %2, align 8
  %5 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AS_CURRENT_FLASH_CURRENT_SHIFT, align 4
  %8 = shl i32 %6, %7
  %9 = load %struct.as3645a*, %struct.as3645a** %2, align 8
  %10 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AS_CURRENT_ASSIST_LIGHT_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %8, %13
  %15 = load i32, i32* @AS_CURRENT_LED_DET_ON, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %3, align 4
  %17 = load %struct.as3645a*, %struct.as3645a** %2, align 8
  %18 = load i32, i32* @AS_CURRENT_SET_REG, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @as3645a_write(%struct.as3645a* %17, i32 %18, i32 %19)
  ret i32 %20
}

declare dso_local i32 @as3645a_write(%struct.as3645a*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
