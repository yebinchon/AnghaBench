; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_parse_csr_fw_css.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_parse_csr_fw_css.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_csr = type { i64, i64 }
%struct.intel_css_header = type { i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Truncated DMC firmware, refusing.\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"DMC firmware has wrong CSS header length (%u bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Refusing to load DMC firmware v%u.%u, please use v%u.%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_csr*, %struct.intel_css_header*, i64)* @parse_csr_fw_css to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_csr_fw_css(%struct.intel_csr* %0, %struct.intel_css_header* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_csr*, align 8
  %6 = alloca %struct.intel_css_header*, align 8
  %7 = alloca i64, align 8
  store %struct.intel_csr* %0, %struct.intel_csr** %5, align 8
  store %struct.intel_css_header* %1, %struct.intel_css_header** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %8, 16
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %62

12:                                               ; preds = %3
  %13 = load %struct.intel_css_header*, %struct.intel_css_header** %6, align 8
  %14 = getelementptr inbounds %struct.intel_css_header, %struct.intel_css_header* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %15, 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.intel_css_header*, %struct.intel_css_header** %6, align 8
  %21 = getelementptr inbounds %struct.intel_css_header, %struct.intel_css_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 4
  %24 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store i32 0, i32* %4, align 4
  br label %62

25:                                               ; preds = %12
  %26 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %27 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  %31 = load %struct.intel_css_header*, %struct.intel_css_header** %6, align 8
  %32 = getelementptr inbounds %struct.intel_css_header, %struct.intel_css_header* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %35 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %30
  %39 = load %struct.intel_css_header*, %struct.intel_css_header** %6, align 8
  %40 = getelementptr inbounds %struct.intel_css_header, %struct.intel_css_header* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @CSR_VERSION_MAJOR(i64 %41)
  %43 = load %struct.intel_css_header*, %struct.intel_css_header** %6, align 8
  %44 = getelementptr inbounds %struct.intel_css_header, %struct.intel_css_header* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @CSR_VERSION_MINOR(i64 %45)
  %47 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %48 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @CSR_VERSION_MAJOR(i64 %49)
  %51 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %52 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @CSR_VERSION_MINOR(i64 %53)
  %55 = call i32 @DRM_INFO(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %46, i32 %50, i32 %54)
  store i32 0, i32* %4, align 4
  br label %62

56:                                               ; preds = %30, %25
  %57 = load %struct.intel_css_header*, %struct.intel_css_header** %6, align 8
  %58 = getelementptr inbounds %struct.intel_css_header, %struct.intel_css_header* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %61 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  store i32 16, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %38, %19, %10
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @CSR_VERSION_MAJOR(i64) #1

declare dso_local i32 @CSR_VERSION_MINOR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
