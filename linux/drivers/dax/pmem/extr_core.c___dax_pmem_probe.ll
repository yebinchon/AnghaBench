; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/pmem/extr_core.c___dax_pmem_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/pmem/extr_core.c___dax_pmem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_dax = type { i32 }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.nd_pfn_sb = type { i32, i32 }
%struct.nd_namespace_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dax_region = type { i32 }
%struct.dev_pagemap = type { i32 }
%struct.nd_namespace_common = type { i32 }
%struct.nd_dax = type { %struct.nd_pfn }
%struct.nd_pfn = type { %struct.nd_pfn_sb* }
%struct.nd_region = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"could not reserve metadata\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"namespace%d.%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PFN_DEV = common dso_local global i32 0, align 4
@PFN_MAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dev_dax* @__dax_pmem_probe(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.dev_dax*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.nd_pfn_sb*, align 8
  %12 = alloca %struct.dev_dax*, align 8
  %13 = alloca %struct.nd_namespace_io*, align 8
  %14 = alloca %struct.dax_region*, align 8
  %15 = alloca %struct.dev_pagemap, align 4
  %16 = alloca %struct.nd_namespace_common*, align 8
  %17 = alloca %struct.nd_dax*, align 8
  %18 = alloca %struct.nd_pfn*, align 8
  %19 = alloca %struct.nd_region*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = bitcast %struct.dev_pagemap* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call %struct.nd_dax* @to_nd_dax(%struct.device* %21)
  store %struct.nd_dax* %22, %struct.nd_dax** %17, align 8
  %23 = load %struct.nd_dax*, %struct.nd_dax** %17, align 8
  %24 = getelementptr inbounds %struct.nd_dax, %struct.nd_dax* %23, i32 0, i32 0
  store %struct.nd_pfn* %24, %struct.nd_pfn** %18, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.nd_region* @to_nd_region(i32 %27)
  store %struct.nd_region* %28, %struct.nd_region** %19, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call %struct.nd_namespace_common* @nvdimm_namespace_common_probe(%struct.device* %29)
  store %struct.nd_namespace_common* %30, %struct.nd_namespace_common** %16, align 8
  %31 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %16, align 8
  %32 = call i64 @IS_ERR(%struct.nd_namespace_common* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %16, align 8
  %36 = call %struct.dev_dax* @ERR_CAST(%struct.nd_namespace_common* %35)
  store %struct.dev_dax* %36, %struct.dev_dax** %3, align 8
  br label %132

37:                                               ; preds = %2
  %38 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %16, align 8
  %39 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %38, i32 0, i32 0
  %40 = call %struct.nd_namespace_io* @to_nd_namespace_io(i32* %39)
  store %struct.nd_namespace_io* %40, %struct.nd_namespace_io** %13, align 8
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %13, align 8
  %43 = call i32 @devm_nsio_enable(%struct.device* %41, %struct.nd_namespace_io* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.dev_dax* @ERR_PTR(i32 %47)
  store %struct.dev_dax* %48, %struct.dev_dax** %3, align 8
  br label %132

49:                                               ; preds = %37
  %50 = load %struct.nd_pfn*, %struct.nd_pfn** %18, align 8
  %51 = call i32 @nvdimm_setup_pfn(%struct.nd_pfn* %50, %struct.dev_pagemap* %15)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.dev_dax* @ERR_PTR(i32 %55)
  store %struct.dev_dax* %56, %struct.dev_dax** %3, align 8
  br label %132

57:                                               ; preds = %49
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %13, align 8
  %60 = call i32 @devm_nsio_disable(%struct.device* %58, %struct.nd_namespace_io* %59)
  %61 = load %struct.nd_pfn*, %struct.nd_pfn** %18, align 8
  %62 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %61, i32 0, i32 0
  %63 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %62, align 8
  store %struct.nd_pfn_sb* %63, %struct.nd_pfn_sb** %11, align 8
  %64 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %11, align 8
  %65 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @le64_to_cpu(i32 %66)
  store i64 %67, i64* %10, align 8
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %13, align 8
  %70 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %16, align 8
  %75 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %74, i32 0, i32 0
  %76 = call i32 @dev_name(i32* %75)
  %77 = call i32 @devm_request_mem_region(%struct.device* %68, i32 %72, i64 %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %57
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @dev_warn(%struct.device* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  %84 = call %struct.dev_dax* @ERR_PTR(i32 %83)
  store %struct.dev_dax* %84, %struct.dev_dax** %3, align 8
  br label %132

85:                                               ; preds = %57
  %86 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %16, align 8
  %87 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %86, i32 0, i32 0
  %88 = call i32 @dev_name(i32* %87)
  %89 = call i32 @sscanf(i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %8)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 2
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  %95 = call %struct.dev_dax* @ERR_PTR(i32 %94)
  store %struct.dev_dax* %95, %struct.dev_dax** %3, align 8
  br label %132

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %15, i32 0, i32 0
  %98 = call i32 @memcpy(%struct.resource* %6, i32* %97, i32 4)
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %99
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.nd_region*, %struct.nd_region** %19, align 8
  %108 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %11, align 8
  %111 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le32_to_cpu(i32 %112)
  %114 = load i32, i32* @PFN_DEV, align 4
  %115 = load i32, i32* @PFN_MAP, align 4
  %116 = or i32 %114, %115
  %117 = call %struct.dax_region* @alloc_dax_region(%struct.device* %105, i32 %106, %struct.resource* %6, i32 %109, i32 %113, i32 %116)
  store %struct.dax_region* %117, %struct.dax_region** %14, align 8
  %118 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %119 = icmp ne %struct.dax_region* %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %96
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  %123 = call %struct.dev_dax* @ERR_PTR(i32 %122)
  store %struct.dev_dax* %123, %struct.dev_dax** %3, align 8
  br label %132

124:                                              ; preds = %96
  %125 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call %struct.dev_dax* @__devm_create_dev_dax(%struct.dax_region* %125, i32 %126, %struct.dev_pagemap* %15, i32 %127)
  store %struct.dev_dax* %128, %struct.dev_dax** %12, align 8
  %129 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %130 = call i32 @dax_region_put(%struct.dax_region* %129)
  %131 = load %struct.dev_dax*, %struct.dev_dax** %12, align 8
  store %struct.dev_dax* %131, %struct.dev_dax** %3, align 8
  br label %132

132:                                              ; preds = %124, %120, %92, %79, %54, %46, %34
  %133 = load %struct.dev_dax*, %struct.dev_dax** %3, align 8
  ret %struct.dev_dax* %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nd_dax* @to_nd_dax(%struct.device*) #2

declare dso_local %struct.nd_region* @to_nd_region(i32) #2

declare dso_local %struct.nd_namespace_common* @nvdimm_namespace_common_probe(%struct.device*) #2

declare dso_local i64 @IS_ERR(%struct.nd_namespace_common*) #2

declare dso_local %struct.dev_dax* @ERR_CAST(%struct.nd_namespace_common*) #2

declare dso_local %struct.nd_namespace_io* @to_nd_namespace_io(i32*) #2

declare dso_local i32 @devm_nsio_enable(%struct.device*, %struct.nd_namespace_io*) #2

declare dso_local %struct.dev_dax* @ERR_PTR(i32) #2

declare dso_local i32 @nvdimm_setup_pfn(%struct.nd_pfn*, %struct.dev_pagemap*) #2

declare dso_local i32 @devm_nsio_disable(%struct.device*, %struct.nd_namespace_io*) #2

declare dso_local i64 @le64_to_cpu(i32) #2

declare dso_local i32 @devm_request_mem_region(%struct.device*, i32, i64, i32) #2

declare dso_local i32 @dev_name(i32*) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*) #2

declare dso_local i32 @memcpy(%struct.resource*, i32*, i32) #2

declare dso_local %struct.dax_region* @alloc_dax_region(%struct.device*, i32, %struct.resource*, i32, i32, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local %struct.dev_dax* @__devm_create_dev_dax(%struct.dax_region*, i32, %struct.dev_pagemap*, i32) #2

declare dso_local i32 @dax_region_put(%struct.dax_region*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
