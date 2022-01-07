; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_set_round.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_set_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }

@OUT_ROUND_CONTROL = common dso_local global i32 0, align 4
@OUT_ROUND_TRUNC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, i32, i32)* @set_round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_round(%struct.dce_transform* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dce_transform*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %17 [
    i32 132, label %10
    i32 133, label %11
    i32 134, label %12
    i32 135, label %13
    i32 136, label %14
    i32 130, label %15
    i32 131, label %16
  ]

10:                                               ; preds = %3
  store i32 6, i32* %7, align 4
  br label %19

11:                                               ; preds = %3
  store i32 7, i32* %7, align 4
  br label %19

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %19

13:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %19

14:                                               ; preds = %3
  store i32 2, i32* %7, align 4
  br label %19

15:                                               ; preds = %3
  store i32 3, i32* %7, align 4
  br label %19

16:                                               ; preds = %3
  store i32 4, i32* %7, align 4
  br label %19

17:                                               ; preds = %3
  store i32 4, i32* %7, align 4
  %18 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %19

19:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %23 [
    i32 128, label %21
    i32 129, label %22
  ]

21:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %25

22:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %25

23:                                               ; preds = %19
  %24 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %25

25:                                               ; preds = %23, %22, %21
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 %26, 3
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @OUT_ROUND_CONTROL, align 4
  %31 = load i32, i32* @OUT_ROUND_TRUNC_MODE, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @REG_SET(i32 %30, i32 0, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
