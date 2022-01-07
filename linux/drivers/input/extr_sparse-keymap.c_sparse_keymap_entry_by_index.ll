; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_entry_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_entry_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry = type { i64 }
%struct.input_dev = type { %struct.key_entry* }

@KE_END = common dso_local global i64 0, align 8
@KE_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_entry* (%struct.input_dev*, i32)* @sparse_keymap_entry_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_entry* @sparse_keymap_entry_by_index(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.key_entry*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.key_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %9 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %8, i32 0, i32 0
  %10 = load %struct.key_entry*, %struct.key_entry** %9, align 8
  store %struct.key_entry* %10, %struct.key_entry** %6, align 8
  br label %11

11:                                               ; preds = %32, %2
  %12 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %13 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @KE_END, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %19 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KE_KEY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  store %struct.key_entry* %29, %struct.key_entry** %3, align 8
  br label %36

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %17
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %34 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %33, i32 1
  store %struct.key_entry* %34, %struct.key_entry** %6, align 8
  br label %11

35:                                               ; preds = %11
  store %struct.key_entry* null, %struct.key_entry** %3, align 8
  br label %36

36:                                               ; preds = %35, %28
  %37 = load %struct.key_entry*, %struct.key_entry** %3, align 8
  ret %struct.key_entry* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
