; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_bch_cached_dev_writeback_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_bch_cached_dev_writeback_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@WRITEBACK_RATE_UPDATE_SECS_DEFAULT = common dso_local global i32 0, align 4
@BCACHE_DEV_WB_RUNNING = common dso_local global i32 0, align 4
@update_writeback_rate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_cached_dev_writeback_init(%struct.cached_dev* %0) #0 {
  %2 = alloca %struct.cached_dev*, align 8
  store %struct.cached_dev* %0, %struct.cached_dev** %2, align 8
  %3 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %4 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %3, i32 0, i32 13
  %5 = call i32 @sema_init(i32* %4, i32 64)
  %6 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %6, i32 0, i32 12
  %8 = call i32 @init_rwsem(i32* %7)
  %9 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %10 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %9, i32 0, i32 11
  %11 = call i32 @bch_keybuf_init(i32* %10)
  %12 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %13 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %15 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %17 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %16, i32 0, i32 2
  store i32 10, i32* %17, align 4
  %18 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %19 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %18, i32 0, i32 3
  store i32 30, i32* %19, align 4
  %20 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %21 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %20, i32 0, i32 10
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @atomic_long_set(i32* %22, i32 1024)
  %24 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %25 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %24, i32 0, i32 4
  store i32 8, i32* %25, align 4
  %26 = load i32, i32* @WRITEBACK_RATE_UPDATE_SECS_DEFAULT, align 4
  %27 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %28 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 4
  %29 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %30 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %29, i32 0, i32 5
  store i32 40, i32* %30, align 4
  %31 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %32 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %31, i32 0, i32 6
  store i32 10000, i32* %32, align 4
  %33 = load i32, i32* @BCACHE_DEV_WB_RUNNING, align 4
  %34 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %35 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @test_and_clear_bit(i32 %33, i32* %36)
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %40 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %39, i32 0, i32 7
  %41 = load i32, i32* @update_writeback_rate, align 4
  %42 = call i32 @INIT_DELAYED_WORK(i32* %40, i32 %41)
  ret void
}

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @bch_keybuf_init(i32*) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
