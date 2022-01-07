; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_set_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_set_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32 }
%struct.gsc_scaler = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"main_hratio[%ld]main_vratio[%ld]\0A\00", align 1
@GSC_MAIN_H_RATIO = common dso_local global i32 0, align 4
@GSC_MAIN_V_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsc_context*, %struct.gsc_scaler*)* @gsc_set_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_set_scaler(%struct.gsc_context* %0, %struct.gsc_scaler* %1) #0 {
  %3 = alloca %struct.gsc_context*, align 8
  %4 = alloca %struct.gsc_scaler*, align 8
  %5 = alloca i32, align 4
  store %struct.gsc_context* %0, %struct.gsc_context** %3, align 8
  store %struct.gsc_scaler* %1, %struct.gsc_scaler** %4, align 8
  %6 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %7 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %10 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %13 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DRM_DEV_DEBUG_KMS(i32 %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %17 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %18 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gsc_set_h_coef(%struct.gsc_context* %16, i32 %19)
  %21 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %22 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GSC_MAIN_H_RATIO_VALUE(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GSC_MAIN_H_RATIO, align 4
  %27 = call i32 @gsc_write(i32 %25, i32 %26)
  %28 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %29 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %30 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gsc_set_v_coef(%struct.gsc_context* %28, i32 %31)
  %33 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %34 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @GSC_MAIN_V_RATIO_VALUE(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @GSC_MAIN_V_RATIO, align 4
  %39 = call i32 @gsc_write(i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i32) #1

declare dso_local i32 @gsc_set_h_coef(%struct.gsc_context*, i32) #1

declare dso_local i32 @GSC_MAIN_H_RATIO_VALUE(i32) #1

declare dso_local i32 @gsc_write(i32, i32) #1

declare dso_local i32 @gsc_set_v_coef(%struct.gsc_context*, i32) #1

declare dso_local i32 @GSC_MAIN_V_RATIO_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
