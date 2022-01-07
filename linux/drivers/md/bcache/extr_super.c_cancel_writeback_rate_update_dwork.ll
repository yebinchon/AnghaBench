; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_cancel_writeback_rate_update_dwork.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_cancel_writeback_rate_update_dwork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WRITEBACK_RATE_UPDATE_SECS_MAX = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@BCACHE_DEV_RATE_DW_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"give up waiting for dc->writeback_write_update to quit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cached_dev*)* @cancel_writeback_rate_update_dwork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cancel_writeback_rate_update_dwork(%struct.cached_dev* %0) #0 {
  %2 = alloca %struct.cached_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.cached_dev* %0, %struct.cached_dev** %2, align 8
  %4 = load i32, i32* @WRITEBACK_RATE_UPDATE_SECS_MAX, align 4
  %5 = load i32, i32* @HZ, align 4
  %6 = mul nsw i32 %4, %5
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i32, i32* @BCACHE_DEV_RATE_DW_RUNNING, align 4
  %9 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %10 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @test_bit(i32 %8, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %22

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %3, align 4
  %18 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %7, label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %29 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %28, i32 0, i32 0
  %30 = call i32 @cancel_delayed_work_sync(i32* %29)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
