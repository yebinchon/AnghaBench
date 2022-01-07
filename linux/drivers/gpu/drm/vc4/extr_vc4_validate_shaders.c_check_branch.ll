; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_check_branch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_check_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_validated_shader_info = type { i32 }
%struct.vc4_shader_validation_state = type { i32, i32 }

@QPU_BRANCH_TARGET = common dso_local global i32 0, align 4
@QPU_WADDR_ADD = common dso_local global i32 0, align 4
@QPU_WADDR_MUL = common dso_local global i32 0, align 4
@QPU_W_NOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"branch instruction at %d wrote a register.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*, i32)* @check_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_branch(i32 %0, %struct.vc4_validated_shader_info* %1, %struct.vc4_shader_validation_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vc4_validated_shader_info*, align 8
  %8 = alloca %struct.vc4_shader_validation_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.vc4_validated_shader_info* %1, %struct.vc4_validated_shader_info** %7, align 8
  store %struct.vc4_shader_validation_state* %2, %struct.vc4_shader_validation_state** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @QPU_BRANCH_TARGET, align 4
  %15 = call i8* @QPU_GET_FIELD(i32 %13, i32 %14)
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @QPU_WADDR_ADD, align 4
  %18 = call i8* @QPU_GET_FIELD(i32 %16, i32 %17)
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @QPU_WADDR_MUL, align 4
  %22 = call i8* @QPU_GET_FIELD(i32 %20, i32 %21)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %12, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %8, align 8
  %29 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %4
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @QPU_W_NOP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @QPU_W_NOP, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %30
  %39 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %8, align 8
  %40 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 0, i32* %5, align 4
  br label %44

43:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i8* @QPU_GET_FIELD(i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
