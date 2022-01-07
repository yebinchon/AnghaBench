; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_drums_report_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_drums_report_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@wiimod_drums_report_pressure.default_pressure = internal constant i64 3, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i64, i64, i64, i64, i64*, i32, i64)* @wiimod_drums_report_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimod_drums_report_pressure(%struct.wiimote_data* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64* %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.wiimote_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %16, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i64, i64* %12, align 8
  %25 = load i64*, i64** %14, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.wiimote_data*, %struct.wiimote_data** %9, align 8
  %27 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i64*, i64** %14, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @input_report_abs(i32 %29, i32 %30, i64 %32)
  br label %59

34:                                               ; preds = %19, %8
  %35 = load i64, i64* %13, align 8
  %36 = load i64*, i64** %14, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %35, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %34
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i64 3, i64 0
  %49 = load i64*, i64** %14, align 8
  store i64 %48, i64* %49, align 8
  %50 = load %struct.wiimote_data*, %struct.wiimote_data** %9, align 8
  %51 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i64*, i64** %14, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @input_report_abs(i32 %53, i32 %54, i64 %56)
  br label %58

58:                                               ; preds = %44, %34
  br label %59

59:                                               ; preds = %58, %23
  ret void
}

declare dso_local i32 @input_report_abs(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
