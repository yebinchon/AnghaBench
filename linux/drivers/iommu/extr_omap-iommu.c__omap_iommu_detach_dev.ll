; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c__omap_iommu_detach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c__omap_iommu_detach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu_domain = type { i32, %struct.device*, %struct.omap_iommu_device* }
%struct.omap_iommu_device = type { %struct.omap_iommu* }
%struct.omap_iommu = type { i32* }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.omap_iommu_arch_data* }
%struct.omap_iommu_arch_data = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"domain has no attached device\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid attached device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_iommu_domain*, %struct.device*)* @_omap_iommu_detach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap_iommu_detach_dev(%struct.omap_iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.omap_iommu_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.omap_iommu_arch_data*, align 8
  %6 = alloca %struct.omap_iommu_device*, align 8
  %7 = alloca %struct.omap_iommu*, align 8
  %8 = alloca i32, align 4
  store %struct.omap_iommu_domain* %0, %struct.omap_iommu_domain** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %11, align 8
  store %struct.omap_iommu_arch_data* %12, %struct.omap_iommu_arch_data** %5, align 8
  %13 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %3, align 8
  %14 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %13, i32 0, i32 2
  %15 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %14, align 8
  store %struct.omap_iommu_device* %15, %struct.omap_iommu_device** %6, align 8
  %16 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %3, align 8
  %17 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %16, i32 0, i32 1
  %18 = load %struct.device*, %struct.device** %17, align 8
  %19 = icmp ne %struct.device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %3, align 8
  %25 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %24, i32 0, i32 1
  %26 = load %struct.device*, %struct.device** %25, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = icmp ne %struct.device* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %77

32:                                               ; preds = %23
  %33 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %3, align 8
  %34 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %6, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %37, i64 %38
  store %struct.omap_iommu_device* %39, %struct.omap_iommu_device** %6, align 8
  %40 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %3, align 8
  %41 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %5, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds %struct.omap_iommu_arch_data, %struct.omap_iommu_arch_data* %44, i64 %45
  store %struct.omap_iommu_arch_data* %46, %struct.omap_iommu_arch_data** %5, align 8
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %65, %32
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %3, align 8
  %50 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %6, align 8
  %55 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %54, i32 0, i32 0
  %56 = load %struct.omap_iommu*, %struct.omap_iommu** %55, align 8
  store %struct.omap_iommu* %56, %struct.omap_iommu** %7, align 8
  %57 = load %struct.omap_iommu*, %struct.omap_iommu** %7, align 8
  %58 = call i32 @iopgtable_clear_entry_all(%struct.omap_iommu* %57)
  %59 = load %struct.omap_iommu*, %struct.omap_iommu** %7, align 8
  %60 = call i32 @omap_iommu_detach(%struct.omap_iommu* %59)
  %61 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %6, align 8
  %62 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %61, i32 0, i32 0
  store %struct.omap_iommu* null, %struct.omap_iommu** %62, align 8
  %63 = load %struct.omap_iommu*, %struct.omap_iommu** %7, align 8
  %64 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %6, align 8
  %69 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %68, i32 -1
  store %struct.omap_iommu_device* %69, %struct.omap_iommu_device** %6, align 8
  %70 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %5, align 8
  %71 = getelementptr inbounds %struct.omap_iommu_arch_data, %struct.omap_iommu_arch_data* %70, i32 -1
  store %struct.omap_iommu_arch_data* %71, %struct.omap_iommu_arch_data** %5, align 8
  br label %47

72:                                               ; preds = %47
  %73 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %3, align 8
  %74 = call i32 @omap_iommu_detach_fini(%struct.omap_iommu_domain* %73)
  %75 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %3, align 8
  %76 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %75, i32 0, i32 1
  store %struct.device* null, %struct.device** %76, align 8
  br label %77

77:                                               ; preds = %72, %29, %20
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @iopgtable_clear_entry_all(%struct.omap_iommu*) #1

declare dso_local i32 @omap_iommu_detach(%struct.omap_iommu*) #1

declare dso_local i32 @omap_iommu_detach_fini(%struct.omap_iommu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
