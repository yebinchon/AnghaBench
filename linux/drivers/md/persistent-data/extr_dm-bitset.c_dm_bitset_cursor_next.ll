; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_dm_bitset_cursor_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_dm_bitset_cursor_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bitset_cursor = type { i32, i32 }

@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bitset_cursor_next(%struct.dm_bitset_cursor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_bitset_cursor*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_bitset_cursor* %0, %struct.dm_bitset_cursor** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %3, align 8
  %6 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODATA, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %3, align 8
  %14 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %3, align 8
  %18 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = icmp sgt i32 %20, 63
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %3, align 8
  %24 = call i32 @cursor_next_array_entry(%struct.dm_bitset_cursor* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %12
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @cursor_next_array_entry(%struct.dm_bitset_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
