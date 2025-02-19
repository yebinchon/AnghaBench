; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_get_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_get_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_mdss_cfg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@INTF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_mdss_cfg*, i32, i64)* @dpu_encoder_get_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_get_intf(%struct.dpu_mdss_cfg* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_mdss_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dpu_mdss_cfg* %0, %struct.dpu_mdss_cfg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %47, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.dpu_mdss_cfg, %struct.dpu_mdss_cfg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %9
  %16 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.dpu_mdss_cfg, %struct.dpu_mdss_cfg* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %15
  %27 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %5, align 8
  %28 = getelementptr inbounds %struct.dpu_mdss_cfg, %struct.dpu_mdss_cfg* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %5, align 8
  %39 = getelementptr inbounds %struct.dpu_mdss_cfg, %struct.dpu_mdss_cfg* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %26, %15
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %9

50:                                               ; preds = %9
  %51 = load i32, i32* @INTF_MAX, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %37
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
