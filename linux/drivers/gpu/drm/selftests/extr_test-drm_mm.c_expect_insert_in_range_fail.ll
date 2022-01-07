; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_expect_insert_in_range_fail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_expect_insert_in_range_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32 }
%struct.drm_mm_node = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"impossible insert succeeded, node %llx + %llu, range [%llx, %llx]\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"impossible insert failed with wrong error %d [expected %d], size %llu, range [%llx, %llx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_mm*, i32, i32, i32)* @expect_insert_in_range_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expect_insert_in_range_fail(%struct.drm_mm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_mm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_mm_node, align 4
  %11 = alloca i32, align 4
  store %struct.drm_mm* %0, %struct.drm_mm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = bitcast %struct.drm_mm_node* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.drm_mm*, %struct.drm_mm** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @drm_mm_insert_node_in_range(%struct.drm_mm* %13, %struct.drm_mm_node* %10, i32 %14, i32 0, i32 0, i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @ENOSPC, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %47

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i8*, i32, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33, i32 %34, i32 %35)
  %37 = call i32 @drm_mm_remove_node(%struct.drm_mm_node* %10)
  br label %46

38:                                               ; preds = %26
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @ENOSPC, align 4
  %41 = sub nsw i32 0, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i8*, i32, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %29
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @drm_mm_insert_node_in_range(%struct.drm_mm*, %struct.drm_mm_node*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32, ...) #2

declare dso_local i32 @drm_mm_remove_node(%struct.drm_mm_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
