; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_report_device_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_report_device_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.iommu_param* }
%struct.iommu_param = type { i32, %struct.iommu_fault_param* }
%struct.iommu_fault_param = type { i32 (%struct.TYPE_4__*, i32)*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iommu_fault_event = type { i32, %struct.TYPE_4__ }

@EINVAL = common dso_local global i32 0, align 4
@IOMMU_FAULT_PAGE_REQ = common dso_local global i64 0, align 8
@IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_report_device_fault(%struct.device* %0, %struct.iommu_fault_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iommu_fault_event*, align 8
  %6 = alloca %struct.iommu_param*, align 8
  %7 = alloca %struct.iommu_fault_event*, align 8
  %8 = alloca %struct.iommu_fault_param*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.iommu_fault_event* %1, %struct.iommu_fault_event** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.iommu_param*, %struct.iommu_param** %11, align 8
  store %struct.iommu_param* %12, %struct.iommu_param** %6, align 8
  store %struct.iommu_fault_event* null, %struct.iommu_fault_event** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.iommu_param*, %struct.iommu_param** %6, align 8
  %14 = icmp ne %struct.iommu_param* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.iommu_fault_event*, %struct.iommu_fault_event** %5, align 8
  %17 = icmp ne %struct.iommu_fault_event* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %108

21:                                               ; preds = %15
  %22 = load %struct.iommu_param*, %struct.iommu_param** %6, align 8
  %23 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.iommu_param*, %struct.iommu_param** %6, align 8
  %26 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %25, i32 0, i32 1
  %27 = load %struct.iommu_fault_param*, %struct.iommu_fault_param** %26, align 8
  store %struct.iommu_fault_param* %27, %struct.iommu_fault_param** %8, align 8
  %28 = load %struct.iommu_fault_param*, %struct.iommu_fault_param** %8, align 8
  %29 = icmp ne %struct.iommu_fault_param* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.iommu_fault_param*, %struct.iommu_fault_param** %8, align 8
  %32 = getelementptr inbounds %struct.iommu_fault_param, %struct.iommu_fault_param* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.TYPE_4__*, i32)* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %21
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %103

38:                                               ; preds = %30
  %39 = load %struct.iommu_fault_event*, %struct.iommu_fault_event** %5, align 8
  %40 = getelementptr inbounds %struct.iommu_fault_event, %struct.iommu_fault_event* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IOMMU_FAULT_PAGE_REQ, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %38
  %46 = load %struct.iommu_fault_event*, %struct.iommu_fault_event** %5, align 8
  %47 = getelementptr inbounds %struct.iommu_fault_event, %struct.iommu_fault_event* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %45
  %55 = load %struct.iommu_fault_event*, %struct.iommu_fault_event** %5, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.iommu_fault_event* @kmemdup(%struct.iommu_fault_event* %55, i32 24, i32 %56)
  store %struct.iommu_fault_event* %57, %struct.iommu_fault_event** %7, align 8
  %58 = load %struct.iommu_fault_event*, %struct.iommu_fault_event** %7, align 8
  %59 = icmp ne %struct.iommu_fault_event* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %103

63:                                               ; preds = %54
  %64 = load %struct.iommu_fault_param*, %struct.iommu_fault_param** %8, align 8
  %65 = getelementptr inbounds %struct.iommu_fault_param, %struct.iommu_fault_param* %64, i32 0, i32 1
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load %struct.iommu_fault_event*, %struct.iommu_fault_event** %7, align 8
  %68 = getelementptr inbounds %struct.iommu_fault_event, %struct.iommu_fault_event* %67, i32 0, i32 0
  %69 = load %struct.iommu_fault_param*, %struct.iommu_fault_param** %8, align 8
  %70 = getelementptr inbounds %struct.iommu_fault_param, %struct.iommu_fault_param* %69, i32 0, i32 3
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  %72 = load %struct.iommu_fault_param*, %struct.iommu_fault_param** %8, align 8
  %73 = getelementptr inbounds %struct.iommu_fault_param, %struct.iommu_fault_param* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  br label %75

75:                                               ; preds = %63, %45, %38
  %76 = load %struct.iommu_fault_param*, %struct.iommu_fault_param** %8, align 8
  %77 = getelementptr inbounds %struct.iommu_fault_param, %struct.iommu_fault_param* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %77, align 8
  %79 = load %struct.iommu_fault_event*, %struct.iommu_fault_event** %5, align 8
  %80 = getelementptr inbounds %struct.iommu_fault_event, %struct.iommu_fault_event* %79, i32 0, i32 1
  %81 = load %struct.iommu_fault_param*, %struct.iommu_fault_param** %8, align 8
  %82 = getelementptr inbounds %struct.iommu_fault_param, %struct.iommu_fault_param* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 %78(%struct.TYPE_4__* %80, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %75
  %88 = load %struct.iommu_fault_event*, %struct.iommu_fault_event** %7, align 8
  %89 = icmp ne %struct.iommu_fault_event* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load %struct.iommu_fault_param*, %struct.iommu_fault_param** %8, align 8
  %92 = getelementptr inbounds %struct.iommu_fault_param, %struct.iommu_fault_param* %91, i32 0, i32 1
  %93 = call i32 @mutex_lock(i32* %92)
  %94 = load %struct.iommu_fault_event*, %struct.iommu_fault_event** %7, align 8
  %95 = getelementptr inbounds %struct.iommu_fault_event, %struct.iommu_fault_event* %94, i32 0, i32 0
  %96 = call i32 @list_del(i32* %95)
  %97 = load %struct.iommu_fault_param*, %struct.iommu_fault_param** %8, align 8
  %98 = getelementptr inbounds %struct.iommu_fault_param, %struct.iommu_fault_param* %97, i32 0, i32 1
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load %struct.iommu_fault_event*, %struct.iommu_fault_event** %7, align 8
  %101 = call i32 @kfree(%struct.iommu_fault_event* %100)
  br label %102

102:                                              ; preds = %90, %87, %75
  br label %103

103:                                              ; preds = %102, %60, %35
  %104 = load %struct.iommu_param*, %struct.iommu_param** %6, align 8
  %105 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %103, %18
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.iommu_fault_event* @kmemdup(%struct.iommu_fault_event*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.iommu_fault_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
