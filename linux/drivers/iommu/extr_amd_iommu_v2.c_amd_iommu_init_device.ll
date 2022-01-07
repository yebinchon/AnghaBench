; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_amd_iommu_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_amd_iommu_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device_state = type { i32, i32*, i32*, i32, i32, i64, i32, %struct.pci_dev*, i32, i32 }
%struct.iommu_group = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PASID_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pci_bus_type = common dso_local global i32 0, align 4
@state_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@state_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_iommu_init_device(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_state*, align 8
  %7 = alloca %struct.iommu_group*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = call i32 (...) @might_sleep()
  %13 = call i32 (...) @amd_iommu_v2_supported()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %165

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PASID_MASK, align 4
  %24 = add nsw i32 %23, 1
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %165

29:                                               ; preds = %21
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @device_id(%struct.pci_dev* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.device_state* @kzalloc(i32 64, i32 %32)
  store %struct.device_state* %33, %struct.device_state** %6, align 8
  %34 = load %struct.device_state*, %struct.device_state** %6, align 8
  %35 = icmp eq %struct.device_state* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %165

39:                                               ; preds = %29
  %40 = load %struct.device_state*, %struct.device_state** %6, align 8
  %41 = getelementptr inbounds %struct.device_state, %struct.device_state* %40, i32 0, i32 9
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.device_state*, %struct.device_state** %6, align 8
  %44 = getelementptr inbounds %struct.device_state, %struct.device_state* %43, i32 0, i32 8
  %45 = call i32 @init_waitqueue_head(i32* %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load %struct.device_state*, %struct.device_state** %6, align 8
  %48 = getelementptr inbounds %struct.device_state, %struct.device_state* %47, i32 0, i32 7
  store %struct.pci_dev* %46, %struct.pci_dev** %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.device_state*, %struct.device_state** %6, align 8
  %51 = getelementptr inbounds %struct.device_state, %struct.device_state* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %10, align 4
  %53 = load %struct.device_state*, %struct.device_state** %6, align 8
  %54 = getelementptr inbounds %struct.device_state, %struct.device_state* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %65, %39
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %57, -512
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.device_state*, %struct.device_state** %6, align 8
  %62 = getelementptr inbounds %struct.device_state, %struct.device_state* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = ashr i32 %66, 9
  store i32 %67, i32* %10, align 4
  br label %55

68:                                               ; preds = %55
  %69 = load %struct.device_state*, %struct.device_state** %6, align 8
  %70 = getelementptr inbounds %struct.device_state, %struct.device_state* %69, i32 0, i32 4
  %71 = call i32 @atomic_set(i32* %70, i32 1)
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.device_state*, %struct.device_state** %6, align 8
  %74 = getelementptr inbounds %struct.device_state, %struct.device_state* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i64 @get_zeroed_page(i32 %77)
  %79 = inttoptr i64 %78 to i8*
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.device_state*, %struct.device_state** %6, align 8
  %82 = getelementptr inbounds %struct.device_state, %struct.device_state* %81, i32 0, i32 1
  store i32* %80, i32** %82, align 8
  %83 = load %struct.device_state*, %struct.device_state** %6, align 8
  %84 = getelementptr inbounds %struct.device_state, %struct.device_state* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %68
  br label %161

88:                                               ; preds = %68
  %89 = call i32* @iommu_domain_alloc(i32* @pci_bus_type)
  %90 = load %struct.device_state*, %struct.device_state** %6, align 8
  %91 = getelementptr inbounds %struct.device_state, %struct.device_state* %90, i32 0, i32 2
  store i32* %89, i32** %91, align 8
  %92 = load %struct.device_state*, %struct.device_state** %6, align 8
  %93 = getelementptr inbounds %struct.device_state, %struct.device_state* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %155

97:                                               ; preds = %88
  %98 = load %struct.device_state*, %struct.device_state** %6, align 8
  %99 = getelementptr inbounds %struct.device_state, %struct.device_state* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @amd_iommu_domain_direct_map(i32* %100)
  %102 = load %struct.device_state*, %struct.device_state** %6, align 8
  %103 = getelementptr inbounds %struct.device_state, %struct.device_state* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @amd_iommu_domain_enable_v2(i32* %104, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  br label %150

110:                                              ; preds = %97
  %111 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = call %struct.iommu_group* @iommu_group_get(i32* %112)
  store %struct.iommu_group* %113, %struct.iommu_group** %7, align 8
  %114 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %115 = icmp ne %struct.iommu_group* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %150

119:                                              ; preds = %110
  %120 = load %struct.device_state*, %struct.device_state** %6, align 8
  %121 = getelementptr inbounds %struct.device_state, %struct.device_state* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %124 = call i32 @iommu_attach_group(i32* %122, %struct.iommu_group* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %147

128:                                              ; preds = %119
  %129 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %130 = call i32 @iommu_group_put(%struct.iommu_group* %129)
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @spin_lock_irqsave(i32* @state_lock, i64 %131)
  %133 = load i32, i32* %11, align 4
  %134 = call i32* @__get_device_state(i32 %133)
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %128
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* @state_lock, i64 %137)
  %139 = load i32, i32* @EBUSY, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %9, align 4
  br label %150

141:                                              ; preds = %128
  %142 = load %struct.device_state*, %struct.device_state** %6, align 8
  %143 = getelementptr inbounds %struct.device_state, %struct.device_state* %142, i32 0, i32 3
  %144 = call i32 @list_add_tail(i32* %143, i32* @state_list)
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* @state_lock, i64 %145)
  store i32 0, i32* %3, align 4
  br label %165

147:                                              ; preds = %127
  %148 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %149 = call i32 @iommu_group_put(%struct.iommu_group* %148)
  br label %150

150:                                              ; preds = %147, %136, %116, %109
  %151 = load %struct.device_state*, %struct.device_state** %6, align 8
  %152 = getelementptr inbounds %struct.device_state, %struct.device_state* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @iommu_domain_free(i32* %153)
  br label %155

155:                                              ; preds = %150, %96
  %156 = load %struct.device_state*, %struct.device_state** %6, align 8
  %157 = getelementptr inbounds %struct.device_state, %struct.device_state* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = ptrtoint i32* %158 to i64
  %160 = call i32 @free_page(i64 %159)
  br label %161

161:                                              ; preds = %155, %87
  %162 = load %struct.device_state*, %struct.device_state** %6, align 8
  %163 = call i32 @kfree(%struct.device_state* %162)
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %161, %141, %36, %26, %15
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @amd_iommu_v2_supported(...) #1

declare dso_local i32 @device_id(%struct.pci_dev*) #1

declare dso_local %struct.device_state* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32* @iommu_domain_alloc(i32*) #1

declare dso_local i32 @amd_iommu_domain_direct_map(i32*) #1

declare dso_local i32 @amd_iommu_domain_enable_v2(i32*, i32) #1

declare dso_local %struct.iommu_group* @iommu_group_get(i32*) #1

declare dso_local i32 @iommu_attach_group(i32*, %struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32* @__get_device_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @iommu_domain_free(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.device_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
