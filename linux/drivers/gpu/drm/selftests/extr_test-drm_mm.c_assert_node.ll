; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_assert_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_assert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i64, i64, i32, %struct.drm_mm* }
%struct.drm_mm = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"node not allocated\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"node has wrong size, found %llu, expected %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"node is misaligned, start %llx rem %llu, expected alignment %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"node has wrong color, found %lu, expected %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_mm_node*, %struct.drm_mm*, i64, i64, i64)* @assert_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assert_node(%struct.drm_mm_node* %0, %struct.drm_mm* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.drm_mm_node*, align 8
  %7 = alloca %struct.drm_mm*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %6, align 8
  store %struct.drm_mm* %1, %struct.drm_mm** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 1, i32* %11, align 4
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %13 = call i32 @drm_mm_node_allocated(%struct.drm_mm_node* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %17 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %16, i32 0, i32 3
  %18 = load %struct.drm_mm*, %struct.drm_mm** %17, align 8
  %19 = load %struct.drm_mm*, %struct.drm_mm** %7, align 8
  %20 = icmp ne %struct.drm_mm* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %5
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %21, %15
  %24 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %25 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %31 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %33)
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @misalignment(%struct.drm_mm_node* %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %42 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @misalignment(%struct.drm_mm_node* %44, i64 %45)
  %47 = load i64, i64* %9, align 8
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %43, i64 %46, i64 %47)
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %40, %35
  %50 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %51 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %57 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %58, i64 %59)
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i32 @drm_mm_node_allocated(%struct.drm_mm_node*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @misalignment(%struct.drm_mm_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
