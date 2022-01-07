; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v1_0.c_mmhub_v1_0_query_ras_error_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v1_0.c_mmhub_v1_0_query_ras_error_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.ras_err_data = type { i32, i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmMMEA0_EDC_CNT_VG20 = common dso_local global i32 0, align 4
@mmMMEA0_EDC_CNT2_VG20 = common dso_local global i32 0, align 4
@mmMMEA1_EDC_CNT_VG20 = common dso_local global i32 0, align 4
@mmMMEA1_EDC_CNT2_VG20 = common dso_local global i32 0, align 4
@EA_EDC_CNT_MASK = common dso_local global i32 0, align 4
@EA_EDC_CNT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i8*)* @mmhub_v1_0_query_ras_error_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v1_0_query_ras_error_count(%struct.amdgpu_device* %0, i8* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ras_err_data*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ras_err_data*
  store %struct.ras_err_data* %12, %struct.ras_err_data** %10, align 8
  %13 = load i32, i32* @MMHUB, align 4
  %14 = load i32, i32* @mmMMEA0_EDC_CNT_VG20, align 4
  %15 = call i32 @RREG32_SOC15(i32 %13, i32 0, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @MMHUB, align 4
  %17 = load i32, i32* @mmMMEA0_EDC_CNT2_VG20, align 4
  %18 = call i32 @RREG32_SOC15(i32 %16, i32 0, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @MMHUB, align 4
  %20 = load i32, i32* @mmMMEA1_EDC_CNT_VG20, align 4
  %21 = call i32 @RREG32_SOC15(i32 %19, i32 0, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @MMHUB, align 4
  %23 = load i32, i32* @mmMMEA1_EDC_CNT2_VG20, align 4
  %24 = call i32 @RREG32_SOC15(i32 %22, i32 0, i32 %23)
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %69, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %28, label %72

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @EA_EDC_CNT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.ras_err_data*, %struct.ras_err_data** %10, align 8
  %33 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EA_EDC_CNT_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.ras_err_data*, %struct.ras_err_data** %10, align 8
  %40 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @EA_EDC_CNT_SHIFT, align 4
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @EA_EDC_CNT_SHIFT, align 4
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EA_EDC_CNT_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.ras_err_data*, %struct.ras_err_data** %10, align 8
  %53 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @EA_EDC_CNT_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.ras_err_data*, %struct.ras_err_data** %10, align 8
  %60 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @EA_EDC_CNT_SHIFT, align 4
  %64 = load i32, i32* %6, align 4
  %65 = ashr i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @EA_EDC_CNT_SHIFT, align 4
  %67 = load i32, i32* %8, align 4
  %68 = ashr i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %28
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %25

72:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %97, %72
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 5
  br i1 %75, label %76, label %100

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @EA_EDC_CNT_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.ras_err_data*, %struct.ras_err_data** %10, align 8
  %81 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @EA_EDC_CNT_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load %struct.ras_err_data*, %struct.ras_err_data** %10, align 8
  %88 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @EA_EDC_CNT_SHIFT, align 4
  %92 = load i32, i32* %6, align 4
  %93 = ashr i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @EA_EDC_CNT_SHIFT, align 4
  %95 = load i32, i32* %8, align 4
  %96 = ashr i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %76
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %73

100:                                              ; preds = %73
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %145, %100
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 3
  br i1 %103, label %104, label %148

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @EA_EDC_CNT_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load %struct.ras_err_data*, %struct.ras_err_data** %10, align 8
  %109 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @EA_EDC_CNT_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load %struct.ras_err_data*, %struct.ras_err_data** %10, align 8
  %116 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* @EA_EDC_CNT_SHIFT, align 4
  %120 = load i32, i32* %7, align 4
  %121 = ashr i32 %120, %119
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* @EA_EDC_CNT_SHIFT, align 4
  %123 = load i32, i32* %9, align 4
  %124 = ashr i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @EA_EDC_CNT_MASK, align 4
  %127 = and i32 %125, %126
  %128 = load %struct.ras_err_data*, %struct.ras_err_data** %10, align 8
  %129 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @EA_EDC_CNT_MASK, align 4
  %134 = and i32 %132, %133
  %135 = load %struct.ras_err_data*, %struct.ras_err_data** %10, align 8
  %136 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* @EA_EDC_CNT_SHIFT, align 4
  %140 = load i32, i32* %7, align 4
  %141 = ashr i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* @EA_EDC_CNT_SHIFT, align 4
  %143 = load i32, i32* %9, align 4
  %144 = ashr i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %104
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %101

148:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %173, %148
  %150 = load i32, i32* %5, align 4
  %151 = icmp slt i32 %150, 6
  br i1 %151, label %152, label %176

152:                                              ; preds = %149
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @EA_EDC_CNT_MASK, align 4
  %155 = and i32 %153, %154
  %156 = load %struct.ras_err_data*, %struct.ras_err_data** %10, align 8
  %157 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @EA_EDC_CNT_MASK, align 4
  %162 = and i32 %160, %161
  %163 = load %struct.ras_err_data*, %struct.ras_err_data** %10, align 8
  %164 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* @EA_EDC_CNT_SHIFT, align 4
  %168 = load i32, i32* %7, align 4
  %169 = ashr i32 %168, %167
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* @EA_EDC_CNT_SHIFT, align 4
  %171 = load i32, i32* %9, align 4
  %172 = ashr i32 %171, %170
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %152
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  br label %149

176:                                              ; preds = %149
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
