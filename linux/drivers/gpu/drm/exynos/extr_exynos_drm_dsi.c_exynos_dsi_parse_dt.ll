; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { i32, i32, i32, i32, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"samsung,pll-clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"samsung,burst-clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"samsung,esc-clock-frequency\00", align 1
@DSI_PORT_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_dsi*)* @exynos_dsi_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_parse_dt(%struct.exynos_dsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_dsi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %3, align 8
  %7 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %8 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %7, i32 0, i32 4
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %15 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %14, i32 0, i32 3
  %16 = call i32 @exynos_dsi_of_read_u32(%struct.device_node* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %24 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %23, i32 0, i32 2
  %25 = call i32 @exynos_dsi_of_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %45

30:                                               ; preds = %21
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %33 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %32, i32 0, i32 1
  %34 = call i32 @exynos_dsi_of_read_u32(%struct.device_node* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %45

39:                                               ; preds = %30
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = load i32, i32* @DSI_PORT_IN, align 4
  %42 = call i32 @of_graph_get_remote_node(%struct.device_node* %40, i32 %41, i32 0)
  %43 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %44 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %37, %28, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @exynos_dsi_of_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_graph_get_remote_node(%struct.device_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
