; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_cfg.c_msm_dsi_cfg_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_cfg.c_msm_dsi_cfg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_cfg_handler = type { i64, i64 }

@dsi_cfg_handlers = common dso_local global %struct.msm_dsi_cfg_handler* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_dsi_cfg_handler* @msm_dsi_cfg_get(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.msm_dsi_cfg_handler*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.msm_dsi_cfg_handler* null, %struct.msm_dsi_cfg_handler** %5, align 8
  %7 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** @dsi_cfg_handlers, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.msm_dsi_cfg_handler* %7)
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** @dsi_cfg_handlers, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.msm_dsi_cfg_handler, %struct.msm_dsi_cfg_handler* %14, i64 %16
  %18 = getelementptr inbounds %struct.msm_dsi_cfg_handler, %struct.msm_dsi_cfg_handler* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %13
  %23 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** @dsi_cfg_handlers, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.msm_dsi_cfg_handler, %struct.msm_dsi_cfg_handler* %23, i64 %25
  %27 = getelementptr inbounds %struct.msm_dsi_cfg_handler, %struct.msm_dsi_cfg_handler* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** @dsi_cfg_handlers, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.msm_dsi_cfg_handler, %struct.msm_dsi_cfg_handler* %32, i64 %34
  store %struct.msm_dsi_cfg_handler* %35, %struct.msm_dsi_cfg_handler** %5, align 8
  br label %40

36:                                               ; preds = %22, %13
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %10

40:                                               ; preds = %31, %10
  %41 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** %5, align 8
  ret %struct.msm_dsi_cfg_handler* %41
}

declare dso_local i32 @ARRAY_SIZE(%struct.msm_dsi_cfg_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
