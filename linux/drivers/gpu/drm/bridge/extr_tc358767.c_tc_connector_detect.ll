; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.tc_data = type { i64, i32, i64 }

@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@GPIOI = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @tc_connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = call %struct.tc_data* @connector_to_tc(%struct.drm_connector* %10)
  store %struct.tc_data* %11, %struct.tc_data** %6, align 8
  %12 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %13 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %18 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @connector_status_connected, align 4
  store i32 %22, i32* %3, align 4
  br label %48

23:                                               ; preds = %16
  %24 = load i32, i32* @connector_status_unknown, align 4
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %2
  %26 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %27 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GPIOI, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @connector_status_unknown, align 4
  store i32 %34, i32* %3, align 4
  br label %48

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %38 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @BIT(i64 %39)
  %41 = and i32 %36, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @connector_status_connected, align 4
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %44, %33, %23, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.tc_data* @connector_to_tc(%struct.drm_connector*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
