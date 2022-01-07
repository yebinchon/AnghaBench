; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_accel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i32 (%struct.wiimote_data*, i64*)* }
%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@wiimod_ext_table = common dso_local global %struct.wiimod_ops** null, align 8
@wiimote_devtype_mods = common dso_local global i64** null, align 8
@WIIMOD_NULL = common dso_local global i64 0, align 8
@wiimod_table = common dso_local global %struct.wiimod_ops** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i64*)* @handler_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handler_accel(%struct.wiimote_data* %0, i64* %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.wiimod_ops*, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct.wiimod_ops**, %struct.wiimod_ops*** @wiimod_ext_table, align 8
  %9 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %10 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.wiimod_ops*, %struct.wiimod_ops** %8, i64 %12
  %14 = load %struct.wiimod_ops*, %struct.wiimod_ops** %13, align 8
  store %struct.wiimod_ops* %14, %struct.wiimod_ops** %7, align 8
  %15 = load %struct.wiimod_ops*, %struct.wiimod_ops** %7, align 8
  %16 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.wiimote_data*, i64*)*, i32 (%struct.wiimote_data*, i64*)** %16, align 8
  %18 = icmp ne i32 (%struct.wiimote_data*, i64*)* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.wiimod_ops*, %struct.wiimod_ops** %7, align 8
  %21 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.wiimote_data*, i64*)*, i32 (%struct.wiimote_data*, i64*)** %21, align 8
  %23 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = call i32 %22(%struct.wiimote_data* %23, i64* %24)
  br label %61

26:                                               ; preds = %2
  %27 = load i64**, i64*** @wiimote_devtype_mods, align 8
  %28 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %29 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64*, i64** %27, i64 %31
  %33 = load i64*, i64** %32, align 8
  store i64* %33, i64** %6, align 8
  %34 = load i64*, i64** %6, align 8
  store i64* %34, i64** %5, align 8
  br label %35

35:                                               ; preds = %58, %26
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WIIMOD_NULL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.wiimod_ops**, %struct.wiimod_ops*** @wiimod_table, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.wiimod_ops*, %struct.wiimod_ops** %41, i64 %43
  %45 = load %struct.wiimod_ops*, %struct.wiimod_ops** %44, align 8
  store %struct.wiimod_ops* %45, %struct.wiimod_ops** %7, align 8
  %46 = load %struct.wiimod_ops*, %struct.wiimod_ops** %7, align 8
  %47 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %46, i32 0, i32 0
  %48 = load i32 (%struct.wiimote_data*, i64*)*, i32 (%struct.wiimote_data*, i64*)** %47, align 8
  %49 = icmp ne i32 (%struct.wiimote_data*, i64*)* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %40
  %51 = load %struct.wiimod_ops*, %struct.wiimod_ops** %7, align 8
  %52 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %51, i32 0, i32 0
  %53 = load i32 (%struct.wiimote_data*, i64*)*, i32 (%struct.wiimote_data*, i64*)** %52, align 8
  %54 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %55 = load i64*, i64** %4, align 8
  %56 = call i32 %53(%struct.wiimote_data* %54, i64* %55)
  br label %61

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57
  %59 = load i64*, i64** %5, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %5, align 8
  br label %35

61:                                               ; preds = %19, %50, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
