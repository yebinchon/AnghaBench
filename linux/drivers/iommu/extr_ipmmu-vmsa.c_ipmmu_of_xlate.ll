; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.of_phandle_args = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.of_phandle_args*)* @ipmmu_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmmu_of_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = call i32 @ipmmu_slave_whitelist(%struct.device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %15 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iommu_fwspec_add_ids(%struct.device* %13, i32 %16, i32 1)
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i64 @to_ipmmu(%struct.device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %26

22:                                               ; preds = %12
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %25 = call i32 @ipmmu_init_platform_device(%struct.device* %23, %struct.of_phandle_args* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %21, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ipmmu_slave_whitelist(%struct.device*) #1

declare dso_local i32 @iommu_fwspec_add_ids(%struct.device*, i32, i32) #1

declare dso_local i64 @to_ipmmu(%struct.device*) #1

declare dso_local i32 @ipmmu_init_platform_device(%struct.device*, %struct.of_phandle_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
