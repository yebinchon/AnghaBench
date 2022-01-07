; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_init_hash_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_init_hash_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DM_CHUNK_CONSECUTIVE_BITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@exception_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_snapshot*)* @init_hash_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hash_tables(%struct.dm_snapshot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %3, align 8
  %7 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %8 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @get_dev_size(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = call i32 (...) @calc_max_buckets()
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %16 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %14, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @min(i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 64
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 64, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @rounddown_pow_of_two(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %31 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DM_CHUNK_CONSECUTIVE_BITS, align 4
  %34 = call i64 @dm_exception_table_init(i32* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %59

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 3
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 64
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 64, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %47 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %46, i32 0, i32 1
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @dm_exception_table_init(i32* %47, i32 %48, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %53 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %52, i32 0, i32 0
  %54 = load i32, i32* @exception_cache, align 4
  %55 = call i32 @dm_exception_table_exit(i32* %53, i32 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %51, %36
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @get_dev_size(i32) #1

declare dso_local i32 @calc_max_buckets(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i64 @dm_exception_table_init(i32*, i32, i32) #1

declare dso_local i32 @dm_exception_table_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
