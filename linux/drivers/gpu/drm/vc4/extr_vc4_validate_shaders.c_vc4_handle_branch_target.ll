; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_vc4_handle_branch_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_vc4_handle_branch_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_shader_validation_state = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Branch target landed during TMU setup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_shader_validation_state*)* @vc4_handle_branch_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_handle_branch_target(%struct.vc4_shader_validation_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc4_shader_validation_state*, align 8
  %4 = alloca i32, align 4
  store %struct.vc4_shader_validation_state* %0, %struct.vc4_shader_validation_state** %3, align 8
  %5 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %6 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %10 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @test_bit(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %17 = call i64 @texturing_in_progress(%struct.vc4_shader_validation_state* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %23 = call i32 @reset_validation_state(%struct.vc4_shader_validation_state* %22)
  %24 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %25 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %19, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @texturing_in_progress(%struct.vc4_shader_validation_state*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @reset_validation_state(%struct.vc4_shader_validation_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
