; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_expect_insert_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_expect_insert_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32 }
%struct.drm_mm_node = type { i32 }
%struct.insert_mode = type { i32, i32 }

@.str = private unnamed_addr constant [98 x i8] c"insert (size=%llu, alignment=%llu, color=%lu, mode=%s) nto range [%llx, %llx] failed with err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_mm*, %struct.drm_mm_node*, i32, i32, i64, i32, i32, %struct.insert_mode*)* @expect_insert_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expect_insert_in_range(%struct.drm_mm* %0, %struct.drm_mm_node* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, %struct.insert_mode* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_mm*, align 8
  %11 = alloca %struct.drm_mm_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.insert_mode*, align 8
  %18 = alloca i32, align 4
  store %struct.drm_mm* %0, %struct.drm_mm** %10, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.insert_mode* %7, %struct.insert_mode** %17, align 8
  %19 = load %struct.drm_mm*, %struct.drm_mm** %10, align 8
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i64, i64* %14, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load %struct.insert_mode*, %struct.insert_mode** %17, align 8
  %27 = getelementptr inbounds %struct.insert_mode, %struct.insert_mode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @drm_mm_insert_node_in_range(%struct.drm_mm* %19, %struct.drm_mm_node* %20, i32 %21, i32 %22, i64 %23, i32 %24, i32 %25, i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i64, i64* %14, align 8
  %36 = load %struct.insert_mode*, %struct.insert_mode** %17, align 8
  %37 = getelementptr inbounds %struct.insert_mode, %struct.insert_mode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i64 %35, i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 0, i32* %9, align 4
  br label %55

43:                                               ; preds = %8
  %44 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %45 = load %struct.drm_mm*, %struct.drm_mm** %10, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @assert_node(%struct.drm_mm_node* %44, %struct.drm_mm* %45, i32 %46, i32 %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %53 = call i32 @drm_mm_remove_node(%struct.drm_mm_node* %52)
  store i32 0, i32* %9, align 4
  br label %55

54:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %51, %32
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @drm_mm_insert_node_in_range(%struct.drm_mm*, %struct.drm_mm_node*, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @assert_node(%struct.drm_mm_node*, %struct.drm_mm*, i32, i32, i64) #1

declare dso_local i32 @drm_mm_remove_node(%struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
