; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_dm_array_cursor_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_dm_array_cursor_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { i32 }
%struct.dm_array_cursor = type { i32, %struct.dm_array_info* }

@.str = private unnamed_addr constant [29 x i8] c"couldn't create btree cursor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_array_cursor_begin(%struct.dm_array_info* %0, i32 %1, %struct.dm_array_cursor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_array_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_array_cursor*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_array_info* %0, %struct.dm_array_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dm_array_cursor* %2, %struct.dm_array_cursor** %7, align 8
  %9 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %7, align 8
  %10 = call i32 @memset(%struct.dm_array_cursor* %9, i32 0, i32 16)
  %11 = load %struct.dm_array_info*, %struct.dm_array_info** %5, align 8
  %12 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %7, align 8
  %13 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %12, i32 0, i32 1
  store %struct.dm_array_info* %11, %struct.dm_array_info** %13, align 8
  %14 = load %struct.dm_array_info*, %struct.dm_array_info** %5, align 8
  %15 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %14, i32 0, i32 0
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %7, align 8
  %18 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %17, i32 0, i32 0
  %19 = call i32 @dm_btree_cursor_begin(i32* %15, i32 %16, i32 1, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = call i32 @DMERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %28

25:                                               ; preds = %3
  %26 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %7, align 8
  %27 = call i32 @load_ablock(%struct.dm_array_cursor* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @memset(%struct.dm_array_cursor*, i32, i32) #1

declare dso_local i32 @dm_btree_cursor_begin(i32*, i32, i32, i32*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @load_ablock(%struct.dm_array_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
