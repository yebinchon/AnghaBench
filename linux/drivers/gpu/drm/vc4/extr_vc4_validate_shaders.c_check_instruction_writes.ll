; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_check_instruction_writes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_check_instruction_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_validated_shader_info = type { i32 }
%struct.vc4_shader_validation_state = type { i64, i32* }

@QPU_WADDR_ADD = common dso_local global i32 0, align 4
@QPU_WADDR_MUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ADD and MUL both set up textures\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*)* @check_instruction_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_instruction_writes(%struct.vc4_validated_shader_info* %0, %struct.vc4_shader_validation_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc4_validated_shader_info*, align 8
  %5 = alloca %struct.vc4_shader_validation_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vc4_validated_shader_info* %0, %struct.vc4_validated_shader_info** %4, align 8
  store %struct.vc4_shader_validation_state* %1, %struct.vc4_shader_validation_state** %5, align 8
  %10 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %5, align 8
  %11 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %5, align 8
  %14 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @QPU_WADDR_ADD, align 4
  %20 = call i32 @QPU_GET_FIELD(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @QPU_WADDR_MUL, align 4
  %23 = call i32 @QPU_GET_FIELD(i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @is_tmu_write(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @is_tmu_write(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %50

33:                                               ; preds = %27, %2
  %34 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %4, align 8
  %35 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %5, align 8
  %36 = call i64 @check_reg_write(%struct.vc4_validated_shader_info* %34, %struct.vc4_shader_validation_state* %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %4, align 8
  %40 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %5, align 8
  %41 = call i64 @check_reg_write(%struct.vc4_validated_shader_info* %39, %struct.vc4_shader_validation_state* %40, i32 1)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %4, align 8
  %47 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %5, align 8
  %48 = call i32 @track_live_clamps(%struct.vc4_validated_shader_info* %46, %struct.vc4_shader_validation_state* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %31
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @QPU_GET_FIELD(i32, i32) #1

declare dso_local i64 @is_tmu_write(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i64 @check_reg_write(%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*, i32) #1

declare dso_local i32 @track_live_clamps(%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
