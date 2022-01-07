; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_intel_pasid_setup_first_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_intel_pasid_setup_first_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.pasid_entry = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"No first level translation support on %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PASID_FLAG_SUPERVISOR_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"No supervisor request support on %s\0A\00", align 1
@X86_FEATURE_LA57 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_pasid_setup_first_level(%struct.intel_iommu* %0, %struct.device* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_iommu*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pasid_entry*, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %8, align 8
  store %struct.device* %1, %struct.device** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %16 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ecap_flts(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %6
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %22 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %118

27:                                               ; preds = %6
  %28 = load %struct.device*, %struct.device** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.pasid_entry* @intel_pasid_get_entry(%struct.device* %28, i32 %29)
  store %struct.pasid_entry* %30, %struct.pasid_entry** %14, align 8
  %31 = load %struct.pasid_entry*, %struct.pasid_entry** %14, align 8
  %32 = icmp ne %struct.pasid_entry* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %118

40:                                               ; preds = %27
  %41 = load %struct.pasid_entry*, %struct.pasid_entry** %14, align 8
  %42 = call i32 @pasid_clear_entry(%struct.pasid_entry* %41)
  %43 = load %struct.pasid_entry*, %struct.pasid_entry** %14, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i64 @__pa(i32* %44)
  %46 = trunc i64 %45 to i32
  %47 = call i32 @pasid_set_flptr(%struct.pasid_entry* %43, i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @PASID_FLAG_SUPERVISOR_MODE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %40
  %53 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %54 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ecap_srs(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %60 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %118

65:                                               ; preds = %52
  %66 = load %struct.pasid_entry*, %struct.pasid_entry** %14, align 8
  %67 = call i32 @pasid_set_sre(%struct.pasid_entry* %66)
  br label %68

68:                                               ; preds = %65, %40
  %69 = load %struct.pasid_entry*, %struct.pasid_entry** %14, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @pasid_set_domain_id(%struct.pasid_entry* %69, i32 %70)
  %72 = load %struct.pasid_entry*, %struct.pasid_entry** %14, align 8
  %73 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %74 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pasid_set_address_width(%struct.pasid_entry* %72, i32 %75)
  %77 = load %struct.pasid_entry*, %struct.pasid_entry** %14, align 8
  %78 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %79 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ecap_smpwc(i32 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @pasid_set_page_snoop(%struct.pasid_entry* %77, i32 %85)
  %87 = load %struct.pasid_entry*, %struct.pasid_entry** %14, align 8
  %88 = call i32 @pasid_set_translation_type(%struct.pasid_entry* %87, i32 1)
  %89 = load %struct.pasid_entry*, %struct.pasid_entry** %14, align 8
  %90 = call i32 @pasid_set_present(%struct.pasid_entry* %89)
  %91 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %92 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ecap_coherent(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %68
  %97 = load %struct.pasid_entry*, %struct.pasid_entry** %14, align 8
  %98 = call i32 @clflush_cache_range(%struct.pasid_entry* %97, i32 4)
  br label %99

99:                                               ; preds = %96, %68
  %100 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %101 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @cap_caching_mode(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @pasid_cache_invalidation_with_pasid(%struct.intel_iommu* %106, i32 %107, i32 %108)
  %110 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @iotlb_invalidation_with_pasid(%struct.intel_iommu* %110, i32 %111, i32 %112)
  br label %117

114:                                              ; preds = %99
  %115 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %116 = call i32 @iommu_flush_write_buffer(%struct.intel_iommu* %115)
  br label %117

117:                                              ; preds = %114, %105
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %58, %37, %20
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @ecap_flts(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.pasid_entry* @intel_pasid_get_entry(%struct.device*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pasid_clear_entry(%struct.pasid_entry*) #1

declare dso_local i32 @pasid_set_flptr(%struct.pasid_entry*, i32) #1

declare dso_local i64 @__pa(i32*) #1

declare dso_local i32 @ecap_srs(i32) #1

declare dso_local i32 @pasid_set_sre(%struct.pasid_entry*) #1

declare dso_local i32 @pasid_set_domain_id(%struct.pasid_entry*, i32) #1

declare dso_local i32 @pasid_set_address_width(%struct.pasid_entry*, i32) #1

declare dso_local i32 @pasid_set_page_snoop(%struct.pasid_entry*, i32) #1

declare dso_local i32 @ecap_smpwc(i32) #1

declare dso_local i32 @pasid_set_translation_type(%struct.pasid_entry*, i32) #1

declare dso_local i32 @pasid_set_present(%struct.pasid_entry*) #1

declare dso_local i32 @ecap_coherent(i32) #1

declare dso_local i32 @clflush_cache_range(%struct.pasid_entry*, i32) #1

declare dso_local i64 @cap_caching_mode(i32) #1

declare dso_local i32 @pasid_cache_invalidation_with_pasid(%struct.intel_iommu*, i32, i32) #1

declare dso_local i32 @iotlb_invalidation_with_pasid(%struct.intel_iommu*, i32, i32) #1

declare dso_local i32 @iommu_flush_write_buffer(%struct.intel_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
