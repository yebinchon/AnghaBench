; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_dm_bitset_cursor_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_dm_bitset_cursor_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_disk_bitset = type { i32 }
%struct.dm_bitset_cursor = type { i32, i64, i64, i32, i64, %struct.dm_disk_bitset* }

@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bitset_cursor_begin(%struct.dm_disk_bitset* %0, i32 %1, i64 %2, %struct.dm_bitset_cursor* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_disk_bitset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.dm_bitset_cursor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.dm_disk_bitset* %0, %struct.dm_disk_bitset** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.dm_bitset_cursor* %3, %struct.dm_bitset_cursor** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %49

17:                                               ; preds = %4
  %18 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %6, align 8
  %19 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %9, align 8
  %20 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %19, i32 0, i32 5
  store %struct.dm_disk_bitset* %18, %struct.dm_disk_bitset** %20, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %9, align 8
  %23 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %22, i32 0, i32 4
  store i64 %21, i64* %23, align 8
  %24 = load %struct.dm_disk_bitset*, %struct.dm_disk_bitset** %6, align 8
  %25 = getelementptr inbounds %struct.dm_disk_bitset, %struct.dm_disk_bitset* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %9, align 8
  %28 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %27, i32 0, i32 3
  %29 = call i32 @dm_array_cursor_begin(i32* %25, i32 %26, i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %49

34:                                               ; preds = %17
  %35 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %9, align 8
  %36 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %35, i32 0, i32 3
  %37 = bitcast i32** %11 to i8**
  %38 = call i32 @dm_array_cursor_get_value(i32* %36, i8** %37)
  %39 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %9, align 8
  %40 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %9, align 8
  %42 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le64_to_cpu(i32 %44)
  %46 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %9, align 8
  %47 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %34, %32, %14
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @dm_array_cursor_begin(i32*, i32, i32*) #1

declare dso_local i32 @dm_array_cursor_get_value(i32*, i8**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
