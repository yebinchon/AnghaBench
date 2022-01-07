; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_renoir_ppt.c_renoir_print_clk_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_renoir_ppt.c_renoir_print_clk_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32*, i32 }

@SMU_CLK_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMU_TABLE_SMU_METRICS = common dso_local global i32 0, align 4
@CLOCK_GFXCLK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"0: %uMhz %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"1: %uMhz %s\0A\00", align 1
@RENOIR_UMD_PSTATE_GFXCLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"2: %uMhz %s\0A\00", align 1
@NUM_SOCCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@CLOCK_SOCCLK = common dso_local global i64 0, align 8
@NUM_MEMCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@CLOCK_UMCCLK = common dso_local global i64 0, align 8
@NUM_DCFCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@CLOCK_DCFCLK = common dso_local global i64 0, align 8
@NUM_FCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@CLOCK_FCLK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"%d: %uMhz %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i8*)* @renoir_print_clk_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renoir_print_clk_levels(%struct.smu_context* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_4__, align 8
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %19 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %16, align 8
  %22 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 16, i1 false)
  %23 = load i32*, i32** %16, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SMU_CLK_COUNT, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %180

32:                                               ; preds = %25
  %33 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %34 = load i32, i32* @SMU_TABLE_SMU_METRICS, align 4
  %35 = bitcast %struct.TYPE_4__* %17 to i8*
  %36 = call i32 @smu_update_table(%struct.smu_context* %33, i32 %34, i32 0, i8* %35, i32 0)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %180

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %145 [
    i32 131, label %43
    i32 129, label %43
    i32 128, label %117
    i32 130, label %124
    i32 133, label %131
    i32 132, label %138
  ]

43:                                               ; preds = %41, %41
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @CLOCK_GFXCLK, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %50 = call i32 @smu_get_dpm_freq_range(%struct.smu_context* %49, i32 131, i32* %14, i32* %15)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %115, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 2, i32* %8, align 4
  br label %65

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %64

63:                                               ; preds = %58
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %62
  br label %65

65:                                               ; preds = %64, %57
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %75 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %70, i8* %74)
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %9, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %65
  %87 = load i32, i32* %11, align 4
  br label %90

88:                                               ; preds = %65
  %89 = load i32, i32* @RENOIR_UMD_PSTATE_GFXCLK, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 1
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %96 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %91, i8* %95)
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %9, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 2
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %110 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %105, i8* %109)
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %90, %43
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %4, align 4
  br label %180

117:                                              ; preds = %41
  %118 = load i32, i32* @NUM_SOCCLK_DPM_LEVELS, align 4
  store i32 %118, i32* %13, align 4
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @CLOCK_SOCCLK, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %11, align 4
  br label %148

124:                                              ; preds = %41
  %125 = load i32, i32* @NUM_MEMCLK_DPM_LEVELS, align 4
  store i32 %125, i32* %13, align 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @CLOCK_UMCCLK, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %11, align 4
  br label %148

131:                                              ; preds = %41
  %132 = load i32, i32* @NUM_DCFCLK_DPM_LEVELS, align 4
  store i32 %132, i32* %13, align 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @CLOCK_DCFCLK, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %11, align 4
  br label %148

138:                                              ; preds = %41
  %139 = load i32, i32* @NUM_FCLK_DPM_LEVELS, align 4
  store i32 %139, i32* %13, align 4
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @CLOCK_FCLK, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %11, align 4
  br label %148

145:                                              ; preds = %41
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %180

148:                                              ; preds = %138, %131, %124, %117
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %175, %148
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %178

153:                                              ; preds = %149
  %154 = load i32*, i32** %16, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @GET_DPM_CUR_FREQ(i32* %154, i32 %155, i32 %156, i32 %157)
  %159 = load i8*, i8** %7, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %170 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %163, i32 %164, i8* %169)
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %153
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %149

178:                                              ; preds = %149
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %178, %145, %115, %39, %29
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @smu_update_table(%struct.smu_context*, i32, i32, i8*, i32) #2

declare dso_local i32 @smu_get_dpm_freq_range(%struct.smu_context*, i32, i32*, i32*) #2

declare dso_local i64 @sprintf(i8*, i8*, i32, ...) #2

declare dso_local i32 @GET_DPM_CUR_FREQ(i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
