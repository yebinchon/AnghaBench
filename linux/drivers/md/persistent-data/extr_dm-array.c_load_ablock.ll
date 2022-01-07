; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_load_ablock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_load_ablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_cursor = type { i32, i32*, i32*, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"dm_btree_cursor_get_value failed\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"get_ablock failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_array_cursor*)* @load_ablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_ablock(%struct.dm_array_cursor* %0) #0 {
  %2 = alloca %struct.dm_array_cursor*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dm_array_cursor* %0, %struct.dm_array_cursor** %2, align 8
  %6 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %2, align 8
  %7 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %2, align 8
  %12 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %2, align 8
  %15 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @unlock_ablock(i32 %13, i32* %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %2, align 8
  %20 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %2, align 8
  %22 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %2, align 8
  %24 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %2, align 8
  %26 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %25, i32 0, i32 0
  %27 = call i32 @dm_btree_cursor_get_value(i32* %26, i32* %5, i32* %4)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = call i32 @DMERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %2, align 8
  %33 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %32, i32 0, i32 0
  %34 = call i32 @dm_btree_cursor_end(i32* %33)
  br label %54

35:                                               ; preds = %18
  %36 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %2, align 8
  %37 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @le64_to_cpu(i32 %39)
  %41 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %2, align 8
  %42 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %41, i32 0, i32 2
  %43 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %2, align 8
  %44 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %43, i32 0, i32 1
  %45 = call i32 @get_ablock(i32 %38, i32 %40, i32** %42, i32** %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = call i32 @DMERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %2, align 8
  %51 = getelementptr inbounds %struct.dm_array_cursor, %struct.dm_array_cursor* %50, i32 0, i32 0
  %52 = call i32 @dm_btree_cursor_end(i32* %51)
  br label %53

53:                                               ; preds = %48, %35
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @unlock_ablock(i32, i32*) #1

declare dso_local i32 @dm_btree_cursor_get_value(i32*, i32*, i32*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_btree_cursor_end(i32*) #1

declare dso_local i32 @get_ablock(i32, i32, i32**, i32**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
