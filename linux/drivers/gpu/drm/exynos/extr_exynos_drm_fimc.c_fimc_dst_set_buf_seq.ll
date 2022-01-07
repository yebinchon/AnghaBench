; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_dst_set_buf_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_dst_set_buf_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"buf_id[%d]enqueu[%d]\0A\00", align 1
@EXYNOS_CIFCNTSEQ = common dso_local global i32 0, align 4
@FIMC_BUF_START = common dso_local global i32 0, align 4
@FIMC_BUF_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*, i32, i32)* @fimc_dst_set_buf_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_dst_set_buf_seq(%struct.fimc_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fimc_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %11 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @DRM_DEV_DEBUG_KMS(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %17 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %21 = load i32, i32* @EXYNOS_CIFCNTSEQ, align 4
  %22 = call i32 @fimc_read(%struct.fimc_context* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %36

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @EXYNOS_CIFCNTSEQ, align 4
  %40 = call i32 @fimc_write(%struct.fimc_context* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @hweight32(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @FIMC_BUF_START, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %51 = call i32 @fimc_mask_irq(%struct.fimc_context* %50, i32 1)
  br label %63

52:                                               ; preds = %45, %36
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @FIMC_BUF_STOP, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %61 = call i32 @fimc_mask_irq(%struct.fimc_context* %60, i32 0)
  br label %62

62:                                               ; preds = %59, %55, %52
  br label %63

63:                                               ; preds = %62, %49
  %64 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %65 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %64, i32 0, i32 0
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @fimc_write(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @fimc_mask_irq(%struct.fimc_context*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
