; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_read_wave_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_read_wave_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@ixSQ_WAVE_STATUS = common dso_local global i32 0, align 4
@ixSQ_WAVE_PC_LO = common dso_local global i32 0, align 4
@ixSQ_WAVE_PC_HI = common dso_local global i32 0, align 4
@ixSQ_WAVE_EXEC_LO = common dso_local global i32 0, align 4
@ixSQ_WAVE_EXEC_HI = common dso_local global i32 0, align 4
@ixSQ_WAVE_HW_ID = common dso_local global i32 0, align 4
@ixSQ_WAVE_INST_DW0 = common dso_local global i32 0, align 4
@ixSQ_WAVE_INST_DW1 = common dso_local global i32 0, align 4
@ixSQ_WAVE_GPR_ALLOC = common dso_local global i32 0, align 4
@ixSQ_WAVE_LDS_ALLOC = common dso_local global i32 0, align 4
@ixSQ_WAVE_TRAPSTS = common dso_local global i32 0, align 4
@ixSQ_WAVE_IB_STS = common dso_local global i32 0, align 4
@ixSQ_WAVE_TBA_LO = common dso_local global i32 0, align 4
@ixSQ_WAVE_TBA_HI = common dso_local global i32 0, align 4
@ixSQ_WAVE_TMA_LO = common dso_local global i32 0, align 4
@ixSQ_WAVE_TMA_HI = common dso_local global i32 0, align 4
@ixSQ_WAVE_IB_DBG0 = common dso_local global i32 0, align 4
@ixSQ_WAVE_M0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i64, i64, i64*, i32*)* @gfx_v6_0_read_wave_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_read_wave_data(%struct.amdgpu_device* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i64*, i64** %9, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i64, i64* %11, i64 %15
  store i64 0, i64* %16, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* @ixSQ_WAVE_STATUS, align 4
  %21 = call i64 @wave_read_ind(%struct.amdgpu_device* %17, i64 %18, i64 %19, i32 %20)
  %22 = load i64*, i64** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i64, i64* %22, i64 %26
  store i64 %21, i64* %27, align 8
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* @ixSQ_WAVE_PC_LO, align 4
  %32 = call i64 @wave_read_ind(%struct.amdgpu_device* %28, i64 %29, i64 %30, i32 %31)
  %33 = load i64*, i64** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i64, i64* %33, i64 %37
  store i64 %32, i64* %38, align 8
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* @ixSQ_WAVE_PC_HI, align 4
  %43 = call i64 @wave_read_ind(%struct.amdgpu_device* %39, i64 %40, i64 %41, i32 %42)
  %44 = load i64*, i64** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i64, i64* %44, i64 %48
  store i64 %43, i64* %49, align 8
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* @ixSQ_WAVE_EXEC_LO, align 4
  %54 = call i64 @wave_read_ind(%struct.amdgpu_device* %50, i64 %51, i64 %52, i32 %53)
  %55 = load i64*, i64** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i64, i64* %55, i64 %59
  store i64 %54, i64* %60, align 8
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* @ixSQ_WAVE_EXEC_HI, align 4
  %65 = call i64 @wave_read_ind(%struct.amdgpu_device* %61, i64 %62, i64 %63, i32 %64)
  %66 = load i64*, i64** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i64, i64* %66, i64 %70
  store i64 %65, i64* %71, align 8
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i32, i32* @ixSQ_WAVE_HW_ID, align 4
  %76 = call i64 @wave_read_ind(%struct.amdgpu_device* %72, i64 %73, i64 %74, i32 %75)
  %77 = load i64*, i64** %9, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i64, i64* %77, i64 %81
  store i64 %76, i64* %82, align 8
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* @ixSQ_WAVE_INST_DW0, align 4
  %87 = call i64 @wave_read_ind(%struct.amdgpu_device* %83, i64 %84, i64 %85, i32 %86)
  %88 = load i64*, i64** %9, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  store i64 %87, i64* %93, align 8
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i32, i32* @ixSQ_WAVE_INST_DW1, align 4
  %98 = call i64 @wave_read_ind(%struct.amdgpu_device* %94, i64 %95, i64 %96, i32 %97)
  %99 = load i64*, i64** %9, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i64, i64* %99, i64 %103
  store i64 %98, i64* %104, align 8
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i32, i32* @ixSQ_WAVE_GPR_ALLOC, align 4
  %109 = call i64 @wave_read_ind(%struct.amdgpu_device* %105, i64 %106, i64 %107, i32 %108)
  %110 = load i64*, i64** %9, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i64, i64* %110, i64 %114
  store i64 %109, i64* %115, align 8
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i32, i32* @ixSQ_WAVE_LDS_ALLOC, align 4
  %120 = call i64 @wave_read_ind(%struct.amdgpu_device* %116, i64 %117, i64 %118, i32 %119)
  %121 = load i64*, i64** %9, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i64, i64* %121, i64 %125
  store i64 %120, i64* %126, align 8
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i32, i32* @ixSQ_WAVE_TRAPSTS, align 4
  %131 = call i64 @wave_read_ind(%struct.amdgpu_device* %127, i64 %128, i64 %129, i32 %130)
  %132 = load i64*, i64** %9, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i64, i64* %132, i64 %136
  store i64 %131, i64* %137, align 8
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load i32, i32* @ixSQ_WAVE_IB_STS, align 4
  %142 = call i64 @wave_read_ind(%struct.amdgpu_device* %138, i64 %139, i64 %140, i32 %141)
  %143 = load i64*, i64** %9, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i64, i64* %143, i64 %147
  store i64 %142, i64* %148, align 8
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load i32, i32* @ixSQ_WAVE_TBA_LO, align 4
  %153 = call i64 @wave_read_ind(%struct.amdgpu_device* %149, i64 %150, i64 %151, i32 %152)
  %154 = load i64*, i64** %9, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i64, i64* %154, i64 %158
  store i64 %153, i64* %159, align 8
  %160 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %161 = load i64, i64* %7, align 8
  %162 = load i64, i64* %8, align 8
  %163 = load i32, i32* @ixSQ_WAVE_TBA_HI, align 4
  %164 = call i64 @wave_read_ind(%struct.amdgpu_device* %160, i64 %161, i64 %162, i32 %163)
  %165 = load i64*, i64** %9, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i64, i64* %165, i64 %169
  store i64 %164, i64* %170, align 8
  %171 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* %8, align 8
  %174 = load i32, i32* @ixSQ_WAVE_TMA_LO, align 4
  %175 = call i64 @wave_read_ind(%struct.amdgpu_device* %171, i64 %172, i64 %173, i32 %174)
  %176 = load i64*, i64** %9, align 8
  %177 = load i32*, i32** %10, align 8
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i64, i64* %176, i64 %180
  store i64 %175, i64* %181, align 8
  %182 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %183 = load i64, i64* %7, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i32, i32* @ixSQ_WAVE_TMA_HI, align 4
  %186 = call i64 @wave_read_ind(%struct.amdgpu_device* %182, i64 %183, i64 %184, i32 %185)
  %187 = load i64*, i64** %9, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i64, i64* %187, i64 %191
  store i64 %186, i64* %192, align 8
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %194 = load i64, i64* %7, align 8
  %195 = load i64, i64* %8, align 8
  %196 = load i32, i32* @ixSQ_WAVE_IB_DBG0, align 4
  %197 = call i64 @wave_read_ind(%struct.amdgpu_device* %193, i64 %194, i64 %195, i32 %196)
  %198 = load i64*, i64** %9, align 8
  %199 = load i32*, i32** %10, align 8
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i64, i64* %198, i64 %202
  store i64 %197, i64* %203, align 8
  %204 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %205 = load i64, i64* %7, align 8
  %206 = load i64, i64* %8, align 8
  %207 = load i32, i32* @ixSQ_WAVE_M0, align 4
  %208 = call i64 @wave_read_ind(%struct.amdgpu_device* %204, i64 %205, i64 %206, i32 %207)
  %209 = load i64*, i64** %9, align 8
  %210 = load i32*, i32** %10, align 8
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i64, i64* %209, i64 %213
  store i64 %208, i64* %214, align 8
  ret void
}

declare dso_local i64 @wave_read_ind(%struct.amdgpu_device*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
