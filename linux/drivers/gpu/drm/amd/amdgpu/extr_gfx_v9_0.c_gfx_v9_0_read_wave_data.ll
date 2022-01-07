; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_read_wave_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_read_wave_data.c"
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
@ixSQ_WAVE_IB_DBG0 = common dso_local global i32 0, align 4
@ixSQ_WAVE_M0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32*, i32*)* @gfx_v9_0_read_wave_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_read_wave_data(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  store i32 1, i32* %16, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ixSQ_WAVE_STATUS, align 4
  %21 = call i32 @wave_read_ind(%struct.amdgpu_device* %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  store i32 %21, i32* %27, align 4
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ixSQ_WAVE_PC_LO, align 4
  %32 = call i32 @wave_read_ind(%struct.amdgpu_device* %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ixSQ_WAVE_PC_HI, align 4
  %43 = call i32 @wave_read_ind(%struct.amdgpu_device* %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ixSQ_WAVE_EXEC_LO, align 4
  %54 = call i32 @wave_read_ind(%struct.amdgpu_device* %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ixSQ_WAVE_EXEC_HI, align 4
  %65 = call i32 @wave_read_ind(%struct.amdgpu_device* %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @ixSQ_WAVE_HW_ID, align 4
  %76 = call i32 @wave_read_ind(%struct.amdgpu_device* %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @ixSQ_WAVE_INST_DW0, align 4
  %87 = call i32 @wave_read_ind(%struct.amdgpu_device* %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32*, i32** %9, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @ixSQ_WAVE_INST_DW1, align 4
  %98 = call i32 @wave_read_ind(%struct.amdgpu_device* %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32*, i32** %9, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  store i32 %98, i32* %104, align 4
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @ixSQ_WAVE_GPR_ALLOC, align 4
  %109 = call i32 @wave_read_ind(%struct.amdgpu_device* %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32*, i32** %9, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  store i32 %109, i32* %115, align 4
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @ixSQ_WAVE_LDS_ALLOC, align 4
  %120 = call i32 @wave_read_ind(%struct.amdgpu_device* %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  store i32 %120, i32* %126, align 4
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @ixSQ_WAVE_TRAPSTS, align 4
  %131 = call i32 @wave_read_ind(%struct.amdgpu_device* %127, i32 %128, i32 %129, i32 %130)
  %132 = load i32*, i32** %9, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  store i32 %131, i32* %137, align 4
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @ixSQ_WAVE_IB_STS, align 4
  %142 = call i32 @wave_read_ind(%struct.amdgpu_device* %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32*, i32** %9, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  store i32 %142, i32* %148, align 4
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @ixSQ_WAVE_IB_DBG0, align 4
  %153 = call i32 @wave_read_ind(%struct.amdgpu_device* %149, i32 %150, i32 %151, i32 %152)
  %154 = load i32*, i32** %9, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  store i32 %153, i32* %159, align 4
  %160 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @ixSQ_WAVE_M0, align 4
  %164 = call i32 @wave_read_ind(%struct.amdgpu_device* %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32*, i32** %9, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  store i32 %164, i32* %170, align 4
  ret void
}

declare dso_local i32 @wave_read_ind(%struct.amdgpu_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
