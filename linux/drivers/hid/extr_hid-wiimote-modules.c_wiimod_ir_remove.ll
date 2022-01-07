; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_ir_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_ir_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i32 }
%struct.wiimote_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimod_ops*, %struct.wiimote_data*)* @wiimod_ir_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimod_ir_remove(%struct.wiimod_ops* %0, %struct.wiimote_data* %1) #0 {
  %3 = alloca %struct.wiimod_ops*, align 8
  %4 = alloca %struct.wiimote_data*, align 8
  store %struct.wiimod_ops* %0, %struct.wiimod_ops** %3, align 8
  store %struct.wiimote_data* %1, %struct.wiimote_data** %4, align 8
  %5 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %6 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %17

10:                                               ; preds = %2
  %11 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %12 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @input_unregister_device(i32* %13)
  %15 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %16 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @input_unregister_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
