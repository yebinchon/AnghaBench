; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_setup_irq_remapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_setup_irq_remapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { %struct.ir_table*, i32, i32, i32, i32, i32, i32 }
%struct.ir_table = type { i64*, i32 }
%struct.fwnode_handle = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@INTR_REMAP_PAGE_ORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"IR%d: failed to allocate pages of order %d\0A\00", align 1
@INTR_REMAP_TABLE_ENTRIES = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"IR%d: failed to allocate bitmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"INTEL-IR\00", align 1
@intel_ir_domain_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"IR%d: failed to allocate irqdomain\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"INTEL-IR-MSI\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to enable queued invalidation\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"IRQ remapping was enabled on %s but we are not in kdump mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Failed to copy IR table for %s from previous kernel\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Copied IR table for %s from previous kernel\0A\00", align 1
@eim_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_iommu*)* @intel_setup_irq_remapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_setup_irq_remapping(%struct.intel_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_iommu*, align 8
  %4 = alloca %struct.ir_table*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %3, align 8
  %8 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %9 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %8, i32 0, i32 0
  %10 = load %struct.ir_table*, %struct.ir_table** %9, align 8
  %11 = icmp ne %struct.ir_table* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %163

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ir_table* @kzalloc(i32 16, i32 %14)
  store %struct.ir_table* %15, %struct.ir_table** %4, align 8
  %16 = load %struct.ir_table*, %struct.ir_table** %4, align 8
  %17 = icmp ne %struct.ir_table* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %163

21:                                               ; preds = %13
  %22 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %23 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load i32, i32* @__GFP_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @INTR_REMAP_PAGE_ORDER, align 4
  %29 = call %struct.page* @alloc_pages_node(i32 %24, i32 %27, i32 %28)
  store %struct.page* %29, %struct.page** %7, align 8
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = icmp ne %struct.page* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %21
  %33 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %34 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @INTR_REMAP_PAGE_ORDER, align 4
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %156

38:                                               ; preds = %21
  %39 = load i32, i32* @INTR_REMAP_TABLE_ENTRIES, align 4
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call i64* @bitmap_zalloc(i32 %39, i32 %40)
  store i64* %41, i64** %6, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = icmp eq i64* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %46 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %152

49:                                               ; preds = %38
  %50 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %51 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.fwnode_handle* @irq_domain_alloc_named_id_fwnode(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  store %struct.fwnode_handle* %53, %struct.fwnode_handle** %5, align 8
  %54 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %55 = icmp ne %struct.fwnode_handle* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %149

57:                                               ; preds = %49
  %58 = call i32 (...) @arch_get_ir_parent_domain()
  %59 = load i32, i32* @INTR_REMAP_TABLE_ENTRIES, align 4
  %60 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %61 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %62 = call i32 @irq_domain_create_hierarchy(i32 %58, i32 0, i32 %59, %struct.fwnode_handle* %60, i32* @intel_ir_domain_ops, %struct.intel_iommu* %61)
  %63 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %64 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %66 = call i32 @irq_domain_free_fwnode(%struct.fwnode_handle* %65)
  %67 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %68 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %57
  %72 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %73 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %149

76:                                               ; preds = %57
  %77 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %78 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %81 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @arch_create_remap_msi_irq_domain(i32 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %85 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 8
  %86 = load %struct.page*, %struct.page** %7, align 8
  %87 = call i32 @page_address(%struct.page* %86)
  %88 = load %struct.ir_table*, %struct.ir_table** %4, align 8
  %89 = getelementptr inbounds %struct.ir_table, %struct.ir_table* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i64*, i64** %6, align 8
  %91 = load %struct.ir_table*, %struct.ir_table** %4, align 8
  %92 = getelementptr inbounds %struct.ir_table, %struct.ir_table* %91, i32 0, i32 0
  store i64* %90, i64** %92, align 8
  %93 = load %struct.ir_table*, %struct.ir_table** %4, align 8
  %94 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %95 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %94, i32 0, i32 0
  store %struct.ir_table* %93, %struct.ir_table** %95, align 8
  %96 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %97 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %76
  %101 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %102 = call i32 @dmar_fault(i32 -1, %struct.intel_iommu* %101)
  %103 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %104 = call i32 @dmar_disable_qi(%struct.intel_iommu* %103)
  %105 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %106 = call i64 @dmar_enable_qi(%struct.intel_iommu* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %149

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %76
  %112 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %113 = call i32 @init_ir_status(%struct.intel_iommu* %112)
  %114 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %115 = call i64 @ir_pre_enabled(%struct.intel_iommu* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %111
  %118 = call i32 (...) @is_kdump_kernel()
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %122 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @pr_warn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  %125 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %126 = call i32 @clear_ir_pre_enabled(%struct.intel_iommu* %125)
  %127 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %128 = call i32 @iommu_disable_irq_remapping(%struct.intel_iommu* %127)
  br label %144

129:                                              ; preds = %117
  %130 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %131 = call i64 @iommu_load_old_irte(%struct.intel_iommu* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %135 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %136)
  br label %143

138:                                              ; preds = %129
  %139 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %140 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143, %120
  br label %145

145:                                              ; preds = %144, %111
  %146 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %147 = load i32, i32* @eim_mode, align 4
  %148 = call i32 @iommu_set_irq_remapping(%struct.intel_iommu* %146, i32 %147)
  store i32 0, i32* %2, align 4
  br label %163

149:                                              ; preds = %108, %71, %56
  %150 = load i64*, i64** %6, align 8
  %151 = call i32 @bitmap_free(i64* %150)
  br label %152

152:                                              ; preds = %149, %44
  %153 = load %struct.page*, %struct.page** %7, align 8
  %154 = load i32, i32* @INTR_REMAP_PAGE_ORDER, align 4
  %155 = call i32 @__free_pages(%struct.page* %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %32
  %157 = load %struct.ir_table*, %struct.ir_table** %4, align 8
  %158 = call i32 @kfree(%struct.ir_table* %157)
  %159 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %160 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %159, i32 0, i32 0
  store %struct.ir_table* null, %struct.ir_table** %160, align 8
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %156, %145, %18, %12
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.ir_table* @kzalloc(i32, i32) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64* @bitmap_zalloc(i32, i32) #1

declare dso_local %struct.fwnode_handle* @irq_domain_alloc_named_id_fwnode(i8*, i32) #1

declare dso_local i32 @irq_domain_create_hierarchy(i32, i32, i32, %struct.fwnode_handle*, i32*, %struct.intel_iommu*) #1

declare dso_local i32 @arch_get_ir_parent_domain(...) #1

declare dso_local i32 @irq_domain_free_fwnode(%struct.fwnode_handle*) #1

declare dso_local i32 @arch_create_remap_msi_irq_domain(i32, i8*, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @dmar_fault(i32, %struct.intel_iommu*) #1

declare dso_local i32 @dmar_disable_qi(%struct.intel_iommu*) #1

declare dso_local i64 @dmar_enable_qi(%struct.intel_iommu*) #1

declare dso_local i32 @init_ir_status(%struct.intel_iommu*) #1

declare dso_local i64 @ir_pre_enabled(%struct.intel_iommu*) #1

declare dso_local i32 @is_kdump_kernel(...) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @clear_ir_pre_enabled(%struct.intel_iommu*) #1

declare dso_local i32 @iommu_disable_irq_remapping(%struct.intel_iommu*) #1

declare dso_local i64 @iommu_load_old_irte(%struct.intel_iommu*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @iommu_set_irq_remapping(%struct.intel_iommu*, i32) #1

declare dso_local i32 @bitmap_free(i64*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @kfree(%struct.ir_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
