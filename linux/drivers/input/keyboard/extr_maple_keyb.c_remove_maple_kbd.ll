; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_maple_keyb.c_remove_maple_kbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_maple_keyb.c_remove_maple_kbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.maple_device = type { i32 }
%struct.dc_kbd = type { i32 }

@maple_keyb_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @remove_maple_kbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_maple_kbd(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.maple_device*, align 8
  %4 = alloca %struct.dc_kbd*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.maple_device* @to_maple_dev(%struct.device* %5)
  store %struct.maple_device* %6, %struct.maple_device** %3, align 8
  %7 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %8 = call %struct.dc_kbd* @maple_get_drvdata(%struct.maple_device* %7)
  store %struct.dc_kbd* %8, %struct.dc_kbd** %4, align 8
  %9 = call i32 @mutex_lock(i32* @maple_keyb_mutex)
  %10 = load %struct.dc_kbd*, %struct.dc_kbd** %4, align 8
  %11 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @input_unregister_device(i32 %12)
  %14 = load %struct.dc_kbd*, %struct.dc_kbd** %4, align 8
  %15 = call i32 @kfree(%struct.dc_kbd* %14)
  %16 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %17 = call i32 @maple_set_drvdata(%struct.maple_device* %16, i32* null)
  %18 = call i32 @mutex_unlock(i32* @maple_keyb_mutex)
  ret i32 0
}

declare dso_local %struct.maple_device* @to_maple_dev(%struct.device*) #1

declare dso_local %struct.dc_kbd* @maple_get_drvdata(%struct.maple_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.dc_kbd*) #1

declare dso_local i32 @maple_set_drvdata(%struct.maple_device*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
