; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_drm_selftest.c_run_selftests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_drm_selftest.c_run_selftests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_selftest = type { i32 (i8*)*, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"drm: Running %s\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%s returned %d, conflicting with selftest's magic values!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_selftest*, i64, i8*)* @run_selftests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_selftests(%struct.drm_selftest* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.drm_selftest*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_selftest* %0, %struct.drm_selftest** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.drm_selftest*, %struct.drm_selftest** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @set_default_test_all(%struct.drm_selftest* %8, i64 %9)
  br label %11

11:                                               ; preds = %35, %3
  %12 = load i64, i64* %5, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %5, align 8
  %14 = icmp ne i64 %12, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.drm_selftest*, %struct.drm_selftest** %4, align 8
  %17 = getelementptr inbounds %struct.drm_selftest, %struct.drm_selftest* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %35

21:                                               ; preds = %15
  %22 = load %struct.drm_selftest*, %struct.drm_selftest** %4, align 8
  %23 = getelementptr inbounds %struct.drm_selftest, %struct.drm_selftest* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.drm_selftest*, %struct.drm_selftest** %4, align 8
  %27 = getelementptr inbounds %struct.drm_selftest, %struct.drm_selftest* %26, i32 0, i32 0
  %28 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 %28(i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %38

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.drm_selftest*, %struct.drm_selftest** %4, align 8
  %37 = getelementptr inbounds %struct.drm_selftest, %struct.drm_selftest* %36, i32 1
  store %struct.drm_selftest* %37, %struct.drm_selftest** %4, align 8
  br label %11

38:                                               ; preds = %33, %11
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ENOTTY, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ true, %38 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = load %struct.drm_selftest*, %struct.drm_selftest** %4, align 8
  %50 = getelementptr inbounds %struct.drm_selftest, %struct.drm_selftest* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @WARN(i32 %48, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 -1, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %46
  %57 = call i32 (...) @rcu_barrier()
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @set_default_test_all(%struct.drm_selftest*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @rcu_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
