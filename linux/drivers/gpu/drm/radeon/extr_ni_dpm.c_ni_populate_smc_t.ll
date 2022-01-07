; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_smc_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_smc_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.rv7xx_power_info = type { i32, i32 }
%struct.evergreen_power_info = type { i64, i64 }
%struct.ni_ps = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@R600_AH_DFLT = common dso_local global i32 0, align 4
@CG_R_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_7__*)* @ni_populate_smc_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_populate_smc_t(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.evergreen_power_info*, align 8
  %10 = alloca %struct.ni_ps*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %18 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %17)
  store %struct.rv7xx_power_info* %18, %struct.rv7xx_power_info** %8, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %20 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %19)
  store %struct.evergreen_power_info* %20, %struct.evergreen_power_info** %9, align 8
  %21 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %22 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %21)
  store %struct.ni_ps* %22, %struct.ni_ps** %10, align 8
  %23 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %24 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 9
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %204

30:                                               ; preds = %3
  %31 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %32 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = call i32 @CG_R(i32 65535)
  %37 = call i32 @CG_L(i32 0)
  %38 = or i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i8* %40, i8** %45, align 8
  store i32 0, i32* %4, align 4
  br label %204

46:                                               ; preds = %30
  %47 = call i8* @cpu_to_be32(i32 0)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i8* %47, i8** %52, align 8
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %200, %46
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %56 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 2
  %59 = icmp sle i32 %54, %58
  br i1 %59, label %60, label %203

60:                                               ; preds = %53
  %61 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %62 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %60
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %68 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 2, i32 8
  %73 = mul nsw i32 %66, %72
  %74 = add nsw i32 %73, 2
  %75 = mul nsw i32 1000, %74
  %76 = load i32, i32* @R600_AH_DFLT, align 4
  %77 = mul nsw i32 100, %76
  %78 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %79 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %88 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @r600_calculate_at(i32 %75, i32 %77, i32 %86, i32 %94, i32* %12, i32* %13)
  store i32 %95, i32* %16, align 4
  br label %120

96:                                               ; preds = %60
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  %99 = mul nsw i32 1000, %98
  %100 = load i32, i32* @R600_AH_DFLT, align 4
  %101 = mul nsw i32 100, %100
  %102 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %103 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %112 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @r600_calculate_at(i32 %99, i32 %101, i32 %110, i32 %118, i32* %12, i32* %13)
  store i32 %119, i32* %16, align 4
  br label %120

120:                                              ; preds = %96, %65
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  %126 = mul nsw i32 %125, 1000
  %127 = load i32, i32* @R600_AH_DFLT, align 4
  %128 = mul nsw i32 50, %127
  %129 = sub nsw i32 %126, %128
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  %132 = mul nsw i32 %131, 1000
  %133 = load i32, i32* @R600_AH_DFLT, align 4
  %134 = mul nsw i32 50, %133
  %135 = add nsw i32 %132, %134
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %123, %120
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @be32_to_cpu(i8* %144)
  %146 = load i32, i32* @CG_R_MASK, align 4
  %147 = xor i32 %146, -1
  %148 = and i32 %145, %147
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %151 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %149, %152
  %154 = sdiv i32 %153, 20000
  %155 = call i32 @CG_R(i32 %154)
  %156 = load i32, i32* %11, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = call i8* @cpu_to_be32(i32 %158)
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  store i8* %159, i8** %166, align 8
  %167 = load i32, i32* %15, align 4
  %168 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %169 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 2
  %172 = icmp eq i32 %167, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %136
  %174 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %175 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  br label %181

177:                                              ; preds = %136
  %178 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %179 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  br label %181

181:                                              ; preds = %177, %173
  %182 = phi i32 [ %176, %173 ], [ %180, %177 ]
  store i32 %182, i32* %14, align 4
  %183 = call i32 @CG_R(i32 65535)
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %14, align 4
  %186 = mul nsw i32 %184, %185
  %187 = sdiv i32 %186, 20000
  %188 = call i32 @CG_L(i32 %187)
  %189 = or i32 %183, %188
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = call i8* @cpu_to_be32(i32 %190)
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = load i32, i32* %15, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  store i8* %191, i8** %199, align 8
  br label %200

200:                                              ; preds = %181
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %53

203:                                              ; preds = %53
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %203, %35, %27
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

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
