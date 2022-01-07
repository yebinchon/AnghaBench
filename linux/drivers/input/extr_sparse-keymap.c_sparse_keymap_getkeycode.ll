; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_getkeycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_getkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i64 }
%struct.input_keymap_entry = type { i32, i32, i32, i32, i32 }
%struct.key_entry = type { i64, i32, i32 }

@KE_KEY = common dso_local global i64 0, align 8
@INPUT_KEYMAP_BY_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_keymap_entry*)* @sparse_keymap_getkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparse_keymap_getkeycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.input_keymap_entry*, align 8
  %6 = alloca %struct.key_entry*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %5, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %13 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %14 = call %struct.key_entry* @sparse_keymap_locate(%struct.input_dev* %12, %struct.input_keymap_entry* %13)
  store %struct.key_entry* %14, %struct.key_entry** %6, align 8
  %15 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %16 = icmp ne %struct.key_entry* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %11
  %18 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %19 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KE_KEY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %25 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %28 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %30 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @INPUT_KEYMAP_BY_INDEX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %23
  %36 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %37 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %38 = call i32 @sparse_keymap_get_key_index(%struct.input_dev* %36, %struct.key_entry* %37)
  %39 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %40 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %23
  %42 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %43 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %42, i32 0, i32 1
  store i32 4, i32* %43, align 4
  %44 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %45 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %48 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %47, i32 0, i32 1
  %49 = call i32 @memcpy(i32 %46, i32* %48, i32 4)
  store i32 0, i32* %3, align 4
  br label %54

50:                                               ; preds = %17, %11
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %41
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.key_entry* @sparse_keymap_locate(%struct.input_dev*, %struct.input_keymap_entry*) #1

declare dso_local i32 @sparse_keymap_get_key_index(%struct.input_dev*, %struct.key_entry*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
