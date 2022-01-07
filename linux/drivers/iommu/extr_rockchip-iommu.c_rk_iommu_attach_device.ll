; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_attach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.device = type { i32 }
%struct.rk_iommu = type { i32, %struct.iommu_domain*, i32 }
%struct.rk_iommu_domain = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Attaching to iommu domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, %struct.device*)* @rk_iommu_attach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_attach_device(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.rk_iommu*, align 8
  %7 = alloca %struct.rk_iommu_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %10 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %11 = call %struct.rk_iommu_domain* @to_rk_domain(%struct.iommu_domain* %10)
  store %struct.rk_iommu_domain* %11, %struct.rk_iommu_domain** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.rk_iommu* @rk_iommu_from_dev(%struct.device* %12)
  store %struct.rk_iommu* %13, %struct.rk_iommu** %6, align 8
  %14 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %15 = icmp ne %struct.rk_iommu* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %21 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %20, i32 0, i32 1
  %22 = load %struct.iommu_domain*, %struct.iommu_domain** %21, align 8
  %23 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %24 = icmp eq %struct.iommu_domain* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %84

26:                                               ; preds = %17
  %27 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %28 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %27, i32 0, i32 1
  %29 = load %struct.iommu_domain*, %struct.iommu_domain** %28, align 8
  %30 = icmp ne %struct.iommu_domain* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %33 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %32, i32 0, i32 1
  %34 = load %struct.iommu_domain*, %struct.iommu_domain** %33, align 8
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @rk_iommu_detach_device(%struct.iommu_domain* %34, %struct.device* %35)
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %39 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %40 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %39, i32 0, i32 1
  store %struct.iommu_domain* %38, %struct.iommu_domain** %40, align 8
  %41 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %7, align 8
  %42 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %41, i32 0, i32 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %46 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %45, i32 0, i32 2
  %47 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %7, align 8
  %48 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %47, i32 0, i32 1
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  %50 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %7, align 8
  %51 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %50, i32 0, i32 0
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %55 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pm_runtime_get_if_in_use(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %37
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @WARN_ON_ONCE(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %37
  store i32 0, i32* %3, align 4
  br label %84

67:                                               ; preds = %60
  %68 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %69 = call i32 @rk_iommu_enable(%struct.rk_iommu* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %74 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %73, i32 0, i32 1
  %75 = load %struct.iommu_domain*, %struct.iommu_domain** %74, align 8
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = call i32 @rk_iommu_detach_device(%struct.iommu_domain* %75, %struct.device* %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %80 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pm_runtime_put(i32 %81)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %78, %66, %25, %16
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.rk_iommu_domain* @to_rk_domain(%struct.iommu_domain*) #1

declare dso_local %struct.rk_iommu* @rk_iommu_from_dev(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @rk_iommu_detach_device(%struct.iommu_domain*, %struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_get_if_in_use(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rk_iommu_enable(%struct.rk_iommu*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
