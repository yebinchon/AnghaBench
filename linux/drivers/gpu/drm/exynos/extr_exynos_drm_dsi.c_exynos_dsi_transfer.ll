; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { i32, i32, i32 }
%struct.exynos_dsi_transfer = type { i32, %struct.mipi_dsi_packet, i32, i32, i64, i64 }
%struct.mipi_dsi_packet = type { i32, i64, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@DSI_XFER_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"xfer timed out: %*ph %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_dsi*, %struct.exynos_dsi_transfer*)* @exynos_dsi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_transfer(%struct.exynos_dsi* %0, %struct.exynos_dsi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_dsi*, align 8
  %5 = alloca %struct.exynos_dsi_transfer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mipi_dsi_packet*, align 8
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %4, align 8
  store %struct.exynos_dsi_transfer* %1, %struct.exynos_dsi_transfer** %5, align 8
  %9 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %5, align 8
  %10 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %5, align 8
  %12 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @ETIMEDOUT, align 4
  %14 = sub nsw i32 0, %13
  %15 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %5, align 8
  %16 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %5, align 8
  %18 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %17, i32 0, i32 2
  %19 = call i32 @init_completion(i32* %18)
  %20 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %21 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %20, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %25 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %24, i32 0, i32 2
  %26 = call i32 @list_empty(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %5, align 8
  %28 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %27, i32 0, i32 3
  %29 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %30 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %29, i32 0, i32 2
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  %32 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %33 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %32, i32 0, i32 1
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %40 = call i32 @exynos_dsi_transfer_start(%struct.exynos_dsi* %39)
  br label %41

41:                                               ; preds = %38, %2
  %42 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %5, align 8
  %43 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %42, i32 0, i32 2
  %44 = load i32, i32* @DSI_XFER_TIMEOUT_MS, align 4
  %45 = call i32 @msecs_to_jiffies(i32 %44)
  %46 = call i32 @wait_for_completion_timeout(i32* %43, i32 %45)
  %47 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %5, align 8
  %48 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %41
  %54 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %5, align 8
  %55 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %54, i32 0, i32 1
  store %struct.mipi_dsi_packet* %55, %struct.mipi_dsi_packet** %8, align 8
  %56 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %57 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %5, align 8
  %58 = call i32 @exynos_dsi_remove_transfer(%struct.exynos_dsi* %56, %struct.exynos_dsi_transfer* %57)
  %59 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %60 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %8, align 8
  %63 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %8, align 8
  %66 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %8, align 8
  %70 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 4, i32 %64, i32 %68, i32 %71)
  %73 = load i32, i32* @ETIMEDOUT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %79

75:                                               ; preds = %41
  %76 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %5, align 8
  %77 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %53
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @exynos_dsi_transfer_start(%struct.exynos_dsi*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @exynos_dsi_remove_transfer(%struct.exynos_dsi*, %struct.exynos_dsi_transfer*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
