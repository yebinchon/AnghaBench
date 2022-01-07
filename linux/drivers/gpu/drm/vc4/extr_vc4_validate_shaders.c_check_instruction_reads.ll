; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_check_instruction_reads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_check_instruction_reads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_validated_shader_info = type { i32 }
%struct.vc4_shader_validation_state = type { i64, i32, i64, i32* }

@QPU_RADDR_A = common dso_local global i32 0, align 4
@QPU_RADDR_B = common dso_local global i32 0, align 4
@QPU_SIG = common dso_local global i32 0, align 4
@QPU_R_UNIF = common dso_local global i64 0, align 8
@QPU_SIG_SMALL_IMM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Uniform read with undefined uniform address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*)* @check_instruction_reads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_instruction_reads(%struct.vc4_validated_shader_info* %0, %struct.vc4_shader_validation_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc4_validated_shader_info*, align 8
  %5 = alloca %struct.vc4_shader_validation_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vc4_validated_shader_info* %0, %struct.vc4_validated_shader_info** %4, align 8
  store %struct.vc4_shader_validation_state* %1, %struct.vc4_shader_validation_state** %5, align 8
  %10 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %5, align 8
  %11 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %5, align 8
  %14 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @QPU_RADDR_A, align 4
  %20 = call i64 @QPU_GET_FIELD(i32 %18, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @QPU_RADDR_B, align 4
  %23 = call i64 @QPU_GET_FIELD(i32 %21, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @QPU_SIG, align 4
  %26 = call i64 @QPU_GET_FIELD(i32 %24, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @QPU_R_UNIF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @QPU_R_UNIF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @QPU_SIG_SMALL_IMM, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34, %2
  %39 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %4, align 8
  %40 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 4
  store i32 %42, i32* %40, align 4
  %43 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %5, align 8
  %44 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %70

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %34, %30
  %51 = load i64, i64* %7, align 8
  %52 = icmp sge i64 %51, 16
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %54, 32
  br i1 %55, label %66, label %56

56:                                               ; preds = %53, %50
  %57 = load i64, i64* %8, align 8
  %58 = icmp sge i64 %57, 16
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = icmp slt i64 %60, 32
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @QPU_SIG_SMALL_IMM, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %53
  %67 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %5, align 8
  %68 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %67, i32 0, i32 1
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %62, %59, %56
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %47
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @QPU_GET_FIELD(i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
