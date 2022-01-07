; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_context = type { i32 }

@SCALER_RESET_WAIT_RETRIES = common dso_local global i32 0, align 4
@SCALER_CFG_SOFT_RESET = common dso_local global i32 0, align 4
@SCALER_CFG = common dso_local global i32 0, align 4
@SCALER_INT_EN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scaler_context*)* @scaler_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scaler_reset(%struct.scaler_context* %0) #0 {
  %2 = alloca %struct.scaler_context*, align 8
  %3 = alloca i32, align 4
  store %struct.scaler_context* %0, %struct.scaler_context** %2, align 8
  %4 = load i32, i32* @SCALER_RESET_WAIT_RETRIES, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @SCALER_CFG_SOFT_RESET, align 4
  %6 = load i32, i32* @SCALER_CFG, align 4
  %7 = call i32 @scaler_write(i32 %5, i32 %6)
  br label %8

8:                                                ; preds = %20, %1
  %9 = call i32 (...) @cpu_relax()
  br label %10

10:                                               ; preds = %8
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %3, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* @SCALER_CFG, align 4
  %16 = call i32 @scaler_read(i32 %15)
  %17 = load i32, i32* @SCALER_CFG_SOFT_RESET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi i1 [ false, %10 ], [ %19, %14 ]
  br i1 %21, label %8, label %22

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %35, %22
  %24 = call i32 (...) @cpu_relax()
  %25 = load i32, i32* @SCALER_INT_EN, align 4
  %26 = call i32 @scaler_write(i32 1, i32 %25)
  br label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %3, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @SCALER_INT_EN, align 4
  %33 = call i32 @scaler_read(i32 %32)
  %34 = icmp ne i32 %33, 1
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  br i1 %36, label %23, label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i32 [ 0, %40 ], [ %43, %41 ]
  ret i32 %45
}

declare dso_local i32 @scaler_write(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @scaler_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
