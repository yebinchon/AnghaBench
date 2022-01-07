; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_dm_bitset_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_dm_bitset_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_disk_bitset = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bitset_flush(%struct.dm_disk_bitset* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_disk_bitset*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dm_disk_bitset* %0, %struct.dm_disk_bitset** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %11 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %16 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %43

20:                                               ; preds = %14
  %21 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %22 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cpu_to_le64(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = call i32 @__dm_bless_for_disk(i32* %9)
  %26 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %27 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %26, i32 0, i32 3
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %30 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @dm_array_set_value(i32* %27, i32 %28, i32 %31, i32* %9, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %20
  %39 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %40 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %5, align 8
  %42 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %36, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @__dm_bless_for_disk(i32*) #1

declare dso_local i32 @dm_array_set_value(i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
