; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_start_io_acct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_start_io_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io = type { i32, i32, %struct.bio*, %struct.mapped_device* }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mapped_device = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_io*)* @start_io_acct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_io_acct(%struct.dm_io* %0) #0 {
  %2 = alloca %struct.dm_io*, align 8
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.dm_io* %0, %struct.dm_io** %2, align 8
  %5 = load %struct.dm_io*, %struct.dm_io** %2, align 8
  %6 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %5, i32 0, i32 3
  %7 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  store %struct.mapped_device* %7, %struct.mapped_device** %3, align 8
  %8 = load %struct.dm_io*, %struct.dm_io** %2, align 8
  %9 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %8, i32 0, i32 2
  %10 = load %struct.bio*, %struct.bio** %9, align 8
  store %struct.bio* %10, %struct.bio** %4, align 8
  %11 = load i32, i32* @jiffies, align 4
  %12 = load %struct.dm_io*, %struct.dm_io** %2, align 8
  %13 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %15 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bio*, %struct.bio** %4, align 8
  %18 = call i32 @bio_op(%struct.bio* %17)
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = call i32 @bio_sectors(%struct.bio* %19)
  %21 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %22 = call %struct.TYPE_4__* @dm_disk(%struct.mapped_device* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @generic_start_io_acct(i32 %16, i32 %18, i32 %20, i32* %23)
  %25 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %26 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %25, i32 0, i32 0
  %27 = call i32 @dm_stats_used(i32* %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %1
  %31 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %32 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %31, i32 0, i32 0
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = call i32 @bio_data_dir(%struct.bio* %33)
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = call i32 @bio_sectors(%struct.bio* %39)
  %41 = load %struct.dm_io*, %struct.dm_io** %2, align 8
  %42 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %41, i32 0, i32 0
  %43 = call i32 @dm_stats_account_io(i32* %32, i32 %34, i32 %38, i32 %40, i32 0, i32 0, i32* %42)
  br label %44

44:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @generic_start_io_acct(i32, i32, i32, i32*) #1

declare dso_local i32 @bio_op(%struct.bio*) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.TYPE_4__* @dm_disk(%struct.mapped_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dm_stats_used(i32*) #1

declare dso_local i32 @dm_stats_account_io(i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
