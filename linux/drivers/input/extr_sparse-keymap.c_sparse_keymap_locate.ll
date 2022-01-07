; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_locate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry = type { i32 }
%struct.input_dev = type { i32 }
%struct.input_keymap_entry = type { i32, i32 }

@INPUT_KEYMAP_BY_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_entry* (%struct.input_dev*, %struct.input_keymap_entry*)* @sparse_keymap_locate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_entry* @sparse_keymap_locate(%struct.input_dev* %0, %struct.input_keymap_entry* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.input_keymap_entry*, align 8
  %5 = alloca %struct.key_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %4, align 8
  %7 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %8 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @INPUT_KEYMAP_BY_INDEX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %15 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %16 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.key_entry* @sparse_keymap_entry_by_index(%struct.input_dev* %14, i32 %17)
  store %struct.key_entry* %18, %struct.key_entry** %5, align 8
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %21 = call i64 @input_scancode_to_scalar(%struct.input_keymap_entry* %20, i32* %6)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.key_entry* @sparse_keymap_entry_from_scancode(%struct.input_dev* %24, i32 %25)
  store %struct.key_entry* %26, %struct.key_entry** %5, align 8
  br label %28

27:                                               ; preds = %19
  store %struct.key_entry* null, %struct.key_entry** %5, align 8
  br label %28

28:                                               ; preds = %27, %23
  br label %29

29:                                               ; preds = %28, %13
  %30 = load %struct.key_entry*, %struct.key_entry** %5, align 8
  ret %struct.key_entry* %30
}

declare dso_local %struct.key_entry* @sparse_keymap_entry_by_index(%struct.input_dev*, i32) #1

declare dso_local i64 @input_scancode_to_scalar(%struct.input_keymap_entry*, i32*) #1

declare dso_local %struct.key_entry* @sparse_keymap_entry_from_scancode(%struct.input_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
