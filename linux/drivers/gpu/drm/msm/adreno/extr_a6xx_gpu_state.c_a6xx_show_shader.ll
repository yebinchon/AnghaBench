; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_show_shader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_show_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gpu_state_obj = type { i64, %struct.a6xx_shader_block* }
%struct.a6xx_shader_block = type { i32, i32 }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"  - type: \00", align 1
@A6XX_NUM_SHADER_BANKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"    - bank: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"      size: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a6xx_gpu_state_obj*, %struct.drm_printer*)* @a6xx_show_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_show_shader(%struct.a6xx_gpu_state_obj* %0, %struct.drm_printer* %1) #0 {
  %3 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca %struct.a6xx_shader_block*, align 8
  %6 = alloca i32, align 4
  store %struct.a6xx_gpu_state_obj* %0, %struct.a6xx_gpu_state_obj** %3, align 8
  store %struct.drm_printer* %1, %struct.drm_printer** %4, align 8
  %7 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %3, align 8
  %8 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %7, i32 0, i32 1
  %9 = load %struct.a6xx_shader_block*, %struct.a6xx_shader_block** %8, align 8
  store %struct.a6xx_shader_block* %9, %struct.a6xx_shader_block** %5, align 8
  %10 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %3, align 8
  %11 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %10, i32 0, i32 1
  %12 = load %struct.a6xx_shader_block*, %struct.a6xx_shader_block** %11, align 8
  %13 = icmp ne %struct.a6xx_shader_block* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %17 = load %struct.a6xx_shader_block*, %struct.a6xx_shader_block** %5, align 8
  %18 = getelementptr inbounds %struct.a6xx_shader_block, %struct.a6xx_shader_block* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @print_name(%struct.drm_printer* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %56, %15
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @A6XX_NUM_SHADER_BANKS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @drm_printf(%struct.drm_printer* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %30 = load %struct.a6xx_shader_block*, %struct.a6xx_shader_block** %5, align 8
  %31 = getelementptr inbounds %struct.a6xx_shader_block, %struct.a6xx_shader_block* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @drm_printf(%struct.drm_printer* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %3, align 8
  %35 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  br label %56

39:                                               ; preds = %25
  %40 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %41 = load %struct.a6xx_shader_block*, %struct.a6xx_shader_block** %5, align 8
  %42 = getelementptr inbounds %struct.a6xx_shader_block, %struct.a6xx_shader_block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 2
  %45 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %3, align 8
  %46 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.a6xx_shader_block*, %struct.a6xx_shader_block** %5, align 8
  %49 = getelementptr inbounds %struct.a6xx_shader_block, %struct.a6xx_shader_block* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %47, %53
  %55 = call i32 @print_ascii85(%struct.drm_printer* %40, i32 %44, i64 %54)
  br label %56

56:                                               ; preds = %39, %38
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %21

59:                                               ; preds = %14, %21
  ret void
}

declare dso_local i32 @print_name(%struct.drm_printer*, i8*, i32) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32) #1

declare dso_local i32 @print_ascii85(%struct.drm_printer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
