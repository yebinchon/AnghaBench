; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_match_scancode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_match_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_usage*, i32, i32)* @match_scancode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_scancode(%struct.hid_usage* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hid_usage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hid_usage* %0, %struct.hid_usage** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.hid_usage*, %struct.hid_usage** %4, align 8
  %8 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HID_USAGE_PAGE, align 4
  %11 = load i32, i32* @HID_USAGE, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
