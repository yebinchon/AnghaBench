; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_s6sy761.c_s6sy761_handle_coordinates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_s6sy761.c_s6sy761_handle_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6sy761_data = type { i32 }

@S6SY761_MASK_TID = common dso_local global i32 0, align 4
@S6SY761_MASK_TOUCH_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6sy761_data*, i32*)* @s6sy761_handle_coordinates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6sy761_handle_coordinates(%struct.s6sy761_data* %0, i32* %1) #0 {
  %3 = alloca %struct.s6sy761_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s6sy761_data* %0, %struct.s6sy761_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @S6SY761_MASK_TID, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %44

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @S6SY761_MASK_TID, align 4
  %23 = and i32 %21, %22
  %24 = ashr i32 %23, 2
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @S6SY761_MASK_TOUCH_STATE, align 4
  %30 = and i32 %28, %29
  %31 = ashr i32 %30, 6
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %44 [
    i32 130, label %33
    i32 128, label %34
    i32 129, label %39
    i32 131, label %39
  ]

33:                                               ; preds = %18
  br label %44

34:                                               ; preds = %18
  %35 = load %struct.s6sy761_data*, %struct.s6sy761_data** %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @s6sy761_report_release(%struct.s6sy761_data* %35, i32* %36, i32 %37)
  br label %44

39:                                               ; preds = %18, %18
  %40 = load %struct.s6sy761_data*, %struct.s6sy761_data** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @s6sy761_report_coordinates(%struct.s6sy761_data* %40, i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %17, %18, %39, %34, %33
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @s6sy761_report_release(%struct.s6sy761_data*, i32*, i32) #1

declare dso_local i32 @s6sy761_report_coordinates(%struct.s6sy761_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
