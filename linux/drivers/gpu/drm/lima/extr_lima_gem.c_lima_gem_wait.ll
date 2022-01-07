; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }

@LIMA_GEM_WAIT_WRITE = common dso_local global i32 0, align 4
@ETIME = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_gem_wait(%struct.drm_file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.drm_file* %0, %struct.drm_file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @LIMA_GEM_WAIT_WRITE, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @drm_timeout_abs_to_jiffies(i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @drm_gem_dma_resv_wait(%struct.drm_file* %22, i32 %23, i32 %24, i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @ETIME, align 8
  %29 = sub nsw i64 0, %28
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %19
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* @ETIMEDOUT, align 8
  %36 = sub nsw i64 0, %35
  br label %40

37:                                               ; preds = %31
  %38 = load i64, i64* @EBUSY, align 8
  %39 = sub nsw i64 0, %38
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i64 [ %36, %34 ], [ %39, %37 ]
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %40, %19
  %43 = load i64, i64* %11, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %18
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @drm_timeout_abs_to_jiffies(i32) #1

declare dso_local i64 @drm_gem_dma_resv_wait(%struct.drm_file*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
