; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_icc_request_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_icc_request_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_mdss = type { i32 }
%struct.dpu_mdss = type { i32, i32* }

@MAX_BW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_mdss*)* @dpu_mdss_icc_request_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_mdss_icc_request_bw(%struct.msm_mdss* %0) #0 {
  %2 = alloca %struct.msm_mdss*, align 8
  %3 = alloca %struct.dpu_mdss*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msm_mdss* %0, %struct.msm_mdss** %2, align 8
  %6 = load %struct.msm_mdss*, %struct.msm_mdss** %2, align 8
  %7 = call %struct.dpu_mdss* @to_dpu_mdss(%struct.msm_mdss* %6)
  store %struct.dpu_mdss* %7, %struct.dpu_mdss** %3, align 8
  %8 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %9 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @MAX_BW, align 4
  %14 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %15 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %13, %16
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %17, %12 ], [ 0, %18 ]
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %39, %19
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %24 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.dpu_mdss*, %struct.dpu_mdss** %3, align 8
  %29 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MAX_BW, align 4
  %37 = call i32 @kBps_to_icc(i32 %36)
  %38 = call i32 @icc_set_bw(i32 %34, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %21

42:                                               ; preds = %21
  ret void
}

declare dso_local %struct.dpu_mdss* @to_dpu_mdss(%struct.msm_mdss*) #1

declare dso_local i32 @icc_set_bw(i32, i32, i32) #1

declare dso_local i32 @kBps_to_icc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
