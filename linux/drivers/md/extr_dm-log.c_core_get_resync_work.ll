; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_core_get_resync_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_core_get_resync_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { i64 }
%struct.log_c = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dirty_log*, i64*)* @core_get_resync_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_get_resync_work(%struct.dm_dirty_log* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_dirty_log*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.log_c*, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %8 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.log_c*
  store %struct.log_c* %10, %struct.log_c** %6, align 8
  %11 = load %struct.log_c*, %struct.log_c** %6, align 8
  %12 = getelementptr inbounds %struct.log_c, %struct.log_c* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.log_c*, %struct.log_c** %6, align 8
  %15 = getelementptr inbounds %struct.log_c, %struct.log_c* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %45, %19
  %21 = load %struct.log_c*, %struct.log_c** %6, align 8
  %22 = getelementptr inbounds %struct.log_c, %struct.log_c* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.log_c*, %struct.log_c** %6, align 8
  %25 = getelementptr inbounds %struct.log_c, %struct.log_c* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.log_c*, %struct.log_c** %6, align 8
  %28 = getelementptr inbounds %struct.log_c, %struct.log_c* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @find_next_zero_bit_le(i32 %23, i64 %26, i64 %29)
  %31 = load i64*, i64** %5, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = load %struct.log_c*, %struct.log_c** %6, align 8
  %36 = getelementptr inbounds %struct.log_c, %struct.log_c* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.log_c*, %struct.log_c** %6, align 8
  %40 = getelementptr inbounds %struct.log_c, %struct.log_c* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %61

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.log_c*, %struct.log_c** %6, align 8
  %47 = getelementptr inbounds %struct.log_c, %struct.log_c* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @log_test_bit(i32 %48, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %20, label %53

53:                                               ; preds = %45
  %54 = load %struct.log_c*, %struct.log_c** %6, align 8
  %55 = load %struct.log_c*, %struct.log_c** %6, align 8
  %56 = getelementptr inbounds %struct.log_c, %struct.log_c* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i64*, i64** %5, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @log_set_bit(%struct.log_c* %54, i32 %57, i64 %59)
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %43, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @find_next_zero_bit_le(i32, i64, i64) #1

declare dso_local i64 @log_test_bit(i32, i64) #1

declare dso_local i32 @log_set_bit(%struct.log_c*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
