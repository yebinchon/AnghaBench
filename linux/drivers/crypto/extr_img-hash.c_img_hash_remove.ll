; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.img_hash_dev = type { i32, i32, i32, i32, i32, i32 }

@img_hash = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @img_hash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_hash_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.img_hash_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.img_hash_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.img_hash_dev* %5, %struct.img_hash_dev** %3, align 8
  %6 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @img_hash, i32 0, i32 0))
  %7 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %8 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %7, i32 0, i32 5
  %9 = call i32 @list_del(i32* %8)
  %10 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @img_hash, i32 0, i32 0))
  %11 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %12 = call i32 @img_unregister_algs(%struct.img_hash_dev* %11)
  %13 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %14 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %13, i32 0, i32 4
  %15 = call i32 @tasklet_kill(i32* %14)
  %16 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %17 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %16, i32 0, i32 3
  %18 = call i32 @tasklet_kill(i32* %17)
  %19 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %20 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dma_release_channel(i32 %21)
  %23 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %24 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_disable_unprepare(i32 %25)
  %27 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %28 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_disable_unprepare(i32 %29)
  ret i32 0
}

declare dso_local %struct.img_hash_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @img_unregister_algs(%struct.img_hash_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
