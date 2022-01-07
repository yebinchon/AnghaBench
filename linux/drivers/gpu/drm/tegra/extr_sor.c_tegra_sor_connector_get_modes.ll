; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.tegra_output = type { i32 }
%struct.tegra_sor = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @tegra_sor_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.tegra_output*, align 8
  %4 = alloca %struct.tegra_sor*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = call %struct.tegra_output* @connector_to_output(%struct.drm_connector* %6)
  store %struct.tegra_output* %7, %struct.tegra_output** %3, align 8
  %8 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %9 = call %struct.tegra_sor* @to_sor(%struct.tegra_output* %8)
  store %struct.tegra_sor* %9, %struct.tegra_sor** %4, align 8
  %10 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %16 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @drm_dp_aux_enable(i64 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %21 = call i32 @tegra_output_connector_get_modes(%struct.drm_connector* %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @drm_dp_aux_disable(i64 %29)
  br label %31

31:                                               ; preds = %26, %19
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.tegra_output* @connector_to_output(%struct.drm_connector*) #1

declare dso_local %struct.tegra_sor* @to_sor(%struct.tegra_output*) #1

declare dso_local i32 @drm_dp_aux_enable(i64) #1

declare dso_local i32 @tegra_output_connector_get_modes(%struct.drm_connector*) #1

declare dso_local i32 @drm_dp_aux_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
