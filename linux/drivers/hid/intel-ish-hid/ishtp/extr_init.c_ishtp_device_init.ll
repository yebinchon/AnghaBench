; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_init.c_ishtp_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_init.c_ishtp_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { %struct.TYPE_2__, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ISHTP_DEV_INITIALIZING = common dso_local global i32 0, align 4
@bh_hbm_work_fn = common dso_local global i32 0, align 4
@ISHTP_CLIENTS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ishtp_device_init(%struct.ishtp_device* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %2, align 8
  %3 = load i32, i32* @ISHTP_DEV_INITIALIZING, align 4
  %4 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %5 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %4, i32 0, i32 15
  store i32 %3, i32* %5, align 8
  %6 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %7 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %6, i32 0, i32 14
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %10 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %9, i32 0, i32 13
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %13 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %12, i32 0, i32 12
  store i64 0, i64* %13, align 8
  %14 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %15 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %14, i32 0, i32 11
  store i64 0, i64* %15, align 8
  %16 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %17 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %16, i32 0, i32 10
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %20 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %19, i32 0, i32 9
  %21 = call i32 @init_waitqueue_head(i32* %20)
  %22 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %23 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %22, i32 0, i32 8
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %26 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %25, i32 0, i32 7
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %29 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %28, i32 0, i32 6
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %32 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %31, i32 0, i32 5
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %35 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %34, i32 0, i32 4
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %38 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %37, i32 0, i32 3
  %39 = load i32, i32* @bh_hbm_work_fn, align 4
  %40 = call i32 @INIT_WORK(i32* %38, i32 %39)
  %41 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %42 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ISHTP_CLIENTS_MAX, align 4
  %45 = call i32 @bitmap_zero(i32 %43, i32 %44)
  %46 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %47 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %49 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bitmap_set(i32 %50, i32 0, i32 1)
  %52 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %53 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
