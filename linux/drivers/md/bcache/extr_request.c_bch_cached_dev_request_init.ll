; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_bch_cached_dev_request_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_bch_cached_dev_request_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.gendisk* }
%struct.gendisk = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@cached_dev_make_request = common dso_local global i32 0, align 4
@cached_dev_congested = common dso_local global i32 0, align 4
@cached_dev_cache_miss = common dso_local global i32 0, align 4
@cached_dev_ioctl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_cached_dev_request_init(%struct.cached_dev* %0) #0 {
  %2 = alloca %struct.cached_dev*, align 8
  %3 = alloca %struct.gendisk*, align 8
  store %struct.cached_dev* %0, %struct.cached_dev** %2, align 8
  %4 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %7 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  store %struct.gendisk* %7, %struct.gendisk** %3, align 8
  %8 = load i32, i32* @cached_dev_make_request, align 4
  %9 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %10 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 %8, i32* %12, align 8
  %13 = load i32, i32* @cached_dev_congested, align 4
  %14 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %15 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %13, i32* %19, align 4
  %20 = load i32, i32* @cached_dev_cache_miss, align 4
  %21 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %22 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @cached_dev_ioctl, align 4
  %25 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %26 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
