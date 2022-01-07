; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-pr.c_pr_mgmt_uinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-pr.c_pr_mgmt_uinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dfl_feature = type { i32 }
%struct.dfl_feature_platform_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.dfl_feature*)* @pr_mgmt_uinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_mgmt_uinit(%struct.platform_device* %0, %struct.dfl_feature* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dfl_feature*, align 8
  %5 = alloca %struct.dfl_feature_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.dfl_feature* %1, %struct.dfl_feature** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.dfl_feature_platform_data* @dev_get_platdata(i32* %7)
  store %struct.dfl_feature_platform_data* %8, %struct.dfl_feature_platform_data** %5, align 8
  %9 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %5, align 8
  %10 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %5, align 8
  %13 = call i32 @dfl_fme_destroy_regions(%struct.dfl_feature_platform_data* %12)
  %14 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %5, align 8
  %15 = call i32 @dfl_fme_destroy_bridges(%struct.dfl_feature_platform_data* %14)
  %16 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %5, align 8
  %17 = call i32 @dfl_fme_destroy_mgr(%struct.dfl_feature_platform_data* %16)
  %18 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %5, align 8
  %19 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  ret void
}

declare dso_local %struct.dfl_feature_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dfl_fme_destroy_regions(%struct.dfl_feature_platform_data*) #1

declare dso_local i32 @dfl_fme_destroy_bridges(%struct.dfl_feature_platform_data*) #1

declare dso_local i32 @dfl_fme_destroy_mgr(%struct.dfl_feature_platform_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
