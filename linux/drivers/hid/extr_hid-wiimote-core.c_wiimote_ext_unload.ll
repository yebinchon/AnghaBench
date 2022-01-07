; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_ext_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_ext_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* }
%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@wiimod_ext_table = common dso_local global %struct.wiimod_ops** null, align 8
@WIIMOTE_EXT_UNKNOWN = common dso_local global i64 0, align 8
@WIIPROTO_FLAG_EXT_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*)* @wiimote_ext_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimote_ext_unload(%struct.wiimote_data* %0) #0 {
  %2 = alloca %struct.wiimote_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.wiimod_ops*, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %2, align 8
  %5 = load %struct.wiimod_ops**, %struct.wiimod_ops*** @wiimod_ext_table, align 8
  %6 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %7 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.wiimod_ops*, %struct.wiimod_ops** %5, i64 %9
  %11 = load %struct.wiimod_ops*, %struct.wiimod_ops** %10, align 8
  store %struct.wiimod_ops* %11, %struct.wiimod_ops** %4, align 8
  %12 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %13 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i64, i64* @WIIMOTE_EXT_UNKNOWN, align 8
  %18 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %19 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load i32, i32* @WIIPROTO_FLAG_EXT_USED, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %24 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %29 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.wiimod_ops*, %struct.wiimod_ops** %4, align 8
  %34 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %33, i32 0, i32 0
  %35 = load i32 (%struct.wiimod_ops*, %struct.wiimote_data*)*, i32 (%struct.wiimod_ops*, %struct.wiimote_data*)** %34, align 8
  %36 = icmp ne i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.wiimod_ops*, %struct.wiimod_ops** %4, align 8
  %39 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %38, i32 0, i32 0
  %40 = load i32 (%struct.wiimod_ops*, %struct.wiimote_data*)*, i32 (%struct.wiimod_ops*, %struct.wiimote_data*)** %39, align 8
  %41 = load %struct.wiimod_ops*, %struct.wiimod_ops** %4, align 8
  %42 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %43 = call i32 %40(%struct.wiimod_ops* %41, %struct.wiimote_data* %42)
  br label %44

44:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
