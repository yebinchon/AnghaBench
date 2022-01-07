; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_get_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_get_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_clk = type { i32 }
%struct.dpu_kms = type { %struct.dss_module_power }
%struct.dss_module_power = type { i32, %struct.dss_clk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dss_clk* (%struct.dpu_kms*, i8*)* @_dpu_kms_get_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dss_clk* @_dpu_kms_get_clk(%struct.dpu_kms* %0, i8* %1) #0 {
  %3 = alloca %struct.dss_clk*, align 8
  %4 = alloca %struct.dpu_kms*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dss_module_power*, align 8
  %7 = alloca i32, align 4
  store %struct.dpu_kms* %0, %struct.dpu_kms** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %9 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %8, i32 0, i32 0
  store %struct.dss_module_power* %9, %struct.dss_module_power** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %36, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.dss_module_power*, %struct.dss_module_power** %6, align 8
  %13 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load %struct.dss_module_power*, %struct.dss_module_power** %6, align 8
  %18 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %17, i32 0, i32 1
  %19 = load %struct.dss_clk*, %struct.dss_clk** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dss_clk, %struct.dss_clk* %19, i64 %21
  %23 = getelementptr inbounds %struct.dss_clk, %struct.dss_clk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strcmp(i32 %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %16
  %29 = load %struct.dss_module_power*, %struct.dss_module_power** %6, align 8
  %30 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %29, i32 0, i32 1
  %31 = load %struct.dss_clk*, %struct.dss_clk** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.dss_clk, %struct.dss_clk* %31, i64 %33
  store %struct.dss_clk* %34, %struct.dss_clk** %3, align 8
  br label %40

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %10

39:                                               ; preds = %10
  store %struct.dss_clk* null, %struct.dss_clk** %3, align 8
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.dss_clk*, %struct.dss_clk** %3, align 8
  ret %struct.dss_clk* %41
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
