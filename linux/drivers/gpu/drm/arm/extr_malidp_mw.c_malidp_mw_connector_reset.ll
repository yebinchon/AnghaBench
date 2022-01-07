; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_mw.c_malidp_mw_connector_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_mw.c_malidp_mw_connector_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64 }
%struct.malidp_mw_connector_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @malidp_mw_connector_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_mw_connector_reset(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.malidp_mw_connector_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.malidp_mw_connector_state* @kzalloc(i32 4, i32 %4)
  store %struct.malidp_mw_connector_state* %5, %struct.malidp_mw_connector_state** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @__drm_atomic_helper_connector_destroy_state(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @kfree(i64 %18)
  %20 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %21 = load %struct.malidp_mw_connector_state*, %struct.malidp_mw_connector_state** %3, align 8
  %22 = getelementptr inbounds %struct.malidp_mw_connector_state, %struct.malidp_mw_connector_state* %21, i32 0, i32 0
  %23 = call i32 @__drm_atomic_helper_connector_reset(%struct.drm_connector* %20, i32* %22)
  ret void
}

declare dso_local %struct.malidp_mw_connector_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_connector_destroy_state(i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @__drm_atomic_helper_connector_reset(%struct.drm_connector*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
