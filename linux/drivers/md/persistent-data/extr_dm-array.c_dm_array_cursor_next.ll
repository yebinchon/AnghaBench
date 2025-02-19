; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_dm_array_cursor_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_dm_array_cursor_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_cursor = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_array_cursor_next(%struct.dm_array_cursor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_array_cursor*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_array_cursor* %0, %struct.dm_array_cursor** %3, align 8
  %5 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %3, align 8
  %6 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODATA, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %3, align 8
  %14 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %3, align 8
  %18 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %3, align 8
  %21 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  %26 = icmp sge i64 %19, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %12
  %28 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %3, align 8
  %29 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %28, i32 0, i32 1
  %30 = call i32 @dm_btree_cursor_next(i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %27
  %36 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %3, align 8
  %37 = call i32 @load_ablock(%struct.dm_array_cursor* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %12
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %33, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dm_btree_cursor_next(i32*) #1

declare dso_local i32 @load_ablock(%struct.dm_array_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
