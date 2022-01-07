; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_parse_csr_fw_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_parse_csr_fw_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_csr = type { i32 }
%struct.intel_package_header = type { i32, i32, i64 }
%struct.stepping_info = type { i32 }
%struct.intel_fw_info = type { i32 }

@PACKAGE_MAX_FW_INFO_ENTRIES = common dso_local global i64 0, align 8
@PACKAGE_V2_MAX_FW_INFO_ENTRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"DMC firmware has unknown header version %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"DMC firmware has wrong package header length (%u bytes)\0A\00", align 1
@CSR_DEFAULT_FW_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"DMC firmware not supported for %c stepping\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Truncated DMC firmware, refusing.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intel_csr*, %struct.intel_package_header*, %struct.stepping_info*, i64)* @parse_csr_fw_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_csr_fw_package(%struct.intel_csr* %0, %struct.intel_package_header* %1, %struct.stepping_info* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.intel_csr*, align 8
  %7 = alloca %struct.intel_package_header*, align 8
  %8 = alloca %struct.stepping_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.intel_fw_info*, align 8
  store %struct.intel_csr* %0, %struct.intel_csr** %6, align 8
  store %struct.intel_package_header* %1, %struct.intel_package_header** %7, align 8
  store %struct.stepping_info* %2, %struct.stepping_info** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 16, i64* %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %98

19:                                               ; preds = %4
  %20 = load %struct.intel_package_header*, %struct.intel_package_header** %7, align 8
  %21 = getelementptr inbounds %struct.intel_package_header, %struct.intel_package_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @PACKAGE_MAX_FW_INFO_ENTRIES, align 8
  store i64 %25, i64* %12, align 8
  br label %39

26:                                               ; preds = %19
  %27 = load %struct.intel_package_header*, %struct.intel_package_header** %7, align 8
  %28 = getelementptr inbounds %struct.intel_package_header, %struct.intel_package_header* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @PACKAGE_V2_MAX_FW_INFO_ENTRIES, align 8
  store i64 %32, i64* %12, align 8
  br label %38

33:                                               ; preds = %26
  %34 = load %struct.intel_package_header*, %struct.intel_package_header** %7, align 8
  %35 = getelementptr inbounds %struct.intel_package_header, %struct.intel_package_header* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i64 0, i64* %5, align 8
  br label %100

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i64, i64* %12, align 8
  %41 = mul i64 %40, 4
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %98

48:                                               ; preds = %39
  %49 = load %struct.intel_package_header*, %struct.intel_package_header** %7, align 8
  %50 = getelementptr inbounds %struct.intel_package_header, %struct.intel_package_header* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i64, i64* %10, align 8
  %58 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  store i64 0, i64* %5, align 8
  br label %100

59:                                               ; preds = %48
  %60 = load %struct.intel_package_header*, %struct.intel_package_header** %7, align 8
  %61 = getelementptr inbounds %struct.intel_package_header, %struct.intel_package_header* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  %63 = load %struct.intel_package_header*, %struct.intel_package_header** %7, align 8
  %64 = getelementptr inbounds %struct.intel_package_header, %struct.intel_package_header* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp ugt i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @WARN_ON(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %71, %59
  %74 = load %struct.intel_package_header*, %struct.intel_package_header** %7, align 8
  %75 = bitcast %struct.intel_package_header* %74 to i32*
  %76 = getelementptr inbounds i32, i32* %75, i64 16
  %77 = bitcast i32* %76 to %struct.intel_fw_info*
  store %struct.intel_fw_info* %77, %struct.intel_fw_info** %14, align 8
  %78 = load %struct.intel_fw_info*, %struct.intel_fw_info** %14, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.stepping_info*, %struct.stepping_info** %8, align 8
  %81 = load %struct.intel_package_header*, %struct.intel_package_header** %7, align 8
  %82 = getelementptr inbounds %struct.intel_package_header, %struct.intel_package_header* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @find_dmc_fw_offset(%struct.intel_fw_info* %78, i64 %79, %struct.stepping_info* %80, i32 %83)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* @CSR_DEFAULT_FW_OFFSET, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load %struct.stepping_info*, %struct.stepping_info** %8, align 8
  %90 = getelementptr inbounds %struct.stepping_info, %struct.stepping_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  store i64 0, i64* %5, align 8
  br label %100

93:                                               ; preds = %73
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %13, align 8
  %96 = mul i64 %95, 4
  %97 = add i64 %94, %96
  store i64 %97, i64* %5, align 8
  br label %100

98:                                               ; preds = %47, %18
  %99 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %100

100:                                              ; preds = %98, %93, %88, %56, %33
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @find_dmc_fw_offset(%struct.intel_fw_info*, i64, %struct.stepping_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
