; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_parse_csr_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_parse_csr_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_csr }
%struct.intel_csr = type { i32 }
%struct.firmware = type { i64, i32* }
%struct.intel_css_header = type { i32 }
%struct.intel_package_header = type { i32 }
%struct.intel_dmc_header_base = type { i32 }
%struct.stepping_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.firmware*)* @parse_csr_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_csr_fw(%struct.drm_i915_private* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.intel_css_header*, align 8
  %6 = alloca %struct.intel_package_header*, align 8
  %7 = alloca %struct.intel_dmc_header_base*, align 8
  %8 = alloca %struct.intel_csr*, align 8
  %9 = alloca %struct.stepping_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  store %struct.intel_csr* %13, %struct.intel_csr** %8, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call %struct.stepping_info* @intel_get_stepping_info(%struct.drm_i915_private* %14)
  store %struct.stepping_info* %15, %struct.stepping_info** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.firmware*, %struct.firmware** %4, align 8
  %17 = icmp ne %struct.firmware* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.firmware*, %struct.firmware** %4, align 8
  %21 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to %struct.intel_css_header*
  store %struct.intel_css_header* %23, %struct.intel_css_header** %5, align 8
  %24 = load %struct.intel_csr*, %struct.intel_csr** %8, align 8
  %25 = load %struct.intel_css_header*, %struct.intel_css_header** %5, align 8
  %26 = load %struct.firmware*, %struct.firmware** %4, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @parse_csr_fw_css(%struct.intel_csr* %24, %struct.intel_css_header* %25, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  br label %73

33:                                               ; preds = %19
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %10, align 8
  %37 = load %struct.firmware*, %struct.firmware** %4, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = bitcast i32* %41 to %struct.intel_package_header*
  store %struct.intel_package_header* %42, %struct.intel_package_header** %6, align 8
  %43 = load %struct.intel_csr*, %struct.intel_csr** %8, align 8
  %44 = load %struct.intel_package_header*, %struct.intel_package_header** %6, align 8
  %45 = load %struct.stepping_info*, %struct.stepping_info** %9, align 8
  %46 = load %struct.firmware*, %struct.firmware** %4, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = sub i64 %48, %49
  %51 = call i64 @parse_csr_fw_package(%struct.intel_csr* %43, %struct.intel_package_header* %44, %struct.stepping_info* %45, i64 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %33
  br label %73

55:                                               ; preds = %33
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %10, align 8
  %59 = load %struct.firmware*, %struct.firmware** %4, align 8
  %60 = getelementptr inbounds %struct.firmware, %struct.firmware* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = bitcast i32* %63 to %struct.intel_dmc_header_base*
  store %struct.intel_dmc_header_base* %64, %struct.intel_dmc_header_base** %7, align 8
  %65 = load %struct.intel_csr*, %struct.intel_csr** %8, align 8
  %66 = load %struct.intel_dmc_header_base*, %struct.intel_dmc_header_base** %7, align 8
  %67 = load %struct.firmware*, %struct.firmware** %4, align 8
  %68 = getelementptr inbounds %struct.firmware, %struct.firmware* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 %69, %70
  %72 = call i32 @parse_csr_fw_dmc(%struct.intel_csr* %65, %struct.intel_dmc_header_base* %66, i64 %71)
  br label %73

73:                                               ; preds = %55, %54, %32, %18
  ret void
}

declare dso_local %struct.stepping_info* @intel_get_stepping_info(%struct.drm_i915_private*) #1

declare dso_local i64 @parse_csr_fw_css(%struct.intel_csr*, %struct.intel_css_header*, i64) #1

declare dso_local i64 @parse_csr_fw_package(%struct.intel_csr*, %struct.intel_package_header*, %struct.stepping_info*, i64) #1

declare dso_local i32 @parse_csr_fw_dmc(%struct.intel_csr*, %struct.intel_dmc_header_base*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
