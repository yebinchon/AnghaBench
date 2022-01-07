; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_lcd.c_picolcd_exit_lcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_lcd.c_picolcd_exit_lcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { %struct.lcd_device* }
%struct.lcd_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @picolcd_exit_lcd(%struct.picolcd_data* %0) #0 {
  %2 = alloca %struct.picolcd_data*, align 8
  %3 = alloca %struct.lcd_device*, align 8
  store %struct.picolcd_data* %0, %struct.picolcd_data** %2, align 8
  %4 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %5 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %4, i32 0, i32 0
  %6 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  store %struct.lcd_device* %6, %struct.lcd_device** %3, align 8
  %7 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %8 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %7, i32 0, i32 0
  store %struct.lcd_device* null, %struct.lcd_device** %8, align 8
  %9 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %10 = call i32 @lcd_device_unregister(%struct.lcd_device* %9)
  ret void
}

declare dso_local i32 @lcd_device_unregister(%struct.lcd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
