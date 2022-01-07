; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_amd_iommu_bind_pasid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_amd_iommu_bind_pasid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.task_struct = type { i32 }
%struct.pasid_state = type { i32, i32, %struct.TYPE_3__, %struct.mm_struct*, %struct.device_state*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.mm_struct = type { i32 }
%struct.device_state = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@iommu_mn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_iommu_bind_pasid(%struct.pci_dev* %0, i32 %1, %struct.task_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.pasid_state*, align 8
  %9 = alloca %struct.device_state*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  %13 = call i32 (...) @might_sleep()
  %14 = call i32 (...) @amd_iommu_v2_supported()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %130

19:                                               ; preds = %3
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = call i32 @device_id(%struct.pci_dev* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call %struct.device_state* @get_device_state(i32 %22)
  store %struct.device_state* %23, %struct.device_state** %9, align 8
  %24 = load %struct.device_state*, %struct.device_state** %9, align 8
  %25 = icmp eq %struct.device_state* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %130

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.device_state*, %struct.device_state** %9, align 8
  %37 = getelementptr inbounds %struct.device_state, %struct.device_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %29
  br label %126

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.pasid_state* @kzalloc(i32 48, i32 %44)
  store %struct.pasid_state* %45, %struct.pasid_state** %8, align 8
  %46 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %47 = icmp eq %struct.pasid_state* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %126

49:                                               ; preds = %41
  %50 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %51 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %50, i32 0, i32 7
  %52 = call i32 @atomic_set(i32* %51, i32 1)
  %53 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %54 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %53, i32 0, i32 6
  %55 = call i32 @init_waitqueue_head(i32* %54)
  %56 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %57 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %56, i32 0, i32 5
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %60 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %59)
  store %struct.mm_struct* %60, %struct.mm_struct** %10, align 8
  %61 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %62 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %63 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %62, i32 0, i32 3
  store %struct.mm_struct* %61, %struct.mm_struct** %63, align 8
  %64 = load %struct.device_state*, %struct.device_state** %9, align 8
  %65 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %66 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %65, i32 0, i32 4
  store %struct.device_state* %64, %struct.device_state** %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %69 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %71 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %73 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32* @iommu_mn, i32** %74, align 8
  %75 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %76 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %75, i32 0, i32 3
  %77 = load %struct.mm_struct*, %struct.mm_struct** %76, align 8
  %78 = icmp eq %struct.mm_struct* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %49
  br label %123

80:                                               ; preds = %49
  %81 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %82 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %81, i32 0, i32 2
  %83 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %84 = call i32 @mmu_notifier_register(%struct.TYPE_3__* %82, %struct.mm_struct* %83)
  %85 = load %struct.device_state*, %struct.device_state** %9, align 8
  %86 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @set_pasid_state(%struct.device_state* %85, %struct.pasid_state* %86, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %116

92:                                               ; preds = %80
  %93 = load %struct.device_state*, %struct.device_state** %9, align 8
  %94 = getelementptr inbounds %struct.device_state, %struct.device_state* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %98 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %97, i32 0, i32 3
  %99 = load %struct.mm_struct*, %struct.mm_struct** %98, align 8
  %100 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @__pa(i32 %101)
  %103 = call i32 @amd_iommu_domain_set_gcr3(i32 %95, i32 %96, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %112

107:                                              ; preds = %92
  %108 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %109 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  %110 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %111 = call i32 @mmput(%struct.mm_struct* %110)
  store i32 0, i32* %4, align 4
  br label %130

112:                                              ; preds = %106
  %113 = load %struct.device_state*, %struct.device_state** %9, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @clear_pasid_state(%struct.device_state* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %91
  %117 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %118 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %117, i32 0, i32 2
  %119 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %120 = call i32 @mmu_notifier_unregister(%struct.TYPE_3__* %118, %struct.mm_struct* %119)
  %121 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %122 = call i32 @mmput(%struct.mm_struct* %121)
  br label %123

123:                                              ; preds = %116, %79
  %124 = load %struct.pasid_state*, %struct.pasid_state** %8, align 8
  %125 = call i32 @free_pasid_state(%struct.pasid_state* %124)
  br label %126

126:                                              ; preds = %123, %48, %40
  %127 = load %struct.device_state*, %struct.device_state** %9, align 8
  %128 = call i32 @put_device_state(%struct.device_state* %127)
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %107, %26, %16
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @amd_iommu_v2_supported(...) #1

declare dso_local i32 @device_id(%struct.pci_dev*) #1

declare dso_local %struct.device_state* @get_device_state(i32) #1

declare dso_local %struct.pasid_state* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @mmu_notifier_register(%struct.TYPE_3__*, %struct.mm_struct*) #1

declare dso_local i32 @set_pasid_state(%struct.device_state*, %struct.pasid_state*, i32) #1

declare dso_local i32 @amd_iommu_domain_set_gcr3(i32, i32, i32) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @clear_pasid_state(%struct.device_state*, i32) #1

declare dso_local i32 @mmu_notifier_unregister(%struct.TYPE_3__*, %struct.mm_struct*) #1

declare dso_local i32 @free_pasid_state(%struct.pasid_state*) #1

declare dso_local i32 @put_device_state(%struct.device_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
