; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_show_debugbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_show_debugbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gpu_state = type { i32, i32, %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj* }
%struct.a6xx_gpu_state_obj = type { i32, i32 }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"  - debugbus-block: A6XX_DBGBUS_VBIF\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"    count: %d\0A\00", align 1
@VBIF_DEBUGBUS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a6xx_gpu_state*, %struct.drm_printer*)* @a6xx_show_debugbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_show_debugbus(%struct.a6xx_gpu_state* %0, %struct.drm_printer* %1) #0 {
  %3 = alloca %struct.a6xx_gpu_state*, align 8
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %7 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %8 = alloca %struct.a6xx_gpu_state_obj*, align 8
  store %struct.a6xx_gpu_state* %0, %struct.a6xx_gpu_state** %3, align 8
  store %struct.drm_printer* %1, %struct.drm_printer** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %3, align 8
  %12 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %3, align 8
  %17 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %16, i32 0, i32 4
  %18 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %18, i64 %20
  store %struct.a6xx_gpu_state_obj* %21, %struct.a6xx_gpu_state_obj** %6, align 8
  %22 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %6, align 8
  %23 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %6, align 8
  %26 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %29 = call i32 @a6xx_show_debugbus_block(i32 %24, i32 %27, %struct.drm_printer* %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %3, align 8
  %35 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %34, i32 0, i32 3
  %36 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %35, align 8
  %37 = icmp ne %struct.a6xx_gpu_state_obj* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %3, align 8
  %40 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %39, i32 0, i32 3
  %41 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %40, align 8
  store %struct.a6xx_gpu_state_obj* %41, %struct.a6xx_gpu_state_obj** %7, align 8
  %42 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %43 = call i32 @drm_puts(%struct.drm_printer* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %45 = load i32, i32* @VBIF_DEBUGBUS_BLOCK_SIZE, align 4
  %46 = call i32 @drm_printf(%struct.drm_printer* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %48 = load i32, i32* @VBIF_DEBUGBUS_BLOCK_SIZE, align 4
  %49 = shl i32 %48, 2
  %50 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %7, align 8
  %51 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @print_ascii85(%struct.drm_printer* %47, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %38, %33
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %76, %54
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %3, align 8
  %58 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %55
  %62 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %3, align 8
  %63 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %62, i32 0, i32 2
  %64 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %64, i64 %66
  store %struct.a6xx_gpu_state_obj* %67, %struct.a6xx_gpu_state_obj** %8, align 8
  %68 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %69 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %72 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %75 = call i32 @a6xx_show_debugbus_block(i32 %70, i32 %73, %struct.drm_printer* %74)
  br label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %55

79:                                               ; preds = %55
  ret void
}

declare dso_local i32 @a6xx_show_debugbus_block(i32, i32, %struct.drm_printer*) #1

declare dso_local i32 @drm_puts(%struct.drm_printer*, i8*) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32) #1

declare dso_local i32 @print_ascii85(%struct.drm_printer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
