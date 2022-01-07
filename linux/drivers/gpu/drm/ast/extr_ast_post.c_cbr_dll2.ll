; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_cbr_dll2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_cbr_dll2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }
%struct.ast2300_dram_param = type { i32 }

@CBR_SIZE2 = common dso_local global i32 0, align 4
@CBR_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_private*, %struct.ast2300_dram_param*)* @cbr_dll2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbr_dll2(%struct.ast_private* %0, %struct.ast2300_dram_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ast_private*, align 8
  %5 = alloca %struct.ast2300_dram_param*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %4, align 8
  store %struct.ast2300_dram_param* %1, %struct.ast2300_dram_param** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %14 = call i32 @finetuneDQSI(%struct.ast_private* %13)
  %15 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %16 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %5, align 8
  %17 = call i32 @finetuneDQI_L(%struct.ast_private* %15, %struct.ast2300_dram_param* %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %3, align 4
  br label %158

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %131, %118, %21
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 255, i32* %23, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 255, i32* %24, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %26, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %98, %22
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 76
  br i1 %29, label %30, label %101

30:                                               ; preds = %27
  %31 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 4864, %33
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 24
  %37 = or i32 %34, %36
  %38 = call i32 @ast_moutdwm(%struct.ast_private* %31, i32 510525544, i32 %37)
  %39 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %40 = load i32, i32* @CBR_SIZE2, align 4
  %41 = call i32 @ast_moutdwm(%struct.ast_private* %39, i32 510525556, i32 %40)
  %42 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %43 = call i32 @cbr_scan(%struct.ast_private* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %91

46:                                               ; preds = %30
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %58
  br label %67

67:                                               ; preds = %66, %46
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %67
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %97

91:                                               ; preds = %30
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @CBR_THRESHOLD, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %101

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %88
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %27

101:                                              ; preds = %95, %27
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  %104 = icmp sgt i32 %102, 10
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %133

106:                                              ; preds = %101
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %112, %114
  %116 = load i32, i32* @CBR_THRESHOLD, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110, %106
  br label %22

119:                                              ; preds = %110
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %125, %127
  %129 = load i32, i32* @CBR_THRESHOLD, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123, %119
  br label %22

132:                                              ; preds = %123
  store i32 1, i32* %12, align 4
  br label %133

133:                                              ; preds = %132, %105
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %135, %137
  %139 = ashr i32 %138, 1
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = shl i32 %140, 8
  store i32 %141, i32* %8, align 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %143, %145
  %147 = ashr i32 %146, 1
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %8, align 4
  %150 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %151 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %152 = call i32 @ast_mindwm(%struct.ast_private* %151, i32 510787672)
  %153 = load i32, i32* %8, align 4
  %154 = shl i32 %153, 16
  %155 = or i32 %152, %154
  %156 = call i32 @ast_moutdwm(%struct.ast_private* %150, i32 510525544, i32 %155)
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %133, %19
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @finetuneDQSI(%struct.ast_private*) #1

declare dso_local i32 @finetuneDQI_L(%struct.ast_private*, %struct.ast2300_dram_param*) #1

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @cbr_scan(%struct.ast_private*) #1

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
