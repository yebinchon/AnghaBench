; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_host_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_host_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_device = type { i64, i32, i32, i32, i32 }
%struct.msm_dsi_host = type { i64, i64, i32, i32, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"id=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @dsi_host_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_host_attach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca %struct.msm_dsi_host*, align 8
  %7 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %5, align 8
  %8 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %9 = call %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host* %8)
  store %struct.msm_dsi_host* %9, %struct.msm_dsi_host** %6, align 8
  %10 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %11 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %14 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %66

20:                                               ; preds = %2
  %21 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %22 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %25 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %27 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %30 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %32 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %35 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %37 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %40 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %42 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %43 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %42, i32 0, i32 1
  %44 = call i32 @dsi_host_init_panel_gpios(%struct.msm_dsi_host* %41, i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %20
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %66

49:                                               ; preds = %20
  %50 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %51 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %55 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %60 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %63 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %62, i32 0, i32 2
  %64 = call i32 @queue_work(i32 %61, i32* %63)
  br label %65

65:                                               ; preds = %58, %49
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %47, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host*) #1

declare dso_local i32 @dsi_host_init_panel_gpios(%struct.msm_dsi_host*, i32*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
