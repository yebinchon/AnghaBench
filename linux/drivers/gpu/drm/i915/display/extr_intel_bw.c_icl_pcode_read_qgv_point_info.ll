; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bw.c_icl_pcode_read_qgv_point_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bw.c_icl_pcode_read_qgv_point_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_qgv_point = type { i32, i32, i32, i32, i32, i32 }

@ICL_PCODE_MEM_SUBSYSYSTEM_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_qgv_point*, i32)* @icl_pcode_read_qgv_point_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_pcode_read_qgv_point_info(%struct.drm_i915_private* %0, %struct.intel_qgv_point* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_qgv_point*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.intel_qgv_point* %1, %struct.intel_qgv_point** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = load i32, i32* @ICL_PCODE_MEM_SUBSYSYSTEM_INFO, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(i32 %13)
  %15 = or i32 %12, %14
  %16 = call i32 @sandybridge_pcode_read(%struct.drm_i915_private* %11, i32 %15, i32* %8, i32* %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %54

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 65535
  %24 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %6, align 8
  %25 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 16711680
  %28 = ashr i32 %27, 16
  %29 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %6, align 8
  %30 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, -16777216
  %33 = lshr i32 %32, 24
  %34 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %6, align 8
  %35 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 255
  %38 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %6, align 8
  %39 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 65280
  %42 = ashr i32 %41, 8
  %43 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %6, align 8
  %44 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %6, align 8
  %46 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %6, align 8
  %49 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %6, align 8
  %53 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %21, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @sandybridge_pcode_read(%struct.drm_i915_private*, i32, i32*, i32*) #1

declare dso_local i32 @ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
