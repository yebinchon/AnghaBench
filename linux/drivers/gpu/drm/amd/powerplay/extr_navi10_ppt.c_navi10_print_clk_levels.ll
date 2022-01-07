; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_print_clk_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_print_clk_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"%d: %uMhz %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i8*)* @navi10_print_clk_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_print_clk_levels(%struct.smu_context* %0, i32 %1, i8* %2) #0 {
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
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = bitcast [3 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %148 [
    i32 132, label %18
    i32 130, label %18
    i32 129, label %18
    i32 131, label %18
    i32 128, label %18
    i32 133, label %18
    i32 134, label %18
  ]

18:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %19 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @smu_get_current_clk_freq(%struct.smu_context* %19, i32 %20, i32* %11)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %151

26:                                               ; preds = %18
  %27 = load i32, i32* %11, align 4
  %28 = sdiv i32 %27, 100
  store i32 %28, i32* %11, align 4
  %29 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @smu_get_dpm_level_count(%struct.smu_context* %29, i32 %30, i32* %13)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %151

36:                                               ; preds = %26
  %37 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @navi10_is_support_fine_grained_dpm(%struct.smu_context* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %74, label %41

41:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %70, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %42
  %47 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @smu_get_dpm_freq_by_index(%struct.smu_context* %47, i32 %48, i32 %49, i32* %12)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %151

55:                                               ; preds = %46
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %67 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i8* %66)
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %42

73:                                               ; preds = %42
  br label %147

74:                                               ; preds = %36
  %75 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %78 = call i32 @smu_get_dpm_freq_by_index(%struct.smu_context* %75, i32 %76, i32 0, i32* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %151

83:                                               ; preds = %74
  %84 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %86, 1
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %89 = call i32 @smu_get_dpm_freq_by_index(%struct.smu_context* %84, i32 %85, i32 %87, i32* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %4, align 4
  br label %151

94:                                               ; preds = %83
  %95 = load i32, i32* %11, align 4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %11, align 4
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %109

102:                                              ; preds = %94
  %103 = load i32, i32* %11, align 4
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %103, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 2, i32 1
  br label %109

109:                                              ; preds = %102, %101
  %110 = phi i32 [ 0, %101 ], [ %108, %102 ]
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %115, %117
  %119 = sdiv i32 %118, 2
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %113, %109
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %143, %121
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 3
  br i1 %124, label %125, label %146

125:                                              ; preds = %122
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %140 = call i32 @sprintf(i8* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %134, i8* %139)
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %125
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %122

146:                                              ; preds = %122
  br label %147

147:                                              ; preds = %146, %73
  br label %149

148:                                              ; preds = %3
  br label %149

149:                                              ; preds = %148, %147
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %149, %92, %81, %53, %34, %24
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @smu_get_current_clk_freq(%struct.smu_context*, i32, i32*) #2

declare dso_local i32 @smu_get_dpm_level_count(%struct.smu_context*, i32, i32*) #2

declare dso_local i32 @navi10_is_support_fine_grained_dpm(%struct.smu_context*, i32) #2

declare dso_local i32 @smu_get_dpm_freq_by_index(%struct.smu_context*, i32, i32, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
