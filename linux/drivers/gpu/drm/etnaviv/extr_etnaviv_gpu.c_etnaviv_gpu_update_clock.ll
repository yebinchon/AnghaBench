; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_update_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_update_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@chipMinorFeatures2_DYNAMIC_FREQUENCY_SCALING = common dso_local global i32 0, align 4
@VIVS_HI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@VIVS_HI_CLOCK_CONTROL_FSCALE_VAL__MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*)* @etnaviv_gpu_update_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_gpu_update_clock(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca %struct.etnaviv_gpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %2, align 8
  %5 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %6 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @chipMinorFeatures2_DYNAMIC_FREQUENCY_SCALING, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %14 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %17 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %20 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %18, %21
  %23 = call i32 @clk_set_rate(i32 %15, i32 %22)
  %24 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %25 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %28 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %31 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %29, %32
  %34 = call i32 @clk_set_rate(i32 %26, i32 %33)
  br label %55

35:                                               ; preds = %1
  %36 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %37 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 6, %38
  %40 = shl i32 1, %39
  store i32 %40, i32* %3, align 4
  %41 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %42 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %43 = call i32 @gpu_read(%struct.etnaviv_gpu* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_FSCALE_VAL__MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @VIVS_HI_CLOCK_CONTROL_FSCALE_VAL(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @etnaviv_gpu_load_clock(%struct.etnaviv_gpu* %52, i32 %53)
  br label %55

55:                                               ; preds = %35, %12
  ret void
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @VIVS_HI_CLOCK_CONTROL_FSCALE_VAL(i32) #1

declare dso_local i32 @etnaviv_gpu_load_clock(%struct.etnaviv_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
