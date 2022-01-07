; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dpm.c_amdgpu_dpm_print_class_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dpm.c_amdgpu_dpm_print_class_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATOM_PPLIB_CLASSIFICATION_UI_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"balanced\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"performance\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\09ui class: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\09internal class:\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" none\00", align 1
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c" boot\00", align 1
@ATOM_PPLIB_CLASSIFICATION_THERMAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c" thermal\00", align 1
@ATOM_PPLIB_CLASSIFICATION_LIMITEDPOWERSOURCE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c" limited_pwr\00", align 1
@ATOM_PPLIB_CLASSIFICATION_REST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c" rest\00", align 1
@ATOM_PPLIB_CLASSIFICATION_FORCED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c" forced\00", align 1
@ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c" 3d_perf\00", align 1
@ATOM_PPLIB_CLASSIFICATION_OVERDRIVETEMPLATE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c" ovrdrv\00", align 1
@ATOM_PPLIB_CLASSIFICATION_UVDSTATE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c" uvd\00", align 1
@ATOM_PPLIB_CLASSIFICATION_3DLOW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c" 3d_low\00", align 1
@ATOM_PPLIB_CLASSIFICATION_ACPI = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c" acpi\00", align 1
@ATOM_PPLIB_CLASSIFICATION_HD2STATE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c" uvd_hd2\00", align 1
@ATOM_PPLIB_CLASSIFICATION_HDSTATE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c" uvd_hd\00", align 1
@ATOM_PPLIB_CLASSIFICATION_SDSTATE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c" uvd_sd\00", align 1
@ATOM_PPLIB_CLASSIFICATION2_LIMITEDPOWERSOURCE_2 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c" limited_pwr2\00", align 1
@ATOM_PPLIB_CLASSIFICATION2_ULV = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c" ulv\00", align 1
@ATOM_PPLIB_CLASSIFICATION2_MVC = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c" uvd_mvc\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_dpm_print_class_info(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %10 [
    i32 129, label %9
    i32 130, label %11
    i32 131, label %12
    i32 128, label %13
  ]

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %2, %9
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %14

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %14

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %14

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %14

14:                                               ; preds = %13, %12, %11, %10
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %141

28:                                               ; preds = %23, %14
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_THERMAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_LIMITEDPOWERSOURCE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @pr_cont(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_REST, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_FORCED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_OVERDRIVETEMPLATE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %70
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UVDSTATE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %77
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_3DLOW, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %84
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_ACPI, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_HD2STATE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %98
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_HDSTATE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = call i32 @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %105
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_SDSTATE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call i32 @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %112
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_LIMITEDPOWERSOURCE_2, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = call i32 @pr_cont(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %119
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_ULV, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %126
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_MVC, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %133
  br label %141

141:                                              ; preds = %140, %26
  %142 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @pr_cont(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
