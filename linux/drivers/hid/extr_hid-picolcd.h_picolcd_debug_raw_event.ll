; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd.h_picolcd_debug_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd.h_picolcd_debug_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { i32 }
%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.picolcd_data*, %struct.hid_device*, %struct.hid_report*, i32*, i32)* @picolcd_debug_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @picolcd_debug_raw_event(%struct.picolcd_data* %0, %struct.hid_device* %1, %struct.hid_report* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.picolcd_data*, align 8
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.hid_report*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.picolcd_data* %0, %struct.picolcd_data** %6, align 8
  store %struct.hid_device* %1, %struct.hid_device** %7, align 8
  store %struct.hid_report* %2, %struct.hid_report** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
