; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_get_hpd_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_get_hpd_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_get_hpd_state(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link*, align 8
  %3 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %2, align 8
  %4 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %5 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @dal_gpio_lock_pin(i32 %6)
  %8 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %9 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dal_gpio_get_value(i32 %10, i32* %3)
  %12 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %13 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dal_gpio_unlock_pin(i32 %14)
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @dal_gpio_lock_pin(i32) #1

declare dso_local i32 @dal_gpio_get_value(i32, i32*) #1

declare dso_local i32 @dal_gpio_unlock_pin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
