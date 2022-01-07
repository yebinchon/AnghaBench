; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_memory_pll_dividers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_memory_pll_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.atom_mpll_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@COMMAND = common dso_local global i32 0, align 4
@ComputeMemoryClockParam = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MPLL_INPUT_FLAG_STROBE_MODE_EN = common dso_local global i32 0, align 4
@MPLL_CNTL_FLAG_VCO_MODE_MASK = common dso_local global i32 0, align 4
@MPLL_CNTL_FLAG_BYPASS_DQ_PLL = common dso_local global i32 0, align 4
@MPLL_CNTL_FLAG_QDR_ENABLE = common dso_local global i32 0, align 4
@MPLL_CNTL_FLAG_AD_HALF_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_get_memory_pll_dividers(%struct.amdgpu_device* %0, i32 %1, i32 %2, %struct.atom_mpll_param* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atom_mpll_param*, align 8
  %10 = alloca %struct.atom_mpll_param, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.atom_mpll_param* %3, %struct.atom_mpll_param** %9, align 8
  %14 = load i32, i32* @COMMAND, align 4
  %15 = load i32, i32* @ComputeMemoryClockParam, align 4
  %16 = call i32 @GetIndexIntoMasterTable(i32 %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = call i32 @memset(%struct.atom_mpll_param* %10, i32 0, i32 80)
  %18 = load %struct.atom_mpll_param*, %struct.atom_mpll_param** %9, align 8
  %19 = call i32 @memset(%struct.atom_mpll_param* %18, i32 0, i32 80)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @amdgpu_atom_parse_cmd_header(i32 %23, i32 %24, i32* %12, i32* %13)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %119

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %115 [
    i32 2, label %32
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %13, align 4
  switch i32 %33, label %111 [
    i32 1, label %34
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @cpu_to_le32(i32 %35)
  %37 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %10, i32 0, i32 15
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %10, i32 0, i32 14
  store i32 0, i32* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* @MPLL_INPUT_FLAG_STROBE_MODE_EN, align 4
  %43 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %10, i32 0, i32 14
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = bitcast %struct.atom_mpll_param* %10 to i32*
  %53 = call i32 @amdgpu_atom_execute_table(i32 %50, i32 %51, i32* %52)
  %54 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %10, i32 0, i32 11
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le16_to_cpu(i32 %56)
  %58 = load %struct.atom_mpll_param*, %struct.atom_mpll_param** %9, align 8
  %59 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %58, i32 0, i32 13
  store i8* %57, i8** %59, align 8
  %60 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %10, i32 0, i32 11
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le16_to_cpu(i32 %62)
  %64 = load %struct.atom_mpll_param*, %struct.atom_mpll_param** %9, align 8
  %65 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %64, i32 0, i32 12
  store i8* %63, i8** %65, align 8
  %66 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %10, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.atom_mpll_param*, %struct.atom_mpll_param** %9, align 8
  %69 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %68, i32 0, i32 10
  store i32 %67, i32* %69, align 8
  %70 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %10, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.atom_mpll_param*, %struct.atom_mpll_param** %9, align 8
  %73 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %10, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.atom_mpll_param*, %struct.atom_mpll_param** %9, align 8
  %77 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %10, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MPLL_CNTL_FLAG_VCO_MODE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load %struct.atom_mpll_param*, %struct.atom_mpll_param** %9, align 8
  %83 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %10, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MPLL_CNTL_FLAG_BYPASS_DQ_PLL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = load %struct.atom_mpll_param*, %struct.atom_mpll_param** %9, align 8
  %92 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %10, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MPLL_CNTL_FLAG_QDR_ENABLE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = load %struct.atom_mpll_param*, %struct.atom_mpll_param** %9, align 8
  %101 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %10, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MPLL_CNTL_FLAG_AD_HALF_RATE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  %109 = load %struct.atom_mpll_param*, %struct.atom_mpll_param** %9, align 8
  %110 = getelementptr inbounds %struct.atom_mpll_param, %struct.atom_mpll_param* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  br label %114

111:                                              ; preds = %32
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %119

114:                                              ; preds = %46
  br label %118

115:                                              ; preds = %30
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %119

118:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %115, %111, %27
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.atom_mpll_param*, i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
