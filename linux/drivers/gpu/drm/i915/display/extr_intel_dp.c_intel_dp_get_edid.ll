; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32 }
%struct.intel_dp = type { %struct.TYPE_2__, %struct.intel_connector* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_connector = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.edid* (%struct.intel_dp*)* @intel_dp_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.edid* @intel_dp_get_edid(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.edid*, align 8
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_connector*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %5 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %6 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %5, i32 0, i32 1
  %7 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  store %struct.intel_connector* %7, %struct.intel_connector** %4, align 8
  %8 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %9 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %14 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @IS_ERR(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store %struct.edid* null, %struct.edid** %2, align 8
  br label %31

19:                                               ; preds = %12
  %20 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %21 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.edid* @drm_edid_duplicate(i64 %22)
  store %struct.edid* %23, %struct.edid** %2, align 8
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %26 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %25, i32 0, i32 0
  %27 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %28 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call %struct.edid* @drm_get_edid(i32* %26, i32* %29)
  store %struct.edid* %30, %struct.edid** %2, align 8
  br label %31

31:                                               ; preds = %24, %19, %18
  %32 = load %struct.edid*, %struct.edid** %2, align 8
  ret %struct.edid* %32
}

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local %struct.edid* @drm_edid_duplicate(i64) #1

declare dso_local %struct.edid* @drm_get_edid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
