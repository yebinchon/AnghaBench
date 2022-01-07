; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.td043mtea1_panel = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@TPO_R02_NCLK_RISING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.td043mtea1_panel*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.td043mtea1_panel* @dev_get_drvdata(%struct.device* %13)
  store %struct.td043mtea1_panel* %14, %struct.td043mtea1_panel** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtol(i8* %15, i32 0, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %11, align 8
  %21 = and i64 %20, -8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %37

26:                                               ; preds = %19
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %10, align 8
  %29 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* @TPO_R02_NCLK_RISING, align 8
  %31 = load i64, i64* %11, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %11, align 8
  %33 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @td043mtea1_write(%struct.td043mtea1_panel* %33, i32 2, i64 %34)
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %26, %23
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

declare dso_local %struct.td043mtea1_panel* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @td043mtea1_write(%struct.td043mtea1_panel*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
