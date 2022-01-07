; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_shadow_ablock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_shadow_ablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_array_info*, i32*, i32, %struct.dm_block**, %struct.array_block**)* @shadow_ablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shadow_ablock(%struct.dm_array_info* %0, i32* %1, i32 %2, %struct.dm_block** %3, %struct.array_block** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_array_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_block**, align 8
  %11 = alloca %struct.array_block**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dm_array_info* %0, %struct.dm_array_info** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dm_block** %3, %struct.dm_block*** %10, align 8
  store %struct.array_block** %4, %struct.array_block*** %11, align 8
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %18 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dm_btree_lookup(i32* %18, i32 %20, i32* %13, i32* %15)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %46

26:                                               ; preds = %5
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @le64_to_cpu(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.dm_block**, %struct.dm_block*** %10, align 8
  %32 = load %struct.array_block**, %struct.array_block*** %11, align 8
  %33 = call i32 @__shadow_ablock(%struct.dm_array_info* %29, i32 %30, %struct.dm_block** %31, %struct.array_block** %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %46

38:                                               ; preds = %26
  %39 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.dm_block**, %struct.dm_block*** %10, align 8
  %42 = load %struct.dm_block*, %struct.dm_block** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @__reinsert_ablock(%struct.dm_array_info* %39, i32 %40, %struct.dm_block* %42, i32 %43, i32* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %38, %36, %24
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @dm_btree_lookup(i32*, i32, i32*, i32*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @__shadow_ablock(%struct.dm_array_info*, i32, %struct.dm_block**, %struct.array_block**) #1

declare dso_local i32 @__reinsert_ablock(%struct.dm_array_info*, i32, %struct.dm_block*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
