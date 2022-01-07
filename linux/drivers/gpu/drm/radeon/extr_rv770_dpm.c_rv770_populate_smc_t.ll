; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_populate_smc_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_populate_smc_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }
%struct.rv7xx_ps = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.rv7xx_power_info = type { i32, i32, i32, i32, i32, i32 }

@RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE = common dso_local global i32 0, align 4
@R600_AH_DFLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv770_populate_smc_t(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.rv7xx_ps*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %17 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %16)
  store %struct.rv7xx_ps* %17, %struct.rv7xx_ps** %7, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %18)
  store %struct.rv7xx_power_info* %19, %struct.rv7xx_power_info** %8, align 8
  %20 = load i32, i32* @RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 0, i32* %27, align 16
  %28 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 100, i32* %28, align 8
  %29 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %30 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %35 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %39 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @R600_AH_DFLT, align 4
  %44 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %45 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  %48 = mul nsw i32 %42, %47
  %49 = add nsw i32 %37, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %51 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %56 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 100, %57
  %59 = mul nsw i32 %54, %58
  %60 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %61 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %66 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = add nsw i32 %59, %68
  store i32 %69, i32* %11, align 4
  %70 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %71 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %74 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %11, align 4
  %79 = sdiv i32 %77, %78
  %80 = sub nsw i32 %72, %79
  %81 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %83 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %86 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 100, %87
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = sdiv i32 %90, %91
  %93 = add nsw i32 %84, %92
  %94 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %93, i32* %94, align 16
  %95 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %96 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %101 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  %104 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %105 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* @R600_AH_DFLT, align 4
  %110 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %111 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %109, %112
  %114 = mul nsw i32 %108, %113
  %115 = add nsw i32 %103, %114
  store i32 %115, i32* %10, align 4
  %116 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %117 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %122 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 100, %123
  %125 = mul nsw i32 %120, %124
  %126 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %127 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %132 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %130, %133
  %135 = add nsw i32 %125, %134
  store i32 %135, i32* %11, align 4
  %136 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %137 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %140 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %10, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32, i32* %11, align 4
  %145 = sdiv i32 %143, %144
  %146 = sub nsw i32 %138, %145
  %147 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %146, i32* %147, align 8
  %148 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %149 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %152 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 100, %153
  %155 = load i32, i32* %10, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load i32, i32* %11, align 4
  %158 = sdiv i32 %156, %157
  %159 = add nsw i32 %150, %158
  %160 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %159, i32* %160, align 4
  store i32 0, i32* %9, align 4
  br label %161

161:                                              ; preds = %197, %3
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE, align 4
  %164 = sub nsw i32 %163, 1
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %200

166:                                              ; preds = %161
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %26, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %172 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %170, %173
  %175 = sdiv i32 %174, 200
  %176 = call i32 @CG_R(i32 %175)
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %23, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %182 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %180, %183
  %185 = sdiv i32 %184, 200
  %186 = call i32 @CG_L(i32 %185)
  %187 = or i32 %176, %186
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* %15, align 4
  %189 = call i8* @cpu_to_be32(i32 %188)
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  store i8* %189, i8** %196, align 8
  br label %197

197:                                              ; preds = %166
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %9, align 4
  br label %161

200:                                              ; preds = %161
  %201 = load i32, i32* @RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %26, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %207 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %205, %208
  %210 = sdiv i32 %209, 200
  %211 = call i32 @CG_R(i32 %210)
  %212 = load i32, i32* @RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %23, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %218 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 %216, %219
  %221 = sdiv i32 %220, 200
  %222 = call i32 @CG_L(i32 %221)
  %223 = or i32 %211, %222
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %15, align 4
  %225 = call i8* @cpu_to_be32(i32 %224)
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = load i32, i32* @RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE, align 4
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  store i8* %225, i8** %233, align 8
  %234 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %234)
  ret i32 0
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CG_R(i32) #1

declare dso_local i32 @CG_L(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
