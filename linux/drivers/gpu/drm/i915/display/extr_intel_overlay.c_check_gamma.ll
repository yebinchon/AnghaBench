; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_check_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_check_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_intel_overlay_attrs = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_intel_overlay_attrs*)* @check_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_gamma(%struct.drm_intel_overlay_attrs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_intel_overlay_attrs*, align 8
  store %struct.drm_intel_overlay_attrs* %0, %struct.drm_intel_overlay_attrs** %3, align 8
  %4 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %5 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @check_gamma_bounds(i32 0, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %1
  %10 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %11 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %14 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @check_gamma_bounds(i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %9
  %19 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %20 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %23 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @check_gamma_bounds(i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %18
  %28 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %29 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %32 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @check_gamma_bounds(i32 %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %27
  %37 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %38 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %41 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @check_gamma_bounds(i32 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %47 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %50 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @check_gamma_bounds(i32 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %56 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @check_gamma_bounds(i32 %57, i32 16777215)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54, %45, %36, %27, %18, %9, %1
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %73

63:                                               ; preds = %54
  %64 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %3, align 8
  %65 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @check_gamma5_errata(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %69, %60
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @check_gamma_bounds(i32, i32) #1

declare dso_local i32 @check_gamma5_errata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
