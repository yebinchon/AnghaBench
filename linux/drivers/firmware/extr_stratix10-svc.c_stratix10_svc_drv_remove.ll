; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-svc.c_stratix10_svc_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-svc.c_stratix10_svc_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stratix10_svc = type { i32 }
%struct.stratix10_svc_controller = type { i32, i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stratix10_svc_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stratix10_svc_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.stratix10_svc*, align 8
  %4 = alloca %struct.stratix10_svc_controller*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.stratix10_svc* @dev_get_drvdata(i32* %6)
  store %struct.stratix10_svc* %7, %struct.stratix10_svc** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.stratix10_svc_controller* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.stratix10_svc_controller* %9, %struct.stratix10_svc_controller** %4, align 8
  %10 = load %struct.stratix10_svc*, %struct.stratix10_svc** %3, align 8
  %11 = getelementptr inbounds %struct.stratix10_svc, %struct.stratix10_svc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @platform_device_unregister(i32 %12)
  %14 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %4, align 8
  %15 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %14, i32 0, i32 3
  %16 = call i32 @kfifo_free(i32* %15)
  %17 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %4, align 8
  %18 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %4, align 8
  %23 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @kthread_stop(i32* %24)
  %26 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %4, align 8
  %27 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %4, align 8
  %30 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %4, align 8
  %35 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @gen_pool_destroy(i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %4, align 8
  %40 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %39, i32 0, i32 0
  %41 = call i32 @list_del(i32* %40)
  ret i32 0
}

declare dso_local %struct.stratix10_svc* @dev_get_drvdata(i32*) #1

declare dso_local %struct.stratix10_svc_controller* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @gen_pool_destroy(i64) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
