; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_setkeycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_setkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i64 }
%struct.input_keymap_entry = type { i32 }
%struct.key_entry = type { i64, i32 }

@KE_KEY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)* @sparse_keymap_setkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparse_keymap_setkeycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_keymap_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.key_entry*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %10 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %3
  %14 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %15 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %16 = call %struct.key_entry* @sparse_keymap_locate(%struct.input_dev* %14, %struct.input_keymap_entry* %15)
  store %struct.key_entry* %16, %struct.key_entry** %8, align 8
  %17 = load %struct.key_entry*, %struct.key_entry** %8, align 8
  %18 = icmp ne %struct.key_entry* %17, null
  br i1 %18, label %19, label %55

19:                                               ; preds = %13
  %20 = load %struct.key_entry*, %struct.key_entry** %8, align 8
  %21 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KE_KEY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = load %struct.key_entry*, %struct.key_entry** %8, align 8
  %27 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %31 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.key_entry*, %struct.key_entry** %8, align 8
  %34 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %36 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @set_bit(i32 %37, i32 %40)
  %42 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sparse_keymap_entry_from_keycode(%struct.input_dev* %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %25
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @clear_bit(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %47, %25
  store i32 0, i32* %4, align 4
  br label %59

55:                                               ; preds = %19, %13
  br label %56

56:                                               ; preds = %55, %3
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %54
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.key_entry* @sparse_keymap_locate(%struct.input_dev*, %struct.input_keymap_entry*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @sparse_keymap_entry_from_keycode(%struct.input_dev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
