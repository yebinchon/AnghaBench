; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_default_getkeycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_default_getkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32 }
%struct.input_keymap_entry = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INPUT_KEYMAP_BY_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_keymap_entry*)* @input_default_getkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_default_getkeycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.input_keymap_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %5, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %9 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %17 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @INPUT_KEYMAP_BY_INDEX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %24 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  br label %34

26:                                               ; preds = %15
  %27 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %28 = call i32 @input_scancode_to_scalar(%struct.input_keymap_entry* %27, i32* %6)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %58

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp uge i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %34
  %44 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @input_fetch_keycode(%struct.input_dev* %44, i32 %45)
  %47 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %48 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %51 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %53 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %52, i32 0, i32 2
  store i32 4, i32* %53, align 4
  %54 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %55 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i32 %56, i32* %6, i32 4)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %43, %40, %31, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @input_scancode_to_scalar(%struct.input_keymap_entry*, i32*) #1

declare dso_local i32 @input_fetch_keycode(%struct.input_dev*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
