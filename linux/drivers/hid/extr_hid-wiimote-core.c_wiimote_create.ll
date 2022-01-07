; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.hid_device* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hid_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@wiimote_queue_worker = common dso_local global i32 0, align 4
@WIIPROTO_REQ_DRM_K = common dso_local global i32 0, align 4
@wiimote_init_worker = common dso_local global i32 0, align 4
@wiimote_init_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wiimote_data* (%struct.hid_device*)* @wiimote_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wiimote_data* @wiimote_create(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.wiimote_data*, align 8
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.wiimote_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.wiimote_data* @kzalloc(i32 48, i32 %5)
  store %struct.wiimote_data* %6, %struct.wiimote_data** %4, align 8
  %7 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %8 = icmp ne %struct.wiimote_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.wiimote_data* null, %struct.wiimote_data** %2, align 8
  br label %54

10:                                               ; preds = %1
  %11 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %12 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %13 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %12, i32 0, i32 4
  store %struct.hid_device* %11, %struct.hid_device** %13, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %15 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %16 = call i32 @hid_set_drvdata(%struct.hid_device* %14, %struct.wiimote_data* %15)
  %17 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %18 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %22 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* @wiimote_queue_worker, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %27 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %31 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = call i32 @init_completion(i32* %32)
  %34 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %35 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load i32, i32* @WIIPROTO_REQ_DRM_K, align 4
  %39 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %40 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %43 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 255, i32* %44, align 8
  %45 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %46 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %45, i32 0, i32 1
  %47 = load i32, i32* @wiimote_init_worker, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %50 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %49, i32 0, i32 0
  %51 = load i32, i32* @wiimote_init_timeout, align 4
  %52 = call i32 @timer_setup(i32* %50, i32 %51, i32 0)
  %53 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  store %struct.wiimote_data* %53, %struct.wiimote_data** %2, align 8
  br label %54

54:                                               ; preds = %10, %9
  %55 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  ret %struct.wiimote_data* %55
}

declare dso_local %struct.wiimote_data* @kzalloc(i32, i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.wiimote_data*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
