; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_vc4_validate_branches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_vc4_validate_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_shader_validation_state = type { i32, i32*, i32 }

@QPU_BRANCH_TARGET = common dso_local global i32 0, align 4
@QPU_SIG = common dso_local global i32 0, align 4
@QPU_SIG_PROG_END = common dso_local global i64 0, align 8
@QPU_SIG_BRANCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Branch at %d during delay slots\0A\00", align 1
@QPU_BRANCH_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"branching from register relative not supported\0A\00", align 1
@QPU_BRANCH_REL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"relative branching required\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"branch target not aligned\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Branch at %d outside of shader (ip %d/%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Branch at %d continues past shader end (%d/%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Branch landed after QPU_SIG_PROG_END\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_shader_validation_state*)* @vc4_validate_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_validate_branches(%struct.vc4_shader_validation_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc4_shader_validation_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.vc4_shader_validation_state* %0, %struct.vc4_shader_validation_state** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 -2, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %127, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %15 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %130

18:                                               ; preds = %12
  %19 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %20 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @QPU_BRANCH_TARGET, align 4
  %28 = call i8* @QPU_GET_FIELD(i32 %26, i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @QPU_SIG, align 4
  %32 = call i8* @QPU_GET_FIELD(i32 %30, i32 %31)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* %9, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @QPU_SIG_PROG_END, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %18
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 3
  %43 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %44 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %127

45:                                               ; preds = %18
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @QPU_SIG_BRANCH, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %127

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %51, %52
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 0, i32* %2, align 4
  br label %141

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @QPU_BRANCH_REG, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %141

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @QPU_BRANCH_REL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %141

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = urem i64 %75, 4
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %141

80:                                               ; preds = %73
  %81 = load i64, i64* %10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = ashr i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %81, %84
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %88 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = icmp sge i64 %86, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %80
  %93 = load i32, i32* %5, align 4
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %96 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %93, i64 %94, i32 %97)
  store i32 0, i32* %2, align 4
  br label %141

99:                                               ; preds = %80
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %102 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @set_bit(i64 %100, i32 %103)
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %107 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = icmp sge i64 %105, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %99
  %112 = load i32, i32* %5, align 4
  %113 = load i64, i64* %10, align 8
  %114 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %115 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %112, i64 %113, i32 %116)
  store i32 0, i32* %2, align 4
  br label %141

118:                                              ; preds = %99
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %121 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @set_bit(i64 %119, i32 %122)
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* %10, align 8
  %126 = call i64 @max(i64 %124, i64 %125)
  store i64 %126, i64* %4, align 8
  br label %127

127:                                              ; preds = %118, %49, %40
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %12

130:                                              ; preds = %12
  %131 = load i64, i64* %4, align 8
  %132 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %3, align 8
  %133 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 3
  %136 = sext i32 %135 to i64
  %137 = icmp sgt i64 %131, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %141

140:                                              ; preds = %130
  store i32 1, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %138, %111, %92, %78, %71, %64, %55
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i8* @QPU_GET_FIELD(i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
