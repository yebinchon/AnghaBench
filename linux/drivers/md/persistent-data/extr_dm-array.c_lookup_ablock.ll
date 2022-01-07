; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_lookup_ablock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_lookup_ablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_array_info*, i32, i32, %struct.dm_block**, %struct.array_block**)* @lookup_ablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_ablock(%struct.dm_array_info* %0, i32 %1, i32 %2, %struct.dm_block** %3, %struct.array_block** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_array_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_block**, align 8
  %11 = alloca %struct.array_block**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dm_array_info* %0, %struct.dm_array_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.dm_block** %3, %struct.dm_block*** %10, align 8
  store %struct.array_block** %4, %struct.array_block*** %11, align 8
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %17 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %16, i32 0, i32 0
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @dm_btree_lookup(i32* %17, i32 %18, i32* %13, i32* %14)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %31

24:                                               ; preds = %5
  %25 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @le64_to_cpu(i32 %26)
  %28 = load %struct.dm_block**, %struct.dm_block*** %10, align 8
  %29 = load %struct.array_block**, %struct.array_block*** %11, align 8
  %30 = call i32 @get_ablock(%struct.dm_array_info* %25, i32 %27, %struct.dm_block** %28, %struct.array_block** %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %24, %22
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @dm_btree_lookup(i32*, i32, i32*, i32*) #1

declare dso_local i32 @get_ablock(%struct.dm_array_info*, i32, %struct.dm_block**, %struct.array_block**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
