; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_buddy.c_igt_buddy_alloc_smoke.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_buddy.c_igt_buddy_alloc_smoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_buddy_mm = type { i32, i64 }
%struct.i915_buddy_block = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"buddy_init with size=%llx, chunk_size=%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"buddy_init failed(%d)\0A\00", align 1
@blocks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"pre-mm check failed, abort\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"filling from max_order=%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"buddy_alloc hit -ENOMEM with order=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"buddy_alloc with order=%d failed(%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"buddy_alloc order mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"post-mm check failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_buddy_alloc_smoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_buddy_alloc_smoke(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.i915_buddy_mm, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i915_buddy_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %12 = call i32 @igt_mm_config(i64* %7, i64* %6)
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i64, i64* %6, align 8
  %16 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @i915_buddy_init(%struct.i915_buddy_mm* %4, i64 %17, i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %2, align 4
  br label %127

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.i915_buddy_mm, %struct.i915_buddy_mm* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %115, %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %118

32:                                               ; preds = %29
  %33 = load i32, i32* @blocks, align 4
  %34 = call i32 @LIST_HEAD(i32 %33)
  %35 = call i32 @igt_check_mm(%struct.i915_buddy_mm* %4)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %118

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %88, %40
  br label %45

45:                                               ; preds = %65, %44
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.i915_buddy_block* @i915_buddy_alloc(%struct.i915_buddy_mm* %4, i32 %46)
  store %struct.i915_buddy_block* %47, %struct.i915_buddy_block** %9, align 8
  %48 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %9, align 8
  %49 = call i64 @IS_ERR(%struct.i915_buddy_block* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %9, align 8
  %53 = call i32 @PTR_ERR(%struct.i915_buddy_block* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %70

61:                                               ; preds = %51
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %10, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %45

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %58
  br label %93

71:                                               ; preds = %45
  %72 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %9, align 8
  %73 = getelementptr inbounds %struct.i915_buddy_block, %struct.i915_buddy_block* %72, i32 0, i32 0
  %74 = call i32 @list_add_tail(i32* %73, i32* @blocks)
  %75 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %9, align 8
  %76 = call i32 @i915_buddy_block_order(%struct.i915_buddy_block* %75)
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %93

83:                                               ; preds = %71
  %84 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %9, align 8
  %85 = call i64 @i915_buddy_block_size(%struct.i915_buddy_mm* %4, %struct.i915_buddy_block* %84)
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %83
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds %struct.i915_buddy_mm, %struct.i915_buddy_mm* %4, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %44, label %93

93:                                               ; preds = %88, %79, %70
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @igt_check_blocks(%struct.i915_buddy_mm* %4, i32* @blocks, i64 %97, i32 0)
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = call i32 @i915_buddy_free_list(%struct.i915_buddy_mm* %4, i32* @blocks)
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = call i32 @igt_check_mm(%struct.i915_buddy_mm* %4)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %103
  br label %110

110:                                              ; preds = %109, %99
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %118

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %5, align 4
  br label %29

118:                                              ; preds = %113, %38, %29
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %123, %118
  %125 = call i32 @i915_buddy_fini(%struct.i915_buddy_mm* %4)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %124, %22
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @igt_mm_config(i64*, i64*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @i915_buddy_init(%struct.i915_buddy_mm*, i64, i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @igt_check_mm(%struct.i915_buddy_mm*) #1

declare dso_local %struct.i915_buddy_block* @i915_buddy_alloc(%struct.i915_buddy_mm*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_buddy_block*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_buddy_block*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @i915_buddy_block_order(%struct.i915_buddy_block*) #1

declare dso_local i64 @i915_buddy_block_size(%struct.i915_buddy_mm*, %struct.i915_buddy_block*) #1

declare dso_local i32 @igt_check_blocks(%struct.i915_buddy_mm*, i32*, i64, i32) #1

declare dso_local i32 @i915_buddy_free_list(%struct.i915_buddy_mm*, i32*) #1

declare dso_local i32 @i915_buddy_fini(%struct.i915_buddy_mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
