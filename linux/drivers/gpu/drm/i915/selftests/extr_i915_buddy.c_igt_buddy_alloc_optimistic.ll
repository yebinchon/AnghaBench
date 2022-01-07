; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_buddy.c_igt_buddy_alloc_optimistic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_buddy.c_igt_buddy_alloc_optimistic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_buddy_block = type { i32 }
%struct.i915_buddy_mm = type { i32 }

@blocks = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"buddy_init failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"buddy_alloc hit -ENOMEM with order=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"buddy_alloc unexpectedly succeeded, it should be full!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_buddy_alloc_optimistic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_buddy_alloc_optimistic(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_buddy_block*, align 8
  %6 = alloca %struct.i915_buddy_mm, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 16, i32* %4, align 4
  %9 = load i32, i32* @blocks, align 4
  %10 = call i32 @LIST_HEAD(i32 %9)
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = mul nsw i32 %11, 131071
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call i32 @i915_buddy_init(%struct.i915_buddy_mm* %6, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %2, align 4
  br label %65

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.i915_buddy_mm, %struct.i915_buddy_mm* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 16
  %25 = zext i1 %24 to i32
  %26 = call i32 @GEM_BUG_ON(i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %45, %21
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %28, 16
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.i915_buddy_block* @i915_buddy_alloc(%struct.i915_buddy_mm* %6, i32 %31)
  store %struct.i915_buddy_block* %32, %struct.i915_buddy_block** %5, align 8
  %33 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %34 = call i64 @IS_ERR(%struct.i915_buddy_block* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %40 = call i32 @PTR_ERR(%struct.i915_buddy_block* %39)
  store i32 %40, i32* %8, align 4
  br label %61

41:                                               ; preds = %30
  %42 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %43 = getelementptr inbounds %struct.i915_buddy_block, %struct.i915_buddy_block* %42, i32 0, i32 0
  %44 = call i32 @list_add_tail(i32* %43, i32* @blocks)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %27

48:                                               ; preds = %27
  %49 = call %struct.i915_buddy_block* @i915_buddy_alloc(%struct.i915_buddy_mm* %6, i32 0)
  store %struct.i915_buddy_block* %49, %struct.i915_buddy_block** %5, align 8
  %50 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %51 = call i64 @IS_ERR(%struct.i915_buddy_block* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %56 = getelementptr inbounds %struct.i915_buddy_block, %struct.i915_buddy_block* %55, i32 0, i32 0
  %57 = call i32 @list_add_tail(i32* %56, i32* @blocks)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %61

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %53, %36
  %62 = call i32 @i915_buddy_free_list(%struct.i915_buddy_mm* %6, i32* @blocks)
  %63 = call i32 @i915_buddy_fini(%struct.i915_buddy_mm* %6)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @i915_buddy_init(%struct.i915_buddy_mm*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local %struct.i915_buddy_block* @i915_buddy_alloc(%struct.i915_buddy_mm*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_buddy_block*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.i915_buddy_block*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @i915_buddy_free_list(%struct.i915_buddy_mm*, i32*) #1

declare dso_local i32 @i915_buddy_fini(%struct.i915_buddy_mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
