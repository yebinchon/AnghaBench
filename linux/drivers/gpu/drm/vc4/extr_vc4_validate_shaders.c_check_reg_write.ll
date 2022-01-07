; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_check_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_check_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_validated_shader_info = type { i32 }
%struct.vc4_shader_validation_state = type { i32*, i64, i32, i64* }

@QPU_WADDR_MUL = common dso_local global i32 0, align 4
@QPU_WADDR_ADD = common dso_local global i32 0, align 4
@QPU_SIG = common dso_local global i32 0, align 4
@QPU_WS = common dso_local global i32 0, align 4
@QPU_COND_ADD = common dso_local global i32 0, align 4
@QPU_COND_MUL = common dso_local global i32 0, align 4
@QPU_SIG_LOAD_IMM = common dso_local global i64 0, align 8
@QPU_PACK = common dso_local global i32 0, align 4
@QPU_PACK_A_NOP = common dso_local global i64 0, align 8
@QPU_COND_ALWAYS = common dso_local global i64 0, align 8
@QPU_LOAD_IMM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"relative uniforms address change unsupported\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unsupported waddr %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"General VPM DMA unsupported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*, i32)* @check_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_reg_write(%struct.vc4_validated_shader_info* %0, %struct.vc4_shader_validation_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc4_validated_shader_info*, align 8
  %6 = alloca %struct.vc4_shader_validation_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.vc4_validated_shader_info* %0, %struct.vc4_validated_shader_info** %5, align 8
  store %struct.vc4_shader_validation_state* %1, %struct.vc4_shader_validation_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %17 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %20 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @QPU_WADDR_MUL, align 4
  %29 = call i64 @QPU_GET_FIELD(i32 %27, i32 %28)
  br label %34

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @QPU_WADDR_ADD, align 4
  %33 = call i64 @QPU_GET_FIELD(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %29, %26 ], [ %33, %30 ]
  store i64 %35, i64* %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @QPU_SIG, align 4
  %38 = call i64 @QPU_GET_FIELD(i32 %36, i32 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @QPU_WS, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %11, align 4
  %44 = xor i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @waddr_to_live_reg_index(i64 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %105

50:                                               ; preds = %34
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @QPU_COND_ADD, align 4
  %53 = call i64 @QPU_GET_FIELD(i32 %51, i32 %52)
  store i64 %53, i64* %14, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @QPU_COND_MUL, align 4
  %56 = call i64 @QPU_GET_FIELD(i32 %54, i32 %55)
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @QPU_SIG_LOAD_IMM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @QPU_PACK, align 4
  %63 = call i64 @QPU_GET_FIELD(i32 %61, i32 %62)
  %64 = load i64, i64* @QPU_PACK_A_NOP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* @QPU_COND_ALWAYS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* @QPU_COND_ALWAYS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76, %69
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @QPU_LOAD_IMM, align 4
  %83 = call i64 @QPU_GET_FIELD(i32 %81, i32 %82)
  %84 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %85 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 %83, i64* %89, align 8
  br label %97

90:                                               ; preds = %76, %73, %60, %50
  %91 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %92 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 -1, i64* %96, align 8
  br label %97

97:                                               ; preds = %90, %80
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @live_reg_is_upper_half(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %103 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %102, i32 0, i32 2
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %97
  br label %105

105:                                              ; preds = %104, %34
  %106 = load i64, i64* %9, align 8
  switch i64 %106, label %130 [
    i64 131, label %107
    i64 143, label %117
    i64 144, label %117
    i64 141, label %117
    i64 138, label %118
    i64 137, label %118
    i64 139, label %118
    i64 140, label %118
    i64 134, label %118
    i64 133, label %118
    i64 135, label %118
    i64 136, label %118
    i64 147, label %123
    i64 132, label %123
    i64 145, label %123
    i64 146, label %123
    i64 128, label %126
    i64 130, label %128
    i64 129, label %128
    i64 142, label %129
  ]

107:                                              ; preds = %105
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %131

112:                                              ; preds = %107
  %113 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %5, align 8
  %114 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @validate_uniform_address_write(%struct.vc4_validated_shader_info* %113, %struct.vc4_shader_validation_state* %114, i32 %115)
  store i32 %116, i32* %4, align 4
  br label %131

117:                                              ; preds = %105, %105, %105
  store i32 1, i32* %4, align 4
  br label %131

118:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %105
  %119 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %5, align 8
  %120 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @check_tmu_write(%struct.vc4_validated_shader_info* %119, %struct.vc4_shader_validation_state* %120, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %131

123:                                              ; preds = %105, %105, %105, %105
  %124 = load i64, i64* %9, align 8
  %125 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %124)
  store i32 0, i32* %4, align 4
  br label %131

126:                                              ; preds = %105
  %127 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %131

128:                                              ; preds = %105, %105
  store i32 1, i32* %4, align 4
  br label %131

129:                                              ; preds = %105
  store i32 1, i32* %4, align 4
  br label %131

130:                                              ; preds = %105
  store i32 1, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %129, %128, %126, %123, %118, %117, %112, %110
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64 @QPU_GET_FIELD(i32, i32) #1

declare dso_local i32 @waddr_to_live_reg_index(i64, i32) #1

declare dso_local i64 @live_reg_is_upper_half(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @validate_uniform_address_write(%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*, i32) #1

declare dso_local i32 @check_tmu_write(%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
