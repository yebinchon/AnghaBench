; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_find_dmc_fw_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_find_dmc_fw_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_fw_info = type { i64, i8, i8, i32 }
%struct.stepping_info = type { i8, i8 }

@CSR_DEFAULT_FW_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_fw_info*, i32, %struct.stepping_info*, i32)* @find_dmc_fw_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dmc_fw_offset(%struct.intel_fw_info* %0, i32 %1, %struct.stepping_info* %2, i32 %3) #0 {
  %5 = alloca %struct.intel_fw_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stepping_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_fw_info* %0, %struct.intel_fw_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.stepping_info* %2, %struct.stepping_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @CSR_DEFAULT_FW_OFFSET, align 4
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %116, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %119

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.intel_fw_info*, %struct.intel_fw_info** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %20, i64 %22
  %24 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %116

28:                                               ; preds = %19, %16
  %29 = load %struct.intel_fw_info*, %struct.intel_fw_info** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %29, i64 %31
  %33 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 8
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 42
  br i1 %36, label %37, label %57

37:                                               ; preds = %28
  %38 = load %struct.stepping_info*, %struct.stepping_info** %7, align 8
  %39 = getelementptr inbounds %struct.stepping_info, %struct.stepping_info* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load %struct.intel_fw_info*, %struct.intel_fw_info** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %42, i64 %44
  %46 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %45, i32 0, i32 2
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %41, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load %struct.intel_fw_info*, %struct.intel_fw_info** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %51, i64 %53
  %55 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  br label %119

57:                                               ; preds = %37, %28
  %58 = load %struct.stepping_info*, %struct.stepping_info** %7, align 8
  %59 = getelementptr inbounds %struct.stepping_info, %struct.stepping_info* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = load %struct.intel_fw_info*, %struct.intel_fw_info** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %62, i64 %64
  %66 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %65, i32 0, i32 2
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %61, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %57
  %71 = load %struct.stepping_info*, %struct.stepping_info** %7, align 8
  %72 = getelementptr inbounds %struct.stepping_info, %struct.stepping_info* %71, i32 0, i32 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = load %struct.intel_fw_info*, %struct.intel_fw_info** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %75, i64 %77
  %79 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %78, i32 0, i32 1
  %80 = load i8, i8* %79, align 8
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %74, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %70
  %84 = load %struct.intel_fw_info*, %struct.intel_fw_info** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %84, i64 %86
  %88 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  br label %119

90:                                               ; preds = %70, %57
  %91 = load %struct.intel_fw_info*, %struct.intel_fw_info** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %91, i64 %93
  %95 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %94, i32 0, i32 2
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 42
  br i1 %98, label %99, label %115

99:                                               ; preds = %90
  %100 = load %struct.intel_fw_info*, %struct.intel_fw_info** %5, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %100, i64 %102
  %104 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %103, i32 0, i32 1
  %105 = load i8, i8* %104, align 8
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 42
  br i1 %107, label %108, label %115

108:                                              ; preds = %99
  %109 = load %struct.intel_fw_info*, %struct.intel_fw_info** %5, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %109, i64 %111
  %113 = getelementptr inbounds %struct.intel_fw_info, %struct.intel_fw_info* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %108, %99, %90
  br label %116

116:                                              ; preds = %115, %27
  %117 = load i32, i32* %10, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %12

119:                                              ; preds = %83, %50, %12
  %120 = load i32, i32* %9, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
