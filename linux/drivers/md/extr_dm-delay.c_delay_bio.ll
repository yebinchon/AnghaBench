; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delay_c = type { i32, i32 }
%struct.delay_class = type { i32, i32 }
%struct.bio = type { i32 }
%struct.dm_delay_info = type { i64, i32, %struct.delay_c* }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@delayed_bios_lock = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delay_c*, %struct.delay_class*, %struct.bio*)* @delay_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delay_bio(%struct.delay_c* %0, %struct.delay_class* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.delay_c*, align 8
  %6 = alloca %struct.delay_class*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.dm_delay_info*, align 8
  %9 = alloca i64, align 8
  store %struct.delay_c* %0, %struct.delay_c** %5, align 8
  store %struct.delay_class* %1, %struct.delay_class** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.delay_class*, %struct.delay_class** %6, align 8
  %11 = getelementptr inbounds %struct.delay_class, %struct.delay_class* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %16 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %15, i32 0, i32 1
  %17 = call i32 @atomic_read(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %20, i32* %4, align 4
  br label %50

21:                                               ; preds = %14
  %22 = load %struct.bio*, %struct.bio** %7, align 8
  %23 = call %struct.dm_delay_info* @dm_per_bio_data(%struct.bio* %22, i32 24)
  store %struct.dm_delay_info* %23, %struct.dm_delay_info** %8, align 8
  %24 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %25 = load %struct.dm_delay_info*, %struct.dm_delay_info** %8, align 8
  %26 = getelementptr inbounds %struct.dm_delay_info, %struct.dm_delay_info* %25, i32 0, i32 2
  store %struct.delay_c* %24, %struct.delay_c** %26, align 8
  %27 = load i64, i64* @jiffies, align 8
  %28 = load %struct.delay_class*, %struct.delay_class** %6, align 8
  %29 = getelementptr inbounds %struct.delay_class, %struct.delay_class* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @msecs_to_jiffies(i32 %30)
  %32 = add i64 %27, %31
  store i64 %32, i64* %9, align 8
  %33 = load %struct.dm_delay_info*, %struct.dm_delay_info** %8, align 8
  %34 = getelementptr inbounds %struct.dm_delay_info, %struct.dm_delay_info* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = call i32 @mutex_lock(i32* @delayed_bios_lock)
  %36 = load %struct.delay_class*, %struct.delay_class** %6, align 8
  %37 = getelementptr inbounds %struct.delay_class, %struct.delay_class* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.dm_delay_info*, %struct.dm_delay_info** %8, align 8
  %41 = getelementptr inbounds %struct.dm_delay_info, %struct.dm_delay_info* %40, i32 0, i32 1
  %42 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %43 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %42, i32 0, i32 0
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = call i32 @mutex_unlock(i32* @delayed_bios_lock)
  %46 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @queue_timeout(%struct.delay_c* %46, i64 %47)
  %49 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %21, %19
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.dm_delay_info* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @queue_timeout(%struct.delay_c*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
