; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.msm_dsi_host = type { %struct.TYPE_2__*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_dsi_host_destroy(%struct.mipi_dsi_host* %0) #0 {
  %2 = alloca %struct.mipi_dsi_host*, align 8
  %3 = alloca %struct.msm_dsi_host*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %2, align 8
  %4 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %2, align 8
  %5 = call %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host* %4)
  store %struct.msm_dsi_host* %5, %struct.msm_dsi_host** %3, align 8
  %6 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %8 = call i32 @dsi_tx_buf_free(%struct.msm_dsi_host* %7)
  %9 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %10 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %15 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @flush_workqueue(i32* %16)
  %18 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %19 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @destroy_workqueue(i32* %20)
  %22 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %23 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %13, %1
  %25 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %26 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %25, i32 0, i32 2
  %27 = call i32 @mutex_destroy(i32* %26)
  %28 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %29 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %28, i32 0, i32 1
  %30 = call i32 @mutex_destroy(i32* %29)
  %31 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %32 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @pm_runtime_disable(i32* %34)
  ret void
}

declare dso_local %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @dsi_tx_buf_free(%struct.msm_dsi_host*) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
