; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_parse_data_bus_icc_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_parse_data_bus_icc_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.dpu_mdss = type { i32, %struct.icc_path** }
%struct.icc_path = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"mdp0-mem\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"mdp1-mem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.dpu_mdss*)* @dpu_mdss_parse_data_bus_icc_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_mdss_parse_data_bus_icc_path(%struct.drm_device* %0, %struct.dpu_mdss* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.dpu_mdss*, align 8
  %6 = alloca %struct.icc_path*, align 8
  %7 = alloca %struct.icc_path*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.dpu_mdss* %1, %struct.dpu_mdss** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.icc_path* @of_icc_get(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.icc_path* %11, %struct.icc_path** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.icc_path* @of_icc_get(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.icc_path* %15, %struct.icc_path** %7, align 8
  %16 = load %struct.icc_path*, %struct.icc_path** %6, align 8
  %17 = call i64 @IS_ERR_OR_NULL(%struct.icc_path* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.icc_path*, %struct.icc_path** %6, align 8
  %21 = call i32 @PTR_ERR_OR_ZERO(%struct.icc_path* %20)
  store i32 %21, i32* %3, align 4
  br label %44

22:                                               ; preds = %2
  %23 = load %struct.icc_path*, %struct.icc_path** %6, align 8
  %24 = load %struct.dpu_mdss*, %struct.dpu_mdss** %5, align 8
  %25 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %24, i32 0, i32 1
  %26 = load %struct.icc_path**, %struct.icc_path*** %25, align 8
  %27 = getelementptr inbounds %struct.icc_path*, %struct.icc_path** %26, i64 0
  store %struct.icc_path* %23, %struct.icc_path** %27, align 8
  %28 = load %struct.dpu_mdss*, %struct.dpu_mdss** %5, align 8
  %29 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.icc_path*, %struct.icc_path** %7, align 8
  %31 = call i64 @IS_ERR_OR_NULL(%struct.icc_path* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %22
  %34 = load %struct.icc_path*, %struct.icc_path** %7, align 8
  %35 = load %struct.dpu_mdss*, %struct.dpu_mdss** %5, align 8
  %36 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %35, i32 0, i32 1
  %37 = load %struct.icc_path**, %struct.icc_path*** %36, align 8
  %38 = getelementptr inbounds %struct.icc_path*, %struct.icc_path** %37, i64 1
  store %struct.icc_path* %34, %struct.icc_path** %38, align 8
  %39 = load %struct.dpu_mdss*, %struct.dpu_mdss** %5, align 8
  %40 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %33, %22
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.icc_path* @of_icc_get(i32, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.icc_path*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.icc_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
