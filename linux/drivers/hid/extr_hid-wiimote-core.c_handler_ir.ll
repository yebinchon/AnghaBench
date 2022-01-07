; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i32 (%struct.wiimote_data*, i64*, i32, i32)* }
%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@wiimod_ext_table = common dso_local global %struct.wiimod_ops** null, align 8
@wiimote_devtype_mods = common dso_local global i64** null, align 8
@WIIMOD_NULL = common dso_local global i64 0, align 8
@wiimod_table = common dso_local global %struct.wiimod_ops** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i64*, i32, i32)* @handler_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handler_ir(%struct.wiimote_data* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wiimote_data*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.wiimod_ops*, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.wiimod_ops**, %struct.wiimod_ops*** @wiimod_ext_table, align 8
  %13 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %14 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.wiimod_ops*, %struct.wiimod_ops** %12, i64 %16
  %18 = load %struct.wiimod_ops*, %struct.wiimod_ops** %17, align 8
  store %struct.wiimod_ops* %18, %struct.wiimod_ops** %11, align 8
  %19 = load %struct.wiimod_ops*, %struct.wiimod_ops** %11, align 8
  %20 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.wiimote_data*, i64*, i32, i32)*, i32 (%struct.wiimote_data*, i64*, i32, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.wiimote_data*, i64*, i32, i32)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load %struct.wiimod_ops*, %struct.wiimod_ops** %11, align 8
  %25 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %24, i32 0, i32 0
  %26 = load i32 (%struct.wiimote_data*, i64*, i32, i32)*, i32 (%struct.wiimote_data*, i64*, i32, i32)** %25, align 8
  %27 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 %26(%struct.wiimote_data* %27, i64* %28, i32 %29, i32 %30)
  br label %69

32:                                               ; preds = %4
  %33 = load i64**, i64*** @wiimote_devtype_mods, align 8
  %34 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %35 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64*, i64** %33, i64 %37
  %39 = load i64*, i64** %38, align 8
  store i64* %39, i64** %10, align 8
  %40 = load i64*, i64** %10, align 8
  store i64* %40, i64** %9, align 8
  br label %41

41:                                               ; preds = %66, %32
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WIIMOD_NULL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load %struct.wiimod_ops**, %struct.wiimod_ops*** @wiimod_table, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.wiimod_ops*, %struct.wiimod_ops** %47, i64 %49
  %51 = load %struct.wiimod_ops*, %struct.wiimod_ops** %50, align 8
  store %struct.wiimod_ops* %51, %struct.wiimod_ops** %11, align 8
  %52 = load %struct.wiimod_ops*, %struct.wiimod_ops** %11, align 8
  %53 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %52, i32 0, i32 0
  %54 = load i32 (%struct.wiimote_data*, i64*, i32, i32)*, i32 (%struct.wiimote_data*, i64*, i32, i32)** %53, align 8
  %55 = icmp ne i32 (%struct.wiimote_data*, i64*, i32, i32)* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = load %struct.wiimod_ops*, %struct.wiimod_ops** %11, align 8
  %58 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %57, i32 0, i32 0
  %59 = load i32 (%struct.wiimote_data*, i64*, i32, i32)*, i32 (%struct.wiimote_data*, i64*, i32, i32)** %58, align 8
  %60 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 %59(%struct.wiimote_data* %60, i64* %61, i32 %62, i32 %63)
  br label %69

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65
  %67 = load i64*, i64** %9, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %9, align 8
  br label %41

69:                                               ; preds = %23, %56, %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
