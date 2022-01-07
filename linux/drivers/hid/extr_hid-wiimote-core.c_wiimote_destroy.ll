; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@WIIPROTO_FLAG_EXITING = common dso_local global i32 0, align 4
@dev_attr_devtype = common dso_local global i32 0, align 4
@dev_attr_extension = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*)* @wiimote_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimote_destroy(%struct.wiimote_data* %0) #0 {
  %2 = alloca %struct.wiimote_data*, align 8
  %3 = alloca i64, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %2, align 8
  %4 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %5 = call i32 @wiidebug_deinit(%struct.wiimote_data* %4)
  %6 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %7 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @WIIPROTO_FLAG_EXITING, align 4
  %12 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %13 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %11
  store i32 %16, i32* %14, align 4
  %17 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %18 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %23 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %22, i32 0, i32 3
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %26 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %25, i32 0, i32 2
  %27 = call i32 @del_timer_sync(i32* %26)
  %28 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %29 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = call i32 @device_remove_file(i32* %31, i32* @dev_attr_devtype)
  %33 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %34 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @device_remove_file(i32* %36, i32* @dev_attr_extension)
  %38 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %39 = call i32 @wiimote_mp_unload(%struct.wiimote_data* %38)
  %40 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %41 = call i32 @wiimote_ext_unload(%struct.wiimote_data* %40)
  %42 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %43 = call i32 @wiimote_modules_unload(%struct.wiimote_data* %42)
  %44 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %45 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = call i32 @cancel_work_sync(i32* %46)
  %48 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %49 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @hid_hw_close(%struct.TYPE_7__* %50)
  %52 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %53 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = call i32 @hid_hw_stop(%struct.TYPE_7__* %54)
  %56 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %57 = call i32 @kfree(%struct.wiimote_data* %56)
  ret void
}

declare dso_local i32 @wiidebug_deinit(%struct.wiimote_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @wiimote_mp_unload(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_ext_unload(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_modules_unload(%struct.wiimote_data*) #1

declare dso_local i32 @hid_hw_close(%struct.TYPE_7__*) #1

declare dso_local i32 @hid_hw_stop(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.wiimote_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
