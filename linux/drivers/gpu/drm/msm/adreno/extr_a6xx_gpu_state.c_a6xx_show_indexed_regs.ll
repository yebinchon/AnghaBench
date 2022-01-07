; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_show_indexed_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_show_indexed_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gpu_state_obj = type { i32, %struct.a6xx_indexed_registers* }
%struct.a6xx_indexed_registers = type { i32, i32 }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"  - regs-name: \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"    dwords: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a6xx_gpu_state_obj*, %struct.drm_printer*)* @a6xx_show_indexed_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_show_indexed_regs(%struct.a6xx_gpu_state_obj* %0, %struct.drm_printer* %1) #0 {
  %3 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca %struct.a6xx_indexed_registers*, align 8
  store %struct.a6xx_gpu_state_obj* %0, %struct.a6xx_gpu_state_obj** %3, align 8
  store %struct.drm_printer* %1, %struct.drm_printer** %4, align 8
  %6 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %3, align 8
  %7 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %6, i32 0, i32 1
  %8 = load %struct.a6xx_indexed_registers*, %struct.a6xx_indexed_registers** %7, align 8
  store %struct.a6xx_indexed_registers* %8, %struct.a6xx_indexed_registers** %5, align 8
  %9 = load %struct.a6xx_indexed_registers*, %struct.a6xx_indexed_registers** %5, align 8
  %10 = icmp ne %struct.a6xx_indexed_registers* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %32

12:                                               ; preds = %2
  %13 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %14 = load %struct.a6xx_indexed_registers*, %struct.a6xx_indexed_registers** %5, align 8
  %15 = getelementptr inbounds %struct.a6xx_indexed_registers, %struct.a6xx_indexed_registers* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @print_name(%struct.drm_printer* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %19 = load %struct.a6xx_indexed_registers*, %struct.a6xx_indexed_registers** %5, align 8
  %20 = getelementptr inbounds %struct.a6xx_indexed_registers, %struct.a6xx_indexed_registers* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @drm_printf(%struct.drm_printer* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %24 = load %struct.a6xx_indexed_registers*, %struct.a6xx_indexed_registers** %5, align 8
  %25 = getelementptr inbounds %struct.a6xx_indexed_registers, %struct.a6xx_indexed_registers* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 2
  %28 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %3, align 8
  %29 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @print_ascii85(%struct.drm_printer* %23, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @print_name(%struct.drm_printer*, i8*, i32) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32) #1

declare dso_local i32 @print_ascii85(%struct.drm_printer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
