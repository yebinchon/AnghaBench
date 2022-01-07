; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_entry_from_scancode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_entry_from_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry = type { i64, i32 }
%struct.input_dev = type { %struct.key_entry* }

@KE_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key_entry* @sparse_keymap_entry_from_scancode(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.key_entry*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.key_entry*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 0
  %9 = load %struct.key_entry*, %struct.key_entry** %8, align 8
  store %struct.key_entry* %9, %struct.key_entry** %6, align 8
  br label %10

10:                                               ; preds = %25, %2
  %11 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %12 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KE_END, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %19 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  store %struct.key_entry* %23, %struct.key_entry** %3, align 8
  br label %29

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %27 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %26, i32 1
  store %struct.key_entry* %27, %struct.key_entry** %6, align 8
  br label %10

28:                                               ; preds = %10
  store %struct.key_entry* null, %struct.key_entry** %3, align 8
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct.key_entry*, %struct.key_entry** %3, align 8
  ret %struct.key_entry* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
