; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_smc_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_smc_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ps = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.rv7xx_power_info = type { i32, i32 }
%struct.si_ps = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SISLANDS_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@R600_AH_DFLT = common dso_local global i32 0, align 4
@CG_R_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.TYPE_7__*)* @si_populate_smc_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_populate_smc_t(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_ps*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.si_ps*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %17 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.amdgpu_device* %16)
  store %struct.rv7xx_power_info* %17, %struct.rv7xx_power_info** %8, align 8
  %18 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %19 = call %struct.si_ps* @si_get_ps(%struct.amdgpu_ps* %18)
  store %struct.si_ps* %19, %struct.si_ps** %9, align 8
  %20 = load %struct.si_ps*, %struct.si_ps** %9, align 8
  %21 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 9
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %167

27:                                               ; preds = %3
  %28 = load %struct.si_ps*, %struct.si_ps** %9, align 8
  %29 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = call i32 @CG_R(i32 65535)
  %34 = call i32 @CG_L(i32 0)
  %35 = or i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i8* %37, i8** %42, align 8
  store i32 0, i32* %4, align 4
  br label %167

43:                                               ; preds = %27
  %44 = call i8* @cpu_to_be32(i32 0)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i8* %44, i8** %49, align 8
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %163, %43
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.si_ps*, %struct.si_ps** %9, align 8
  %53 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 2
  %56 = icmp sle i32 %51, %55
  br i1 %56, label %57, label %166

57:                                               ; preds = %50
  %58 = load i32, i32* @SISLANDS_MAX_HARDWARE_POWERLEVELS, align 4
  %59 = sdiv i32 50, %58
  %60 = mul nsw i32 %59, 100
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  %63 = mul nsw i32 %60, %62
  %64 = load i32, i32* @R600_AH_DFLT, align 4
  %65 = mul nsw i32 100, %64
  %66 = load %struct.si_ps*, %struct.si_ps** %9, align 8
  %67 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.si_ps*, %struct.si_ps** %9, align 8
  %76 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @r600_calculate_at(i32 %63, i32 %65, i32 %74, i32 %82, i32* %11, i32* %12)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %57
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  %89 = mul nsw i32 %88, 1000
  %90 = load i32, i32* @R600_AH_DFLT, align 4
  %91 = mul nsw i32 50, %90
  %92 = sub nsw i32 %89, %91
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  %95 = mul nsw i32 %94, 1000
  %96 = load i32, i32* @R600_AH_DFLT, align 4
  %97 = mul nsw i32 50, %96
  %98 = add nsw i32 %95, %97
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %86, %57
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @be32_to_cpu(i8* %107)
  %109 = load i32, i32* @CG_R_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %114 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %112, %115
  %117 = sdiv i32 %116, 20000
  %118 = call i32 @CG_R(i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i8* @cpu_to_be32(i32 %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i8* %122, i8** %129, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.si_ps*, %struct.si_ps** %9, align 8
  %132 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 2
  %135 = icmp eq i32 %130, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %99
  %137 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %138 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  br label %144

140:                                              ; preds = %99
  %141 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %142 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  br label %144

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %139, %136 ], [ %143, %140 ]
  store i32 %145, i32* %13, align 4
  %146 = call i32 @CG_R(i32 65535)
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sdiv i32 %149, 20000
  %151 = call i32 @CG_L(i32 %150)
  %152 = or i32 %146, %151
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i8* @cpu_to_be32(i32 %153)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i8* %154, i8** %162, align 8
  br label %163

163:                                              ; preds = %144
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %50

166:                                              ; preds = %50
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %32, %24
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.amdgpu_device*) #1

declare dso_local %struct.si_ps* @si_get_ps(%struct.amdgpu_ps*) #1

declare dso_local i32 @CG_R(i32) #1

declare dso_local i32 @CG_L(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @r600_calculate_at(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
