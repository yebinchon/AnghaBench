; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.dpu_mdss = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.irq_chip = type { i32 }

@HW_INTR_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"couldn't find irq mapping for %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"handle irq fail: irq=%lu mapping=%u rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @dpu_mdss_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_mdss_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.dpu_mdss*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.dpu_mdss* @irq_desc_get_handler_data(%struct.irq_desc* %9)
  store %struct.dpu_mdss* %10, %struct.dpu_mdss** %3, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %11)
  store %struct.irq_chip* %12, %struct.irq_chip** %4, align 8
  %13 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = call i32 @chained_irq_enter(%struct.irq_chip* %13, %struct.irq_desc* %14)
  %16 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %17 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HW_INTR_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %50, %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @fls(i32 %26)
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %30 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @irq_find_mapping(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %56

40:                                               ; preds = %25
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @generic_handle_irq(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  br label %56

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %22

56:                                               ; preds = %45, %37, %22
  %57 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %58 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %59 = call i32 @chained_irq_exit(%struct.irq_chip* %57, %struct.irq_desc* %58)
  ret void
}

declare dso_local %struct.dpu_mdss* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
