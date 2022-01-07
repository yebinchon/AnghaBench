; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_jr.c_caam_jr_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_jr.c_caam_jr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.caam_drv_private_jr = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Device is busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@driver_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to shut down job ring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @caam_jr_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_jr_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.caam_drv_private_jr*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.caam_drv_private_jr* @dev_get_drvdata(%struct.device* %9)
  store %struct.caam_drv_private_jr* %10, %struct.caam_drv_private_jr** %6, align 8
  %11 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %6, align 8
  %12 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %11, i32 0, i32 1
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = call i32 (...) @unregister_algs()
  %22 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @driver_data, i32 0, i32 0))
  %23 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %6, align 8
  %24 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %23, i32 0, i32 0
  %25 = call i32 @list_del(i32* %24)
  %26 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @driver_data, i32 0, i32 0))
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @caam_jr_shutdown(%struct.device* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %20
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.caam_drv_private_jr* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @unregister_algs(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @caam_jr_shutdown(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
