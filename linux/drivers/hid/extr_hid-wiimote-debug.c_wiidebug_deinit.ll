; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-debug.c_wiidebug_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-debug.c_wiidebug_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__, %struct.wiimote_debug* }
%struct.TYPE_2__ = type { i32 }
%struct.wiimote_debug = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiidebug_deinit(%struct.wiimote_data* %0) #0 {
  %2 = alloca %struct.wiimote_data*, align 8
  %3 = alloca %struct.wiimote_debug*, align 8
  %4 = alloca i64, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %2, align 8
  %5 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %6 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %5, i32 0, i32 1
  %7 = load %struct.wiimote_debug*, %struct.wiimote_debug** %6, align 8
  store %struct.wiimote_debug* %7, %struct.wiimote_debug** %3, align 8
  %8 = load %struct.wiimote_debug*, %struct.wiimote_debug** %3, align 8
  %9 = icmp ne %struct.wiimote_debug* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %13 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %18 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %17, i32 0, i32 1
  store %struct.wiimote_debug* null, %struct.wiimote_debug** %18, align 8
  %19 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %20 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.wiimote_debug*, %struct.wiimote_debug** %3, align 8
  %25 = getelementptr inbounds %struct.wiimote_debug, %struct.wiimote_debug* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @debugfs_remove(i32 %26)
  %28 = load %struct.wiimote_debug*, %struct.wiimote_debug** %3, align 8
  %29 = getelementptr inbounds %struct.wiimote_debug, %struct.wiimote_debug* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @debugfs_remove(i32 %30)
  %32 = load %struct.wiimote_debug*, %struct.wiimote_debug** %3, align 8
  %33 = call i32 @kfree(%struct.wiimote_debug* %32)
  br label %34

34:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @kfree(%struct.wiimote_debug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
