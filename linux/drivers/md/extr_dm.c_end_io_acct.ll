; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_end_io_acct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_end_io_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io = type { i64, i32, %struct.bio*, %struct.mapped_device* }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mapped_device = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_io*)* @end_io_acct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_io_acct(%struct.dm_io* %0) #0 {
  %2 = alloca %struct.dm_io*, align 8
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  store %struct.dm_io* %0, %struct.dm_io** %2, align 8
  %6 = load %struct.dm_io*, %struct.dm_io** %2, align 8
  %7 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %6, i32 0, i32 3
  %8 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  store %struct.mapped_device* %8, %struct.mapped_device** %3, align 8
  %9 = load %struct.dm_io*, %struct.dm_io** %2, align 8
  %10 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %9, i32 0, i32 2
  %11 = load %struct.bio*, %struct.bio** %10, align 8
  store %struct.bio* %11, %struct.bio** %4, align 8
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.dm_io*, %struct.dm_io** %2, align 8
  %14 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %12, %15
  store i64 %16, i64* %5, align 8
  %17 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %18 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = call i32 @bio_op(%struct.bio* %20)
  %22 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %23 = call %struct.TYPE_4__* @dm_disk(%struct.mapped_device* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.dm_io*, %struct.dm_io** %2, align 8
  %26 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @generic_end_io_acct(i32 %19, i32 %21, i32* %24, i64 %27)
  %29 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %30 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %29, i32 0, i32 1
  %31 = call i32 @dm_stats_used(i32* %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %1
  %35 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %36 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %35, i32 0, i32 1
  %37 = load %struct.bio*, %struct.bio** %4, align 8
  %38 = call i32 @bio_data_dir(%struct.bio* %37)
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = call i32 @bio_sectors(%struct.bio* %43)
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.dm_io*, %struct.dm_io** %2, align 8
  %47 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %46, i32 0, i32 1
  %48 = call i32 @dm_stats_account_io(i32* %36, i32 %38, i32 %42, i32 %44, i32 1, i64 %45, i32* %47)
  br label %49

49:                                               ; preds = %34, %1
  %50 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %51 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %50, i32 0, i32 0
  %52 = call i32 @wq_has_sleeper(i32* %51)
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %57 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %56, i32 0, i32 0
  %58 = call i32 @wake_up(i32* %57)
  br label %59

59:                                               ; preds = %55, %49
  ret void
}

declare dso_local i32 @generic_end_io_acct(i32, i32, i32*, i64) #1

declare dso_local i32 @bio_op(%struct.bio*) #1

declare dso_local %struct.TYPE_4__* @dm_disk(%struct.mapped_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dm_stats_used(i32*) #1

declare dso_local i32 @dm_stats_account_io(i32*, i32, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @wq_has_sleeper(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
