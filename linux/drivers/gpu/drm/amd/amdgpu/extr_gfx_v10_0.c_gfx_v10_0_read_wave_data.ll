; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_read_wave_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_read_wave_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@ixSQ_WAVE_STATUS = common dso_local global i32 0, align 4
@ixSQ_WAVE_PC_LO = common dso_local global i32 0, align 4
@ixSQ_WAVE_PC_HI = common dso_local global i32 0, align 4
@ixSQ_WAVE_EXEC_LO = common dso_local global i32 0, align 4
@ixSQ_WAVE_EXEC_HI = common dso_local global i32 0, align 4
@ixSQ_WAVE_HW_ID1 = common dso_local global i32 0, align 4
@ixSQ_WAVE_HW_ID2 = common dso_local global i32 0, align 4
@ixSQ_WAVE_INST_DW0 = common dso_local global i32 0, align 4
@ixSQ_WAVE_GPR_ALLOC = common dso_local global i32 0, align 4
@ixSQ_WAVE_LDS_ALLOC = common dso_local global i32 0, align 4
@ixSQ_WAVE_TRAPSTS = common dso_local global i32 0, align 4
@ixSQ_WAVE_IB_STS = common dso_local global i32 0, align 4
@ixSQ_WAVE_IB_STS2 = common dso_local global i32 0, align 4
@ixSQ_WAVE_IB_DBG1 = common dso_local global i32 0, align 4
@ixSQ_WAVE_M0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i64, i64, i64*, i32*)* @gfx_v10_0_read_wave_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_read_wave_data(%struct.amdgpu_device* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
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
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i64*, i64** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i64, i64* %15, i64 %19
  store i64 2, i64* %20, align 8
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* @ixSQ_WAVE_STATUS, align 4
  %24 = call i64 @wave_read_ind(%struct.amdgpu_device* %21, i64 %22, i32 %23)
  %25 = load i64*, i64** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i64, i64* %25, i64 %29
  store i64 %24, i64* %30, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* @ixSQ_WAVE_PC_LO, align 4
  %34 = call i64 @wave_read_ind(%struct.amdgpu_device* %31, i64 %32, i32 %33)
  %35 = load i64*, i64** %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i64, i64* %35, i64 %39
  store i64 %34, i64* %40, align 8
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* @ixSQ_WAVE_PC_HI, align 4
  %44 = call i64 @wave_read_ind(%struct.amdgpu_device* %41, i64 %42, i32 %43)
  %45 = load i64*, i64** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  store i64 %44, i64* %50, align 8
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* @ixSQ_WAVE_EXEC_LO, align 4
  %54 = call i64 @wave_read_ind(%struct.amdgpu_device* %51, i64 %52, i32 %53)
  %55 = load i64*, i64** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i64, i64* %55, i64 %59
  store i64 %54, i64* %60, align 8
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* @ixSQ_WAVE_EXEC_HI, align 4
  %64 = call i64 @wave_read_ind(%struct.amdgpu_device* %61, i64 %62, i32 %63)
  %65 = load i64*, i64** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i64, i64* %65, i64 %69
  store i64 %64, i64* %70, align 8
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* @ixSQ_WAVE_HW_ID1, align 4
  %74 = call i64 @wave_read_ind(%struct.amdgpu_device* %71, i64 %72, i32 %73)
  %75 = load i64*, i64** %9, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i64, i64* %75, i64 %79
  store i64 %74, i64* %80, align 8
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* @ixSQ_WAVE_HW_ID2, align 4
  %84 = call i64 @wave_read_ind(%struct.amdgpu_device* %81, i64 %82, i32 %83)
  %85 = load i64*, i64** %9, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i64, i64* %85, i64 %89
  store i64 %84, i64* %90, align 8
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32, i32* @ixSQ_WAVE_INST_DW0, align 4
  %94 = call i64 @wave_read_ind(%struct.amdgpu_device* %91, i64 %92, i32 %93)
  %95 = load i64*, i64** %9, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i64, i64* %95, i64 %99
  store i64 %94, i64* %100, align 8
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i32, i32* @ixSQ_WAVE_GPR_ALLOC, align 4
  %104 = call i64 @wave_read_ind(%struct.amdgpu_device* %101, i64 %102, i32 %103)
  %105 = load i64*, i64** %9, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i64, i64* %105, i64 %109
  store i64 %104, i64* %110, align 8
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i32, i32* @ixSQ_WAVE_LDS_ALLOC, align 4
  %114 = call i64 @wave_read_ind(%struct.amdgpu_device* %111, i64 %112, i32 %113)
  %115 = load i64*, i64** %9, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i64, i64* %115, i64 %119
  store i64 %114, i64* %120, align 8
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i32, i32* @ixSQ_WAVE_TRAPSTS, align 4
  %124 = call i64 @wave_read_ind(%struct.amdgpu_device* %121, i64 %122, i32 %123)
  %125 = load i64*, i64** %9, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i64, i64* %125, i64 %129
  store i64 %124, i64* %130, align 8
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i32, i32* @ixSQ_WAVE_IB_STS, align 4
  %134 = call i64 @wave_read_ind(%struct.amdgpu_device* %131, i64 %132, i32 %133)
  %135 = load i64*, i64** %9, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i64, i64* %135, i64 %139
  store i64 %134, i64* %140, align 8
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %142 = load i64, i64* %8, align 8
  %143 = load i32, i32* @ixSQ_WAVE_IB_STS2, align 4
  %144 = call i64 @wave_read_ind(%struct.amdgpu_device* %141, i64 %142, i32 %143)
  %145 = load i64*, i64** %9, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i64, i64* %145, i64 %149
  store i64 %144, i64* %150, align 8
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load i32, i32* @ixSQ_WAVE_IB_DBG1, align 4
  %154 = call i64 @wave_read_ind(%struct.amdgpu_device* %151, i64 %152, i32 %153)
  %155 = load i64*, i64** %9, align 8
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i64, i64* %155, i64 %159
  store i64 %154, i64* %160, align 8
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %162 = load i64, i64* %8, align 8
  %163 = load i32, i32* @ixSQ_WAVE_M0, align 4
  %164 = call i64 @wave_read_ind(%struct.amdgpu_device* %161, i64 %162, i32 %163)
  %165 = load i64*, i64** %9, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i64, i64* %165, i64 %169
  store i64 %164, i64* %170, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @wave_read_ind(%struct.amdgpu_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
