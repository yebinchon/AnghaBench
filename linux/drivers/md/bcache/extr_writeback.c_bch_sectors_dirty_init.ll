; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_bch_sectors_dirty_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_bch_sectors_dirty_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache_device = type { i32, i32 }
%struct.sectors_dirty_init = type { i32, i32, i32, i64 }

@sectors_dirty_init_fn = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@INIT_KEYS_SLEEP_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"sectors dirty init failed, ret=%d!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_sectors_dirty_init(%struct.bcache_device* %0) #0 {
  %2 = alloca %struct.bcache_device*, align 8
  %3 = alloca %struct.sectors_dirty_init, align 8
  %4 = alloca i32, align 4
  store %struct.bcache_device* %0, %struct.bcache_device** %2, align 8
  %5 = getelementptr inbounds %struct.sectors_dirty_init, %struct.sectors_dirty_init* %3, i32 0, i32 1
  %6 = call i32 @bch_btree_op_init(i32* %5, i32 -1)
  %7 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %8 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.sectors_dirty_init, %struct.sectors_dirty_init* %3, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.sectors_dirty_init, %struct.sectors_dirty_init* %3, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.sectors_dirty_init, %struct.sectors_dirty_init* %3, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @KEY(i32 %13, i32 0, i32 0)
  %15 = getelementptr inbounds %struct.sectors_dirty_init, %struct.sectors_dirty_init* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  br label %16

16:                                               ; preds = %40, %1
  %17 = getelementptr inbounds %struct.sectors_dirty_init, %struct.sectors_dirty_init* %3, i32 0, i32 1
  %18 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %19 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.sectors_dirty_init, %struct.sectors_dirty_init* %3, i32 0, i32 0
  %22 = load i32, i32* @sectors_dirty_init_fn, align 4
  %23 = call i32 @bch_btree_map_keys(i32* %17, i32 %20, i32* %21, i32 %22, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load i32, i32* @INIT_KEYS_SLEEP_MS, align 4
  %30 = call i32 @msecs_to_jiffies(i32 %29)
  %31 = call i32 @schedule_timeout_interruptible(i32 %30)
  br label %39

32:                                               ; preds = %16
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %45

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %16, label %45

45:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @bch_btree_op_init(i32*, i32) #1

declare dso_local i32 @KEY(i32, i32, i32) #1

declare dso_local i32 @bch_btree_map_keys(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
