; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_host_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_host_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_msg = type { i32, i32, i32 }
%struct.exynos_dsi = type { i32 }
%struct.exynos_dsi_transfer = type { i32, i32, i32, i32, i32 }

@DSIM_STATE_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DSIM_STATE_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_msg*)* @exynos_dsi_host_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_host_transfer(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca %struct.exynos_dsi*, align 8
  %7 = alloca %struct.exynos_dsi_transfer, align 4
  %8 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  %9 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %10 = call %struct.exynos_dsi* @host_to_dsi(%struct.mipi_dsi_host* %9)
  store %struct.exynos_dsi* %10, %struct.exynos_dsi** %6, align 8
  %11 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %12 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DSIM_STATE_ENABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %72

20:                                               ; preds = %2
  %21 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %22 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DSIM_STATE_INITIALIZED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %20
  %28 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %29 = call i32 @exynos_dsi_init(%struct.exynos_dsi* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %72

34:                                               ; preds = %27
  %35 = load i32, i32* @DSIM_STATE_INITIALIZED, align 4
  %36 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %37 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %20
  %41 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %7, i32 0, i32 4
  %42 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %43 = call i32 @mipi_dsi_create_packet(i32* %41, %struct.mipi_dsi_msg* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %72

48:                                               ; preds = %40
  %49 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %50 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %7, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  %53 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %54 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %7, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %58 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %7, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %62 = call i32 @exynos_dsi_transfer(%struct.exynos_dsi* %61, %struct.exynos_dsi_transfer* %7)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %48
  %66 = load i32, i32* %8, align 4
  br label %70

67:                                               ; preds = %48
  %68 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi i32 [ %66, %65 ], [ %69, %67 ]
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %46, %32, %17
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.exynos_dsi* @host_to_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @exynos_dsi_init(%struct.exynos_dsi*) #1

declare dso_local i32 @mipi_dsi_create_packet(i32*, %struct.mipi_dsi_msg*) #1

declare dso_local i32 @exynos_dsi_transfer(%struct.exynos_dsi*, %struct.exynos_dsi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
