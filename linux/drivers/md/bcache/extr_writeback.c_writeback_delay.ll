; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_writeback_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_writeback_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BCACHE_DEV_DETACHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cached_dev*, i32)* @writeback_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeback_delay(%struct.cached_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cached_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.cached_dev* %0, %struct.cached_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @BCACHE_DEV_DETACHING, align 4
  %7 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %8 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i64 @test_bit(i32 %6, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %14 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %23

18:                                               ; preds = %12
  %19 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %20 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @bch_next_delay(i32* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %17
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bch_next_delay(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
