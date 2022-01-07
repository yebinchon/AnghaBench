; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_validate_uniform_address_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_validate_uniform_address_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_validated_shader_info = type { i32 }
%struct.vc4_shader_validation_state = type { i32*, i64, i32*, i32, i32 }

@QPU_ADD_B = common dso_local global i32 0, align 4
@QPU_RADDR_A = common dso_local global i32 0, align 4
@QPU_RADDR_B = common dso_local global i32 0, align 4
@QPU_SIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"uniforms address change must be normal math\0A\00", align 1
@QPU_OP_ADD = common dso_local global i32 0, align 4
@QPU_A_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Uniform address reset must be an ADD.\0A\00", align 1
@QPU_COND_ADD = common dso_local global i32 0, align 4
@QPU_COND_ALWAYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Uniform address reset must be unconditional.\0A\00", align 1
@QPU_PACK = common dso_local global i32 0, align 4
@QPU_PACK_A_NOP = common dso_local global i32 0, align 4
@QPU_PM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"No packing allowed on uniforms reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"First argument of uniform address write must be an immediate value.\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Resetting uniforms with offset %db instead of %db\0A\00", align 1
@QPU_MUX_A = common dso_local global i32 0, align 4
@QPU_R_UNIF = common dso_local global i32 0, align 4
@QPU_MUX_B = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"Second argument of uniform address write must be a uniform.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*, i32)* @validate_uniform_address_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_uniform_address_write(%struct.vc4_validated_shader_info* %0, %struct.vc4_shader_validation_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc4_validated_shader_info*, align 8
  %6 = alloca %struct.vc4_shader_validation_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vc4_validated_shader_info* %0, %struct.vc4_validated_shader_info** %5, align 8
  store %struct.vc4_shader_validation_state* %1, %struct.vc4_shader_validation_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %15 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %18 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @QPU_ADD_B, align 4
  %24 = call i32 @QPU_GET_FIELD(i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @QPU_RADDR_A, align 4
  %27 = call i32 @QPU_GET_FIELD(i32 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @QPU_RADDR_B, align 4
  %30 = call i32 @QPU_GET_FIELD(i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @raddr_add_a_to_live_reg_index(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %5, align 8
  %34 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @QPU_SIG, align 4
  %39 = call i32 @QPU_GET_FIELD(i32 %37, i32 %38)
  switch i32 %39, label %41 [
    i32 129, label %40
    i32 128, label %40
    i32 132, label %40
    i32 131, label %40
    i32 130, label %40
  ]

40:                                               ; preds = %3, %3, %3, %3, %3
  br label %43

41:                                               ; preds = %3
  %42 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %125

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @QPU_OP_ADD, align 4
  %49 = call i32 @QPU_GET_FIELD(i32 %47, i32 %48)
  %50 = load i32, i32* @QPU_A_ADD, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %43
  %53 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %125

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @QPU_COND_ADD, align 4
  %57 = call i32 @QPU_GET_FIELD(i32 %55, i32 %56)
  %58 = load i32, i32* @QPU_COND_ALWAYS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %125

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @QPU_PACK, align 4
  %65 = call i32 @QPU_GET_FIELD(i32 %63, i32 %64)
  %66 = load i32, i32* @QPU_PACK_A_NOP, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @QPU_PM, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %125

75:                                               ; preds = %68, %62
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %125

80:                                               ; preds = %75
  %81 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %82 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %80
  %91 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %92 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %97, i32 %98)
  store i32 0, i32* %4, align 4
  br label %125

100:                                              ; preds = %80
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @QPU_MUX_A, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @QPU_R_UNIF, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %118, label %108

108:                                              ; preds = %104, %100
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @QPU_MUX_B, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @QPU_R_UNIF, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %118, label %116

116:                                              ; preds = %112, %108
  %117 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %125

118:                                              ; preds = %112, %104
  %119 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %120 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %119, i32 0, i32 3
  store i32 0, i32* %120, align 8
  %121 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %122 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %121, i32 0, i32 4
  store i32 0, i32* %122, align 4
  %123 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %5, align 8
  %124 = call i32 @require_uniform_address_uniform(%struct.vc4_validated_shader_info* %123)
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %118, %116, %90, %78, %73, %60, %52, %41
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @QPU_GET_FIELD(i32, i32) #1

declare dso_local i32 @raddr_add_a_to_live_reg_index(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @require_uniform_address_uniform(%struct.vc4_validated_shader_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
