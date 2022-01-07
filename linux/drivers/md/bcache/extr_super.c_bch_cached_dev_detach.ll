; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bch_cached_dev_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bch_cached_dev_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@bch_register_lock = common dso_local global i32 0, align 4
@BCACHE_DEV_CLOSING = common dso_local global i32 0, align 4
@BCACHE_DEV_DETACHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_cached_dev_detach(%struct.cached_dev* %0) #0 {
  %2 = alloca %struct.cached_dev*, align 8
  store %struct.cached_dev* %0, %struct.cached_dev** %2, align 8
  %3 = call i32 @lockdep_assert_held(i32* @bch_register_lock)
  %4 = load i32, i32* @BCACHE_DEV_CLOSING, align 4
  %5 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = call i64 @test_bit(i32 %4, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = load i32, i32* @BCACHE_DEV_DETACHING, align 4
  %13 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %14 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i64 @test_and_set_bit(i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %28

19:                                               ; preds = %11
  %20 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %21 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @closure_get(i32* %22)
  %24 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %25 = call i32 @bch_writeback_queue(%struct.cached_dev* %24)
  %26 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %27 = call i32 @cached_dev_put(%struct.cached_dev* %26)
  br label %28

28:                                               ; preds = %19, %18, %10
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @closure_get(i32*) #1

declare dso_local i32 @bch_writeback_queue(%struct.cached_dev*) #1

declare dso_local i32 @cached_dev_put(%struct.cached_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
