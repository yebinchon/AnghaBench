; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_perfmon.c_pipe_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_perfmon.c_pipe_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.etnaviv_pm_domain = type { i32, i32 }
%struct.etnaviv_pm_signal = type { i64 }

@VIVS_HI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE__MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.etnaviv_gpu*, %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_signal*)* @pipe_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pipe_reg_read(%struct.etnaviv_gpu* %0, %struct.etnaviv_pm_domain* %1, %struct.etnaviv_pm_signal* %2) #0 {
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca %struct.etnaviv_pm_domain*, align 8
  %6 = alloca %struct.etnaviv_pm_signal*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %4, align 8
  store %struct.etnaviv_pm_domain* %1, %struct.etnaviv_pm_domain** %5, align 8
  store %struct.etnaviv_pm_signal* %2, %struct.etnaviv_pm_signal** %6, align 8
  %10 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %11 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %12 = call i64 @gpu_read(%struct.etnaviv_gpu* %10, i32 %11)
  store i64 %12, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %48, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %14, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %13
  %21 = load i64, i64* @VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE__MASK, align 8
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %7, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE(i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %7, align 8
  %29 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %30 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @gpu_write(%struct.etnaviv_gpu* %29, i32 %30, i64 %31)
  %33 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %34 = load %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_domain** %5, align 8
  %35 = getelementptr inbounds %struct.etnaviv_pm_domain, %struct.etnaviv_pm_domain* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.etnaviv_pm_signal*, %struct.etnaviv_pm_signal** %6, align 8
  %38 = getelementptr inbounds %struct.etnaviv_pm_signal, %struct.etnaviv_pm_signal* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @gpu_write(%struct.etnaviv_gpu* %33, i32 %36, i64 %39)
  %41 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %42 = load %struct.etnaviv_pm_domain*, %struct.etnaviv_pm_domain** %5, align 8
  %43 = getelementptr inbounds %struct.etnaviv_pm_domain, %struct.etnaviv_pm_domain* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @gpu_read(%struct.etnaviv_gpu* %41, i32 %44)
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %20
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %13

51:                                               ; preds = %13
  %52 = load i64, i64* @VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE__MASK, align 8
  %53 = xor i64 %52, -1
  %54 = load i64, i64* %7, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %7, align 8
  %56 = call i64 @VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE(i32 0)
  %57 = load i64, i64* %7, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %60 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @gpu_write(%struct.etnaviv_gpu* %59, i32 %60, i64 %61)
  %63 = load i64, i64* %8, align 8
  ret i64 %63
}

declare dso_local i64 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i64 @VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE(i32) #1

declare dso_local i32 @gpu_write(%struct.etnaviv_gpu*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
