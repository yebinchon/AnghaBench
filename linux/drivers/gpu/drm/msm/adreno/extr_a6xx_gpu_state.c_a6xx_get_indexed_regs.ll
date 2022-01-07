; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_indexed_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_indexed_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32 }
%struct.a6xx_indexed_registers = type { i32, i32, i32 }
%struct.a6xx_gpu_state_obj = type { i32*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_indexed_registers*, %struct.a6xx_gpu_state_obj*)* @a6xx_get_indexed_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_indexed_regs(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1, %struct.a6xx_indexed_registers* %2, %struct.a6xx_gpu_state_obj* %3) #0 {
  %5 = alloca %struct.msm_gpu*, align 8
  %6 = alloca %struct.a6xx_gpu_state*, align 8
  %7 = alloca %struct.a6xx_indexed_registers*, align 8
  %8 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %9 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %5, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %6, align 8
  store %struct.a6xx_indexed_registers* %2, %struct.a6xx_indexed_registers** %7, align 8
  store %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_gpu_state_obj** %8, align 8
  %10 = load %struct.a6xx_indexed_registers*, %struct.a6xx_indexed_registers** %7, align 8
  %11 = bitcast %struct.a6xx_indexed_registers* %10 to i8*
  %12 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %13 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %6, align 8
  %15 = load %struct.a6xx_indexed_registers*, %struct.a6xx_indexed_registers** %7, align 8
  %16 = getelementptr inbounds %struct.a6xx_indexed_registers, %struct.a6xx_indexed_registers* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @state_kcalloc(%struct.a6xx_gpu_state* %14, i32 %17, i32 4)
  %19 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %20 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %22 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %53

26:                                               ; preds = %4
  %27 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %28 = load %struct.a6xx_indexed_registers*, %struct.a6xx_indexed_registers** %7, align 8
  %29 = getelementptr inbounds %struct.a6xx_indexed_registers, %struct.a6xx_indexed_registers* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gpu_write(%struct.msm_gpu* %27, i32 %30, i32 0)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %50, %26
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.a6xx_indexed_registers*, %struct.a6xx_indexed_registers** %7, align 8
  %35 = getelementptr inbounds %struct.a6xx_indexed_registers, %struct.a6xx_indexed_registers* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %40 = load %struct.a6xx_indexed_registers*, %struct.a6xx_indexed_registers** %7, align 8
  %41 = getelementptr inbounds %struct.a6xx_indexed_registers, %struct.a6xx_indexed_registers* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gpu_read(%struct.msm_gpu* %39, i32 %42)
  %44 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %45 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %32

53:                                               ; preds = %25, %32
  ret void
}

declare dso_local i32* @state_kcalloc(%struct.a6xx_gpu_state*, i32, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
