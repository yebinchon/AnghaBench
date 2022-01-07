; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_extcon_hp_clamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_extcon_hp_clamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_extcon_info = type { %struct.arizona* }
%struct.arizona = type { i32, i32, i32, i32, i32, i32 }

@ARIZONA_HP1L_SHRTO = common dso_local global i32 0, align 4
@ARIZONA_HP1L_FLWR = common dso_local global i32 0, align 4
@ARIZONA_HP1L_SHRTI = common dso_local global i32 0, align 4
@ARIZONA_TST_CAP_CLAMP = common dso_local global i32 0, align 4
@ARIZONA_TST_CAP_DEFAULT = common dso_local global i32 0, align 4
@ARIZONA_HP_TEST_CTRL_1 = common dso_local global i32 0, align 4
@ARIZONA_HP1_TST_CAP_SEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to set TST_CAP_SEL: %d\0A\00", align 1
@ARIZONA_RMV_SHRT_HP1L = common dso_local global i32 0, align 4
@ARIZONA_OUTPUT_ENABLES_1 = common dso_local global i32 0, align 4
@ARIZONA_OUT1L_ENA = common dso_local global i32 0, align 4
@ARIZONA_OUT1R_ENA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to disable headphone outputs: %d\0A\00", align 1
@ARIZONA_HP_CTRL_1L = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to do clamp: %d\0A\00", align 1
@ARIZONA_HP_CTRL_1R = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to restore headphone outputs: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arizona_extcon_info*, i32)* @arizona_extcon_hp_clamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_extcon_hp_clamp(%struct.arizona_extcon_info* %0, i32 %1) #0 {
  %3 = alloca %struct.arizona_extcon_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arizona*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.arizona_extcon_info* %0, %struct.arizona_extcon_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %11 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %10, i32 0, i32 0
  %12 = load %struct.arizona*, %struct.arizona** %11, align 8
  store %struct.arizona* %12, %struct.arizona** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.arizona*, %struct.arizona** %5, align 8
  %14 = getelementptr inbounds %struct.arizona, %struct.arizona* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %50 [
    i32 128, label %16
    i32 131, label %16
    i32 130, label %17
    i32 129, label %17
  ]

16:                                               ; preds = %2, %2
  store i32 0, i32* %6, align 4
  br label %57

17:                                               ; preds = %2, %2
  %18 = load i32, i32* @ARIZONA_HP1L_SHRTO, align 4
  %19 = load i32, i32* @ARIZONA_HP1L_FLWR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ARIZONA_HP1L_SHRTI, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @ARIZONA_HP1L_SHRTO, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @ARIZONA_TST_CAP_CLAMP, align 4
  store i32 %27, i32* %8, align 4
  br label %33

28:                                               ; preds = %17
  %29 = load i32, i32* @ARIZONA_HP1L_FLWR, align 4
  %30 = load i32, i32* @ARIZONA_HP1L_SHRTI, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @ARIZONA_TST_CAP_DEFAULT, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.arizona*, %struct.arizona** %5, align 8
  %35 = getelementptr inbounds %struct.arizona, %struct.arizona* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ARIZONA_HP_TEST_CTRL_1, align 4
  %38 = load i32, i32* @ARIZONA_HP1_TST_CAP_SEL_MASK, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.arizona*, %struct.arizona** %5, align 8
  %45 = getelementptr inbounds %struct.arizona, %struct.arizona* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %33
  br label %57

50:                                               ; preds = %2
  %51 = load i32, i32* @ARIZONA_RMV_SHRT_HP1L, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @ARIZONA_RMV_SHRT_HP1L, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %49, %16
  %58 = load %struct.arizona*, %struct.arizona** %5, align 8
  %59 = getelementptr inbounds %struct.arizona, %struct.arizona* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snd_soc_dapm_mutex_lock(i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.arizona*, %struct.arizona** %5, align 8
  %64 = getelementptr inbounds %struct.arizona, %struct.arizona* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %57
  %68 = load %struct.arizona*, %struct.arizona** %5, align 8
  %69 = getelementptr inbounds %struct.arizona, %struct.arizona* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ARIZONA_OUTPUT_ENABLES_1, align 4
  %72 = load i32, i32* @ARIZONA_OUT1L_ENA, align 4
  %73 = load i32, i32* @ARIZONA_OUT1R_ENA, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 %74, i32 0)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load %struct.arizona*, %struct.arizona** %5, align 8
  %80 = getelementptr inbounds %struct.arizona, %struct.arizona* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @dev_warn(i32 %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %67
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %85
  %89 = load %struct.arizona*, %struct.arizona** %5, align 8
  %90 = getelementptr inbounds %struct.arizona, %struct.arizona* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ARIZONA_HP_CTRL_1L, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @regmap_update_bits(i32 %91, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load %struct.arizona*, %struct.arizona** %5, align 8
  %100 = getelementptr inbounds %struct.arizona, %struct.arizona* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @dev_warn(i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %98, %88
  %105 = load %struct.arizona*, %struct.arizona** %5, align 8
  %106 = getelementptr inbounds %struct.arizona, %struct.arizona* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ARIZONA_HP_CTRL_1R, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @regmap_update_bits(i32 %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %104
  %115 = load %struct.arizona*, %struct.arizona** %5, align 8
  %116 = getelementptr inbounds %struct.arizona, %struct.arizona* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @dev_warn(i32 %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %114, %104
  br label %121

121:                                              ; preds = %120, %85
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %145, label %124

124:                                              ; preds = %121
  %125 = load %struct.arizona*, %struct.arizona** %5, align 8
  %126 = getelementptr inbounds %struct.arizona, %struct.arizona* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ARIZONA_OUTPUT_ENABLES_1, align 4
  %129 = load i32, i32* @ARIZONA_OUT1L_ENA, align 4
  %130 = load i32, i32* @ARIZONA_OUT1R_ENA, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.arizona*, %struct.arizona** %5, align 8
  %133 = getelementptr inbounds %struct.arizona, %struct.arizona* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @regmap_update_bits(i32 %127, i32 %128, i32 %131, i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %124
  %139 = load %struct.arizona*, %struct.arizona** %5, align 8
  %140 = getelementptr inbounds %struct.arizona, %struct.arizona* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @dev_warn(i32 %141, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %138, %124
  br label %145

145:                                              ; preds = %144, %121
  %146 = load %struct.arizona*, %struct.arizona** %5, align 8
  %147 = getelementptr inbounds %struct.arizona, %struct.arizona* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @snd_soc_dapm_mutex_unlock(i32 %148)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
