; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.tegra_output = type { i32 }
%struct.tegra_sor = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @tegra_sor_connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_output*, align 8
  %7 = alloca %struct.tegra_sor*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = call %struct.tegra_output* @connector_to_output(%struct.drm_connector* %8)
  store %struct.tegra_output* %9, %struct.tegra_output** %6, align 8
  %10 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %11 = call %struct.tegra_sor* @to_sor(%struct.tegra_output* %10)
  store %struct.tegra_sor* %11, %struct.tegra_sor** %7, align 8
  %12 = load %struct.tegra_sor*, %struct.tegra_sor** %7, align 8
  %13 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.tegra_sor*, %struct.tegra_sor** %7, align 8
  %18 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @drm_dp_aux_detect(i64 %19)
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @tegra_output_connector_detect(%struct.drm_connector* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.tegra_output* @connector_to_output(%struct.drm_connector*) #1

declare dso_local %struct.tegra_sor* @to_sor(%struct.tegra_output*) #1

declare dso_local i32 @drm_dp_aux_detect(i64) #1

declare dso_local i32 @tegra_output_connector_detect(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
