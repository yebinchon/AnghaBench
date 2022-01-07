; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_igt_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_igt_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32 }
%struct.drm_mm_node = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"failed to reserve node[0] {start=%lld, size=%lld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"failed to reserve node[1] {start=%lld, size=%lld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_debug(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_mm, align 4
  %5 = alloca [2 x %struct.drm_mm_node], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i32 @drm_mm_init(%struct.drm_mm* %4, i32 0, i32 4096)
  %8 = getelementptr inbounds [2 x %struct.drm_mm_node], [2 x %struct.drm_mm_node]* %5, i64 0, i64 0
  %9 = call i32 @memset(%struct.drm_mm_node* %8, i32 0, i32 16)
  %10 = getelementptr inbounds [2 x %struct.drm_mm_node], [2 x %struct.drm_mm_node]* %5, i64 0, i64 0
  %11 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %10, i32 0, i32 0
  store i32 512, i32* %11, align 16
  %12 = getelementptr inbounds [2 x %struct.drm_mm_node], [2 x %struct.drm_mm_node]* %5, i64 0, i64 0
  %13 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 1
  store i32 1024, i32* %13, align 4
  %14 = getelementptr inbounds [2 x %struct.drm_mm_node], [2 x %struct.drm_mm_node]* %5, i64 0, i64 0
  %15 = call i32 @drm_mm_reserve_node(%struct.drm_mm* %4, %struct.drm_mm_node* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = getelementptr inbounds [2 x %struct.drm_mm_node], [2 x %struct.drm_mm_node]* %5, i64 0, i64 0
  %20 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 16
  %22 = getelementptr inbounds [2 x %struct.drm_mm_node], [2 x %struct.drm_mm_node]* %5, i64 0, i64 0
  %23 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %51

27:                                               ; preds = %1
  %28 = getelementptr inbounds [2 x %struct.drm_mm_node], [2 x %struct.drm_mm_node]* %5, i64 0, i64 1
  %29 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %28, i32 0, i32 1
  store i32 1024, i32* %29, align 4
  %30 = getelementptr inbounds [2 x %struct.drm_mm_node], [2 x %struct.drm_mm_node]* %5, i64 0, i64 1
  %31 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 3584, %32
  %34 = getelementptr inbounds [2 x %struct.drm_mm_node], [2 x %struct.drm_mm_node]* %5, i64 0, i64 1
  %35 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = getelementptr inbounds [2 x %struct.drm_mm_node], [2 x %struct.drm_mm_node]* %5, i64 0, i64 1
  %37 = call i32 @drm_mm_reserve_node(%struct.drm_mm* %4, %struct.drm_mm_node* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %27
  %41 = getelementptr inbounds [2 x %struct.drm_mm_node], [2 x %struct.drm_mm_node]* %5, i64 0, i64 1
  %42 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds [2 x %struct.drm_mm_node], [2 x %struct.drm_mm_node]* %5, i64 0, i64 1
  %45 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %27
  %50 = call i32 @show_mm(%struct.drm_mm* %4)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %40, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @drm_mm_init(%struct.drm_mm*, i32, i32) #1

declare dso_local i32 @memset(%struct.drm_mm_node*, i32, i32) #1

declare dso_local i32 @drm_mm_reserve_node(%struct.drm_mm*, %struct.drm_mm_node*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @show_mm(%struct.drm_mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
