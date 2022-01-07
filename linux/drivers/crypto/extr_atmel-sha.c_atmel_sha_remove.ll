; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.atmel_sha_dev = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@atmel_sha = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_sha_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_sha_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.atmel_sha_dev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.atmel_sha_dev* %6, %struct.atmel_sha_dev** %4, align 8
  %7 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %8 = icmp ne %struct.atmel_sha_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @atmel_sha, i32 0, i32 0))
  %14 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %15 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %14, i32 0, i32 4
  %16 = call i32 @list_del(i32* %15)
  %17 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @atmel_sha, i32 0, i32 0))
  %18 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %19 = call i32 @atmel_sha_unregister_algs(%struct.atmel_sha_dev* %18)
  %20 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %21 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %20, i32 0, i32 3
  %22 = call i32 @tasklet_kill(i32* %21)
  %23 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %24 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %23, i32 0, i32 2
  %25 = call i32 @tasklet_kill(i32* %24)
  %26 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %27 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %12
  %32 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %33 = call i32 @atmel_sha_dma_cleanup(%struct.atmel_sha_dev* %32)
  br label %34

34:                                               ; preds = %31, %12
  %35 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %36 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @clk_unprepare(i32 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.atmel_sha_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atmel_sha_unregister_algs(%struct.atmel_sha_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @atmel_sha_dma_cleanup(%struct.atmel_sha_dev*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
