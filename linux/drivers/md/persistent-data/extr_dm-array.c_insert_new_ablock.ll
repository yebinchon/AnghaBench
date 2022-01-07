; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_insert_new_ablock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_insert_new_ablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_array_info*, i64, i32, i32, i32, i8*, i32*)* @insert_new_ablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_new_ablock(%struct.dm_array_info* %0, i64 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_array_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dm_block*, align 8
  %18 = alloca %struct.array_block*, align 8
  store %struct.dm_array_info* %0, %struct.dm_array_info** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.dm_array_info*, %struct.dm_array_info** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @alloc_ablock(%struct.dm_array_info* %19, i64 %20, i32 %21, %struct.dm_block** %17, %struct.array_block** %18)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %8, align 4
  br label %42

27:                                               ; preds = %7
  %28 = load %struct.dm_array_info*, %struct.dm_array_info** %9, align 8
  %29 = load %struct.array_block*, %struct.array_block** %18, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @fill_ablock(%struct.dm_array_info* %28, %struct.array_block* %29, i8* %30, i32 %31)
  %33 = load %struct.dm_array_info*, %struct.dm_array_info** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.dm_block*, %struct.dm_block** %17, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = call i32 @insert_ablock(%struct.dm_array_info* %33, i32 %34, %struct.dm_block* %35, i32* %36)
  store i32 %37, i32* %16, align 4
  %38 = load %struct.dm_array_info*, %struct.dm_array_info** %9, align 8
  %39 = load %struct.dm_block*, %struct.dm_block** %17, align 8
  %40 = call i32 @unlock_ablock(%struct.dm_array_info* %38, %struct.dm_block* %39)
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %27, %25
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @alloc_ablock(%struct.dm_array_info*, i64, i32, %struct.dm_block**, %struct.array_block**) #1

declare dso_local i32 @fill_ablock(%struct.dm_array_info*, %struct.array_block*, i8*, i32) #1

declare dso_local i32 @insert_ablock(%struct.dm_array_info*, i32, %struct.dm_block*, i32*) #1

declare dso_local i32 @unlock_ablock(%struct.dm_array_info*, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
