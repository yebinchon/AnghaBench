; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c___igt_once.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c___igt_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32 }
%struct.drm_mm_node = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Could not reserve low node\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Expected a hole after lo and high nodes!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_MM_INSERT_ONCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"Unexpectedly inserted the node into the wrong hole: node.start=%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Could not insert the node into the available hole!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__igt_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__igt_once(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_mm, align 4
  %4 = alloca %struct.drm_mm_node, align 4
  %5 = alloca %struct.drm_mm_node, align 4
  %6 = alloca %struct.drm_mm_node, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i32 @drm_mm_init(%struct.drm_mm* %3, i32 0, i32 7)
  %9 = call i32 @memset(%struct.drm_mm_node* %4, i32 0, i32 8)
  %10 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %4, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %4, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = call i32 @drm_mm_reserve_node(%struct.drm_mm* %3, %struct.drm_mm_node* %4)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %66

17:                                               ; preds = %1
  %18 = call i32 @memset(%struct.drm_mm_node* %5, i32 0, i32 8)
  %19 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %5, i32 0, i32 0
  store i32 5, i32* %19, align 4
  %20 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %5, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = call i32 @drm_mm_reserve_node(%struct.drm_mm* %3, %struct.drm_mm_node* %5)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %64

26:                                               ; preds = %17
  %27 = call i32 @drm_mm_hole_follows(%struct.drm_mm_node* %4)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @drm_mm_hole_follows(%struct.drm_mm_node* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29, %26
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %62

36:                                               ; preds = %29
  %37 = call i32 @memset(%struct.drm_mm_node* %6, i32 0, i32 8)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @DRM_MM_INSERT_ONCE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @drm_mm_insert_node_generic(%struct.drm_mm* %3, %struct.drm_mm_node* %6, i32 2, i32 0, i32 0, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %60

50:                                               ; preds = %36
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @drm_mm_insert_node_generic(%struct.drm_mm* %3, %struct.drm_mm_node* %6, i32 2, i32 0, i32 0, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %62

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %44
  %61 = call i32 @drm_mm_remove_node(%struct.drm_mm_node* %6)
  br label %62

62:                                               ; preds = %60, %55, %32
  %63 = call i32 @drm_mm_remove_node(%struct.drm_mm_node* %5)
  br label %64

64:                                               ; preds = %62, %24
  %65 = call i32 @drm_mm_remove_node(%struct.drm_mm_node* %4)
  br label %66

66:                                               ; preds = %64, %15
  %67 = call i32 @drm_mm_takedown(%struct.drm_mm* %3)
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @drm_mm_init(%struct.drm_mm*, i32, i32) #1

declare dso_local i32 @memset(%struct.drm_mm_node*, i32, i32) #1

declare dso_local i32 @drm_mm_reserve_node(%struct.drm_mm*, %struct.drm_mm_node*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @drm_mm_hole_follows(%struct.drm_mm_node*) #1

declare dso_local i32 @drm_mm_insert_node_generic(%struct.drm_mm*, %struct.drm_mm_node*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mm_remove_node(%struct.drm_mm_node*) #1

declare dso_local i32 @drm_mm_takedown(%struct.drm_mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
