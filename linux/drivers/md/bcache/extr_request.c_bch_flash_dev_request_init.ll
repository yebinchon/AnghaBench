; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_bch_flash_dev_request_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_bch_flash_dev_request_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache_device = type { i32, i32, %struct.gendisk* }
%struct.gendisk = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@flash_dev_make_request = common dso_local global i32 0, align 4
@flash_dev_congested = common dso_local global i32 0, align 4
@flash_dev_cache_miss = common dso_local global i32 0, align 4
@flash_dev_ioctl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_flash_dev_request_init(%struct.bcache_device* %0) #0 {
  %2 = alloca %struct.bcache_device*, align 8
  %3 = alloca %struct.gendisk*, align 8
  store %struct.bcache_device* %0, %struct.bcache_device** %2, align 8
  %4 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %5 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %4, i32 0, i32 2
  %6 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  store %struct.gendisk* %6, %struct.gendisk** %3, align 8
  %7 = load i32, i32* @flash_dev_make_request, align 4
  %8 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %9 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %7, i32* %11, align 8
  %12 = load i32, i32* @flash_dev_congested, align 4
  %13 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %14 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %12, i32* %18, align 4
  %19 = load i32, i32* @flash_dev_cache_miss, align 4
  %20 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %21 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @flash_dev_ioctl, align 4
  %23 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %24 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
