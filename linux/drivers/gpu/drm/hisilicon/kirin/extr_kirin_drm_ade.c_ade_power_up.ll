; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_ade.c_ade_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_ade.c_ade_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ade_hw_ctx = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to enable media_noc_clk (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to deassert reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to enable ade_core_clk (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ade_hw_ctx*)* @ade_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ade_power_up(%struct.ade_hw_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ade_hw_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.ade_hw_ctx* %0, %struct.ade_hw_ctx** %3, align 8
  %5 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.ade_hw_ctx, %struct.ade_hw_ctx* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.ade_hw_ctx, %struct.ade_hw_ctx* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @reset_control_deassert(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %41

25:                                               ; preds = %15
  %26 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.ade_hw_ctx, %struct.ade_hw_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_prepare_enable(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %41

36:                                               ; preds = %25
  %37 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %3, align 8
  %38 = call i32 @ade_init(%struct.ade_hw_ctx* %37)
  %39 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.ade_hw_ctx, %struct.ade_hw_ctx* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %32, %22, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @ade_init(%struct.ade_hw_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
