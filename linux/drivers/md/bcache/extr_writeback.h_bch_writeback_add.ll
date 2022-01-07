; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.h_bch_writeback_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.h_bch_writeback_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, i32 }

@BDEV_STATE_DIRTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cached_dev*)* @bch_writeback_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bch_writeback_add(%struct.cached_dev* %0) #0 {
  %2 = alloca %struct.cached_dev*, align 8
  store %struct.cached_dev* %0, %struct.cached_dev** %2, align 8
  %3 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %4 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %3, i32 0, i32 1
  %5 = call i32 @atomic_read(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %9 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %8, i32 0, i32 1
  %10 = call i32 @atomic_xchg(i32* %9, i32 1)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %14 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %13, i32 0, i32 0
  %15 = call i64 @BDEV_STATE(i32* %14)
  %16 = load i64, i64* @BDEV_STATE_DIRTY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %20 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %19, i32 0, i32 0
  %21 = load i64, i64* @BDEV_STATE_DIRTY, align 8
  %22 = call i32 @SET_BDEV_STATE(i32* %20, i64 %21)
  %23 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %24 = call i32 @bch_write_bdev_super(%struct.cached_dev* %23, i32* null)
  br label %25

25:                                               ; preds = %18, %12
  %26 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %27 = call i32 @bch_writeback_queue(%struct.cached_dev* %26)
  br label %28

28:                                               ; preds = %25, %7, %1
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i64 @BDEV_STATE(i32*) #1

declare dso_local i32 @SET_BDEV_STATE(i32*, i64) #1

declare dso_local i32 @bch_write_bdev_super(%struct.cached_dev*, i32*) #1

declare dso_local i32 @bch_writeback_queue(%struct.cached_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
