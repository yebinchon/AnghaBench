; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/dce80/extr_hw_translate_dce80.c_index_from_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/dce80/extr_hw_translate_dce80.c_index_from_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_ENUM_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @index_from_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_from_vector(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %17, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %23

12:                                               ; preds = %6
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %6, label %20

20:                                               ; preds = %17
  %21 = call i32 (...) @BREAK_TO_DEBUGGER()
  %22 = load i32, i32* @GPIO_ENUM_UNKNOWN, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %10
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
