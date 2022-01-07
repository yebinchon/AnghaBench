; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_show_debugbus_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_show_debugbus_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_debugbus_block = type { i32, i32 }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"  - debugbus-block: \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"    count: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a6xx_debugbus_block*, i32*, %struct.drm_printer*)* @a6xx_show_debugbus_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_show_debugbus_block(%struct.a6xx_debugbus_block* %0, i32* %1, %struct.drm_printer* %2) #0 {
  %4 = alloca %struct.a6xx_debugbus_block*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_printer*, align 8
  store %struct.a6xx_debugbus_block* %0, %struct.a6xx_debugbus_block** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.drm_printer* %2, %struct.drm_printer** %6, align 8
  %7 = load %struct.a6xx_debugbus_block*, %struct.a6xx_debugbus_block** %4, align 8
  %8 = icmp ne %struct.a6xx_debugbus_block* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = load %struct.drm_printer*, %struct.drm_printer** %6, align 8
  %11 = load %struct.a6xx_debugbus_block*, %struct.a6xx_debugbus_block** %4, align 8
  %12 = getelementptr inbounds %struct.a6xx_debugbus_block, %struct.a6xx_debugbus_block* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @print_name(%struct.drm_printer* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.drm_printer*, %struct.drm_printer** %6, align 8
  %16 = load %struct.a6xx_debugbus_block*, %struct.a6xx_debugbus_block** %4, align 8
  %17 = getelementptr inbounds %struct.a6xx_debugbus_block, %struct.a6xx_debugbus_block* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 1
  %20 = call i32 @drm_printf(%struct.drm_printer* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.drm_printer*, %struct.drm_printer** %6, align 8
  %22 = load %struct.a6xx_debugbus_block*, %struct.a6xx_debugbus_block** %4, align 8
  %23 = getelementptr inbounds %struct.a6xx_debugbus_block, %struct.a6xx_debugbus_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 3
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @print_ascii85(%struct.drm_printer* %21, i32 %25, i32* %26)
  br label %28

28:                                               ; preds = %9, %3
  ret void
}

declare dso_local i32 @print_name(%struct.drm_printer*, i8*, i32) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32) #1

declare dso_local i32 @print_ascii85(%struct.drm_printer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
