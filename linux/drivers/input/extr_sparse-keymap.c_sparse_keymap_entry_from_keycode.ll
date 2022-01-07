; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_entry_from_keycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_entry_from_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry = type { i64, i32 }
%struct.input_dev = type { %struct.key_entry* }

@KE_END = common dso_local global i64 0, align 8
@KE_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key_entry* @sparse_keymap_entry_from_keycode(%struct.input_dev* %0, i32 %1) #0 {
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

10:                                               ; preds = %31, %2
  %11 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %12 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KE_END, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %18 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KE_KEY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %25 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  store %struct.key_entry* %29, %struct.key_entry** %3, align 8
  br label %35

30:                                               ; preds = %22, %16
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %33 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %32, i32 1
  store %struct.key_entry* %33, %struct.key_entry** %6, align 8
  br label %10

34:                                               ; preds = %10
  store %struct.key_entry* null, %struct.key_entry** %3, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.key_entry*, %struct.key_entry** %3, align 8
  ret %struct.key_entry* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
