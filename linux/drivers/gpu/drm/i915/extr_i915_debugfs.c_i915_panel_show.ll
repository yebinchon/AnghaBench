; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_panel_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_panel_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_connector* }
%struct.drm_connector = type { i64 }
%struct.intel_dp = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@connector_status_connected = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Panel power up delay: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Panel power down delay: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Backlight on delay: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Backlight off delay: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_panel_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_panel_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.intel_dp*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  store %struct.drm_connector* %10, %struct.drm_connector** %6, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %12 = call %struct.TYPE_2__* @intel_attached_encoder(%struct.drm_connector* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call %struct.intel_dp* @enc_to_intel_dp(i32* %13)
  store %struct.intel_dp* %14, %struct.intel_dp** %7, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @connector_status_connected, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %26 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %30 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %31 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %41 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %23, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32*) #1

declare dso_local %struct.TYPE_2__* @intel_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
