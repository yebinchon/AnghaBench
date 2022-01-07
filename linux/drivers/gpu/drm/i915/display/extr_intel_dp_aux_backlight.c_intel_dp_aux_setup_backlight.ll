; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_aux_backlight.c_intel_dp_aux_setup_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_aux_backlight.c_intel_dp_aux_setup_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_4__* }
%struct.intel_panel = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_dp = type { i32* }

@DP_EDP_BACKLIGHT_BRIGHTNESS_BYTE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*, i32)* @intel_dp_aux_setup_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_aux_setup_backlight(%struct.intel_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_dp*, align 8
  %6 = alloca %struct.intel_panel*, align 8
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %8 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call %struct.intel_dp* @enc_to_intel_dp(i32* %10)
  store %struct.intel_dp* %11, %struct.intel_dp** %5, align 8
  %12 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 0
  store %struct.intel_panel* %13, %struct.intel_panel** %6, align 8
  %14 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %15 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DP_EDP_BACKLIGHT_BRIGHTNESS_BYTE_COUNT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %24 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 65535, i32* %25, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %28 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 255, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %32 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %35 = call i64 @intel_dp_aux_get_backlight(%struct.intel_connector* %34)
  %36 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %37 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 %35, i64* %38, align 8
  %39 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %40 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %46 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  ret i32 0
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32*) #1

declare dso_local i64 @intel_dp_aux_get_backlight(%struct.intel_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
