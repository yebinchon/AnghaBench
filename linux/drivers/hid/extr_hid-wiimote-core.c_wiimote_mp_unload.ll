; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_mp_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_mp_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* }
%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@wiimod_mp = common dso_local global %struct.wiimod_ops zeroinitializer, align 8
@WIIPROTO_FLAG_MP_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*)* @wiimote_mp_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimote_mp_unload(%struct.wiimote_data* %0) #0 {
  %2 = alloca %struct.wiimote_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.wiimod_ops*, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %2, align 8
  %5 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %6 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %43

11:                                               ; preds = %1
  store %struct.wiimod_ops* @wiimod_mp, %struct.wiimod_ops** %4, align 8
  %12 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %13 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %18 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* @WIIPROTO_FLAG_MP_USED, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %23 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %28 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.wiimod_ops*, %struct.wiimod_ops** %4, align 8
  %33 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %32, i32 0, i32 0
  %34 = load i32 (%struct.wiimod_ops*, %struct.wiimote_data*)*, i32 (%struct.wiimod_ops*, %struct.wiimote_data*)** %33, align 8
  %35 = icmp ne i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %11
  %37 = load %struct.wiimod_ops*, %struct.wiimod_ops** %4, align 8
  %38 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %37, i32 0, i32 0
  %39 = load i32 (%struct.wiimod_ops*, %struct.wiimote_data*)*, i32 (%struct.wiimod_ops*, %struct.wiimote_data*)** %38, align 8
  %40 = load %struct.wiimod_ops*, %struct.wiimod_ops** %4, align 8
  %41 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %42 = call i32 %39(%struct.wiimod_ops* %40, %struct.wiimote_data* %41)
  br label %43

43:                                               ; preds = %10, %36, %11
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
