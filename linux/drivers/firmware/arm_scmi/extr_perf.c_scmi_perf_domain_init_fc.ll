; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_domain_init_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_domain_init_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_fc_info = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PERF_LEVEL_SET = common dso_local global i32 0, align 4
@PERF_LEVEL_GET = common dso_local global i32 0, align 4
@PERF_LIMITS_SET = common dso_local global i32 0, align 4
@PERF_LIMITS_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scmi_handle*, i32, %struct.scmi_fc_info**)* @scmi_perf_domain_init_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scmi_perf_domain_init_fc(%struct.scmi_handle* %0, i32 %1, %struct.scmi_fc_info** %2) #0 {
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scmi_fc_info**, align 8
  %7 = alloca %struct.scmi_fc_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.scmi_fc_info** %2, %struct.scmi_fc_info*** %6, align 8
  %8 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %9 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.scmi_fc_info* @devm_kzalloc(i32 %10, i32 24, i32 %11)
  store %struct.scmi_fc_info* %12, %struct.scmi_fc_info** %7, align 8
  %13 = load %struct.scmi_fc_info*, %struct.scmi_fc_info** %7, align 8
  %14 = icmp ne %struct.scmi_fc_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %47

16:                                               ; preds = %3
  %17 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PERF_LEVEL_SET, align 4
  %20 = load %struct.scmi_fc_info*, %struct.scmi_fc_info** %7, align 8
  %21 = getelementptr inbounds %struct.scmi_fc_info, %struct.scmi_fc_info* %20, i32 0, i32 5
  %22 = load %struct.scmi_fc_info*, %struct.scmi_fc_info** %7, align 8
  %23 = getelementptr inbounds %struct.scmi_fc_info, %struct.scmi_fc_info* %22, i32 0, i32 4
  %24 = call i32 @scmi_perf_domain_desc_fc(%struct.scmi_handle* %17, i32 %18, i32 %19, i32* %21, i32* %23)
  %25 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PERF_LEVEL_GET, align 4
  %28 = load %struct.scmi_fc_info*, %struct.scmi_fc_info** %7, align 8
  %29 = getelementptr inbounds %struct.scmi_fc_info, %struct.scmi_fc_info* %28, i32 0, i32 3
  %30 = call i32 @scmi_perf_domain_desc_fc(%struct.scmi_handle* %25, i32 %26, i32 %27, i32* %29, i32* null)
  %31 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PERF_LIMITS_SET, align 4
  %34 = load %struct.scmi_fc_info*, %struct.scmi_fc_info** %7, align 8
  %35 = getelementptr inbounds %struct.scmi_fc_info, %struct.scmi_fc_info* %34, i32 0, i32 2
  %36 = load %struct.scmi_fc_info*, %struct.scmi_fc_info** %7, align 8
  %37 = getelementptr inbounds %struct.scmi_fc_info, %struct.scmi_fc_info* %36, i32 0, i32 1
  %38 = call i32 @scmi_perf_domain_desc_fc(%struct.scmi_handle* %31, i32 %32, i32 %33, i32* %35, i32* %37)
  %39 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @PERF_LIMITS_GET, align 4
  %42 = load %struct.scmi_fc_info*, %struct.scmi_fc_info** %7, align 8
  %43 = getelementptr inbounds %struct.scmi_fc_info, %struct.scmi_fc_info* %42, i32 0, i32 0
  %44 = call i32 @scmi_perf_domain_desc_fc(%struct.scmi_handle* %39, i32 %40, i32 %41, i32* %43, i32* null)
  %45 = load %struct.scmi_fc_info*, %struct.scmi_fc_info** %7, align 8
  %46 = load %struct.scmi_fc_info**, %struct.scmi_fc_info*** %6, align 8
  store %struct.scmi_fc_info* %45, %struct.scmi_fc_info** %46, align 8
  br label %47

47:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.scmi_fc_info* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @scmi_perf_domain_desc_fc(%struct.scmi_handle*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
