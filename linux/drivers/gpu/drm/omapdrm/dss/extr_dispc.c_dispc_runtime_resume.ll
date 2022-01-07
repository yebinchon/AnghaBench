; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dispc_device = type { i32 }

@DISPC_CONFIG = common dso_local global i32 0, align 4
@OMAP_DSS_LOAD_FRAME_ONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @dispc_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.dispc_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.dispc_device* @dev_get_drvdata(%struct.device* %4)
  store %struct.dispc_device* %5, %struct.dispc_device** %3, align 8
  %6 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %7 = load i32, i32* @DISPC_CONFIG, align 4
  %8 = call i64 @REG_GET(%struct.dispc_device* %6, i32 %7, i32 2, i32 1)
  %9 = load i64, i64* @OMAP_DSS_LOAD_FRAME_ONLY, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %13 = call i32 @_omap_dispc_initial_config(%struct.dispc_device* %12)
  %14 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %15 = call i32 @dispc_errata_i734_wa(%struct.dispc_device* %14)
  %16 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %17 = call i32 @dispc_restore_context(%struct.dispc_device* %16)
  %18 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %19 = call i32 @dispc_restore_gamma_tables(%struct.dispc_device* %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %22 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = call i32 (...) @smp_wmb()
  ret i32 0
}

declare dso_local %struct.dispc_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @REG_GET(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @_omap_dispc_initial_config(%struct.dispc_device*) #1

declare dso_local i32 @dispc_errata_i734_wa(%struct.dispc_device*) #1

declare dso_local i32 @dispc_restore_context(%struct.dispc_device*) #1

declare dso_local i32 @dispc_restore_gamma_tables(%struct.dispc_device*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
