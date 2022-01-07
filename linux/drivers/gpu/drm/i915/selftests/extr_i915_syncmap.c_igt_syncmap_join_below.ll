; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_igt_syncmap_join_below.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_igt_syncmap_join_below.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@KSYNCMAP = common dso_local global i32 0, align 4
@SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"Inserting context=%llx (order=%d, step=%d) did not return leaf (height=%d, prefix=%llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"1: context %llx (order=%d, step=%d) not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"1: context %llx (order=%d, step=%d) should not exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"2: context %llx (order=%d, step=%d) not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_syncmap_join_below to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_syncmap_join_below(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i915_syncmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = call i32 @i915_syncmap_init(%struct.i915_syncmap** %3)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %58, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @KSYNCMAP, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load i32, i32* @SHIFT, align 4
  %20 = sub nsw i32 64, %19
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %53, %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @BIT_ULL(i32 %26)
  %28 = mul i32 %25, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @i915_syncmap_set(%struct.i915_syncmap** %3, i32 %29, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %154

34:                                               ; preds = %24
  %35 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %36 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %44 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %47 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %45, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %154

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* @SHIFT, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %21

57:                                               ; preds = %21
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %14

61:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %116, %61
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @KSYNCMAP, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %119

66:                                               ; preds = %62
  %67 = load i32, i32* @SHIFT, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %111, %66
  %69 = load i32, i32* %5, align 4
  %70 = icmp ult i32 %69, 64
  br i1 %70, label %71, label %115

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @BIT_ULL(i32 %73)
  %75 = mul i32 %72, %74
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @i915_syncmap_is_later(%struct.i915_syncmap** %3, i32 %76, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %154

86:                                               ; preds = %71
  store i32 1, i32* %6, align 4
  br label %87

87:                                               ; preds = %107, %86
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @KSYNCMAP, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %92, %93
  %95 = call i64 @i915_syncmap_is_later(%struct.i915_syncmap** %3, i32 %94, i32 0)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %6, align 4
  %100 = add i32 %98, %99
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %154

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %87

110:                                              ; preds = %87
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* @SHIFT, align 4
  %113 = load i32, i32* %5, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %68

115:                                              ; preds = %68
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %4, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %62

119:                                              ; preds = %62
  %120 = load i32, i32* @SHIFT, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %149, %119
  %122 = load i32, i32* %5, align 4
  %123 = icmp ult i32 %122, 64
  br i1 %123, label %124, label %153

124:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %145, %124
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @KSYNCMAP, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %125
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @BIT_ULL(i32 %131)
  %133 = mul i32 %130, %132
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i64 @i915_syncmap_is_later(%struct.i915_syncmap** %3, i32 %134, i32 0)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %129
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %7, align 4
  br label %154

144:                                              ; preds = %129
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %4, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %4, align 4
  br label %125

148:                                              ; preds = %125
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* @SHIFT, align 4
  %151 = load i32, i32* %5, align 4
  %152 = add i32 %151, %150
  store i32 %152, i32* %5, align 4
  br label %121

153:                                              ; preds = %121
  br label %154

154:                                              ; preds = %153, %137, %97, %79, %39, %33
  %155 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @dump_syncmap(%struct.i915_syncmap* %155, i32 %156)
  ret i32 %157
}

declare dso_local i32 @i915_syncmap_init(%struct.i915_syncmap**) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @i915_syncmap_set(%struct.i915_syncmap**, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, ...) #1

declare dso_local i64 @i915_syncmap_is_later(%struct.i915_syncmap**, i32, i32) #1

declare dso_local i32 @dump_syncmap(%struct.i915_syncmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
