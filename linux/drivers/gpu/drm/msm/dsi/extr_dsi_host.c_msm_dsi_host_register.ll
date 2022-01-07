; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32*, i32* }
%struct.msm_dsi_host = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dsi_host_ops = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_dsi_host_register(%struct.mipi_dsi_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_dsi_host*, align 8
  %7 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %9 = call %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host* %8)
  store %struct.msm_dsi_host* %9, %struct.msm_dsi_host** %6, align 8
  %10 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %11 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %58, label %14

14:                                               ; preds = %2
  %15 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %16 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %20 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %22 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %21, i32 0, i32 0
  store i32* @dsi_host_ops, i32** %22, align 8
  %23 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %24 = call i32 @mipi_dsi_host_register(%struct.mipi_dsi_host* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %59

29:                                               ; preds = %14
  %30 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %31 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %36 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %41 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @of_drm_find_panel(i64 %42)
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %48 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @of_drm_find_bridge(i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @EPROBE_DEFER, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %59

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %56, %34, %29
  br label %58

58:                                               ; preds = %57, %2
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %52, %27
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host*) #1

declare dso_local i32 @mipi_dsi_host_register(%struct.mipi_dsi_host*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @of_drm_find_panel(i64) #1

declare dso_local i32 @of_drm_find_bridge(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
