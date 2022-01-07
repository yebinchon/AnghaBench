; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_attach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_attach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.omap_iommu_arch_data* }
%struct.omap_iommu_arch_data = type { %struct.omap_iommu* }
%struct.omap_iommu = type { %struct.iommu_domain* }
%struct.omap_iommu_domain = type { i32, i32, %struct.device*, %struct.omap_iommu_device* }
%struct.omap_iommu_device = type { %struct.omap_iommu*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"device doesn't have an associated iommu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"iommu domain is already attached\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to allocate required iommu data %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"can't get omap iommu: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, %struct.device*)* @omap_iommu_attach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_iommu_attach_dev(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.omap_iommu_domain*, align 8
  %7 = alloca %struct.omap_iommu_arch_data*, align 8
  %8 = alloca %struct.omap_iommu_device*, align 8
  %9 = alloca %struct.omap_iommu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %12 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %13 = call %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain* %12)
  store %struct.omap_iommu_domain* %13, %struct.omap_iommu_domain** %6, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %16, align 8
  store %struct.omap_iommu_arch_data* %17, %struct.omap_iommu_arch_data** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %7, align 8
  %19 = icmp ne %struct.omap_iommu_arch_data* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %7, align 8
  %22 = getelementptr inbounds %struct.omap_iommu_arch_data, %struct.omap_iommu_arch_data* %21, i32 0, i32 0
  %23 = load %struct.omap_iommu*, %struct.omap_iommu** %22, align 8
  %24 = icmp ne %struct.omap_iommu* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %124

30:                                               ; preds = %20
  %31 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %6, align 8
  %32 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %6, align 8
  %35 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %34, i32 0, i32 2
  %36 = load %struct.device*, %struct.device** %35, align 8
  %37 = icmp ne %struct.device* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %119

43:                                               ; preds = %30
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %6, align 8
  %46 = call i32 @omap_iommu_attach_init(%struct.device* %44, %struct.omap_iommu_domain* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %116

53:                                               ; preds = %43
  %54 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %6, align 8
  %55 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %54, i32 0, i32 3
  %56 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %55, align 8
  store %struct.omap_iommu_device* %56, %struct.omap_iommu_device** %8, align 8
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %85, %53
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %6, align 8
  %60 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %57
  %64 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %7, align 8
  %65 = getelementptr inbounds %struct.omap_iommu_arch_data, %struct.omap_iommu_arch_data* %64, i32 0, i32 0
  %66 = load %struct.omap_iommu*, %struct.omap_iommu** %65, align 8
  store %struct.omap_iommu* %66, %struct.omap_iommu** %9, align 8
  %67 = load %struct.omap_iommu*, %struct.omap_iommu** %9, align 8
  %68 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %8, align 8
  %69 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @omap_iommu_attach(%struct.omap_iommu* %67, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %96

78:                                               ; preds = %63
  %79 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %80 = load %struct.omap_iommu*, %struct.omap_iommu** %9, align 8
  %81 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %80, i32 0, i32 0
  store %struct.iommu_domain* %79, %struct.iommu_domain** %81, align 8
  %82 = load %struct.omap_iommu*, %struct.omap_iommu** %9, align 8
  %83 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %8, align 8
  %84 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %83, i32 0, i32 0
  store %struct.omap_iommu* %82, %struct.omap_iommu** %84, align 8
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  %88 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %8, align 8
  %89 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %88, i32 1
  store %struct.omap_iommu_device* %89, %struct.omap_iommu_device** %8, align 8
  %90 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %7, align 8
  %91 = getelementptr inbounds %struct.omap_iommu_arch_data, %struct.omap_iommu_arch_data* %90, i32 1
  store %struct.omap_iommu_arch_data* %91, %struct.omap_iommu_arch_data** %7, align 8
  br label %57

92:                                               ; preds = %57
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %6, align 8
  %95 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %94, i32 0, i32 2
  store %struct.device* %93, %struct.device** %95, align 8
  br label %119

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %101, %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %11, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %8, align 8
  %103 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %102, i32 -1
  store %struct.omap_iommu_device* %103, %struct.omap_iommu_device** %8, align 8
  %104 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %7, align 8
  %105 = getelementptr inbounds %struct.omap_iommu_arch_data, %struct.omap_iommu_arch_data* %104, i32 -1
  store %struct.omap_iommu_arch_data* %105, %struct.omap_iommu_arch_data** %7, align 8
  %106 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %8, align 8
  %107 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %106, i32 0, i32 0
  %108 = load %struct.omap_iommu*, %struct.omap_iommu** %107, align 8
  store %struct.omap_iommu* %108, %struct.omap_iommu** %9, align 8
  %109 = load %struct.omap_iommu*, %struct.omap_iommu** %9, align 8
  %110 = call i32 @omap_iommu_detach(%struct.omap_iommu* %109)
  %111 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %8, align 8
  %112 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %111, i32 0, i32 0
  store %struct.omap_iommu* null, %struct.omap_iommu** %112, align 8
  %113 = load %struct.omap_iommu*, %struct.omap_iommu** %9, align 8
  %114 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %113, i32 0, i32 0
  store %struct.iommu_domain* null, %struct.iommu_domain** %114, align 8
  br label %97

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115, %49
  %117 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %6, align 8
  %118 = call i32 @omap_iommu_detach_fini(%struct.omap_iommu_domain* %117)
  br label %119

119:                                              ; preds = %116, %92, %38
  %120 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %6, align 8
  %121 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %120, i32 0, i32 1
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %25
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @omap_iommu_attach_init(%struct.device*, %struct.omap_iommu_domain*) #1

declare dso_local i32 @omap_iommu_attach(%struct.omap_iommu*, i32) #1

declare dso_local i32 @omap_iommu_detach(%struct.omap_iommu*) #1

declare dso_local i32 @omap_iommu_detach_fini(%struct.omap_iommu_domain*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
