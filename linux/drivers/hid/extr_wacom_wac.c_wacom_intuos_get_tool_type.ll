; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_get_tool_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_get_tool_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTN_TOOL_PENCIL = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOOL_BRUSH = common dso_local global i32 0, align 4
@BTN_TOOL_MOUSE = common dso_local global i32 0, align 4
@BTN_TOOL_LENS = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_AIRBRUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wacom_intuos_get_tool_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_intuos_get_tool_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %19 [
    i32 2066, label %5
    i32 2049, label %5
    i32 75778, label %5
    i32 18, label %5
    i32 2082, label %7
    i32 2114, label %7
    i32 2130, label %7
    i32 2083, label %7
    i32 2067, label %7
    i32 2181, label %7
    i32 2050, label %7
    i32 2052, label %7
    i32 2274, label %7
    i32 34, label %7
    i32 67588, label %7
    i32 67650, label %7
    i32 83970, label %7
    i32 92162, label %7
    i32 100354, label %7
    i32 67586, label %7
    i32 2098, label %9
    i32 50, label %9
    i32 7, label %11
    i32 156, label %11
    i32 148, label %11
    i32 23, label %11
    i32 2054, label %11
    i32 150, label %13
    i32 151, label %13
    i32 6, label %13
    i32 2090, label %15
    i32 2122, label %15
    i32 2138, label %15
    i32 2330, label %15
    i32 3354, label %15
    i32 250, label %15
    i32 2091, label %15
    i32 2075, label %15
    i32 2331, label %15
    i32 2060, label %15
    i32 2058, label %15
    i32 2314, label %15
    i32 83978, label %15
    i32 67850, label %15
    i32 67596, label %15
    i32 67658, label %15
    i32 92170, label %15
    i32 100362, label %15
    i32 67594, label %15
    i32 3346, label %17
    i32 2322, label %17
    i32 274, label %17
    i32 2323, label %17
    i32 2306, label %17
    i32 67842, label %17
  ]

5:                                                ; preds = %1, %1, %1, %1
  %6 = load i32, i32* @BTN_TOOL_PENCIL, align 4
  store i32 %6, i32* %3, align 4
  br label %21

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %8 = load i32, i32* @BTN_TOOL_PEN, align 4
  store i32 %8, i32* %3, align 4
  br label %21

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @BTN_TOOL_BRUSH, align 4
  store i32 %10, i32* %3, align 4
  br label %21

11:                                               ; preds = %1, %1, %1, %1, %1
  %12 = load i32, i32* @BTN_TOOL_MOUSE, align 4
  store i32 %12, i32* %3, align 4
  br label %21

13:                                               ; preds = %1, %1, %1
  %14 = load i32, i32* @BTN_TOOL_LENS, align 4
  store i32 %14, i32* %3, align 4
  br label %21

15:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %16 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %1, %1, %1, %1, %1, %1
  %18 = load i32, i32* @BTN_TOOL_AIRBRUSH, align 4
  store i32 %18, i32* %3, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @BTN_TOOL_PEN, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %17, %15, %13, %11, %9, %7, %5
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
