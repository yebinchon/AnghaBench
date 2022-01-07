; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_irq_remapping_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_irq_remapping_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.intel_iommu* }
%struct.intel_iommu = type { i32 }
%struct.irq_alloc_info = type { i64, i32 }
%struct.intel_ir_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.irq_data = type { i32, i32*, %struct.intel_ir_data* }
%struct.irq_cfg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@X86_IRQ_ALLOC_TYPE_MSI = common dso_local global i64 0, align 8
@X86_IRQ_ALLOC_TYPE_MSIX = common dso_local global i64 0, align 8
@X86_IRQ_ALLOC_CONTIGUOUS_VECTORS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@dmar_global_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to allocate IRTE\0A\00", align 1
@intel_ir_chip = common dso_local global i32 0, align 4
@IRQ_MOVE_PCNTXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @intel_irq_remapping_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_irq_remapping_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.intel_iommu*, align 8
  %11 = alloca %struct.irq_alloc_info*, align 8
  %12 = alloca %struct.intel_ir_data*, align 8
  %13 = alloca %struct.intel_ir_data*, align 8
  %14 = alloca %struct.irq_data*, align 8
  %15 = alloca %struct.irq_cfg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %19 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %20 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %19, i32 0, i32 0
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %20, align 8
  store %struct.intel_iommu* %21, %struct.intel_iommu** %10, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.irq_alloc_info*
  store %struct.irq_alloc_info* %23, %struct.irq_alloc_info** %11, align 8
  %24 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %25 = icmp ne %struct.irq_alloc_info* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.intel_iommu*, %struct.intel_iommu** %10, align 8
  %28 = icmp ne %struct.intel_iommu* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %176

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %37 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @X86_IRQ_ALLOC_TYPE_MSI, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %43 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @X86_IRQ_ALLOC_TYPE_MSIX, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %176

50:                                               ; preds = %41, %35, %32
  %51 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %52 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @X86_IRQ_ALLOC_TYPE_MSI, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32, i32* @X86_IRQ_ALLOC_CONTIGUOUS_VECTORS, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %60 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %56, %50
  %64 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %64, i32 %65, i32 %66, i8* %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %5, align 4
  br label %176

73:                                               ; preds = %63
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.intel_ir_data* @kzalloc(i32 4, i32 %76)
  store %struct.intel_ir_data* %77, %struct.intel_ir_data** %12, align 8
  %78 = load %struct.intel_ir_data*, %struct.intel_ir_data** %12, align 8
  %79 = icmp ne %struct.intel_ir_data* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %170

81:                                               ; preds = %73
  %82 = call i32 @down_read(i32* @dmar_global_lock)
  %83 = load %struct.intel_iommu*, %struct.intel_iommu** %10, align 8
  %84 = load %struct.intel_ir_data*, %struct.intel_ir_data** %12, align 8
  %85 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @alloc_irte(%struct.intel_iommu* %83, %struct.TYPE_2__* %85, i32 %86)
  store i32 %87, i32* %18, align 4
  %88 = call i32 @up_read(i32* @dmar_global_lock)
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.intel_ir_data*, %struct.intel_ir_data** %12, align 8
  %94 = call i32 @kfree(%struct.intel_ir_data* %93)
  br label %170

95:                                               ; preds = %81
  store i32 0, i32* %16, align 4
  br label %96

96:                                               ; preds = %161, %95
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %164

100:                                              ; preds = %96
  %101 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %16, align 4
  %104 = add i32 %102, %103
  %105 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %101, i32 %104)
  store %struct.irq_data* %105, %struct.irq_data** %14, align 8
  %106 = load %struct.irq_data*, %struct.irq_data** %14, align 8
  %107 = call %struct.irq_cfg* @irqd_cfg(%struct.irq_data* %106)
  store %struct.irq_cfg* %107, %struct.irq_cfg** %15, align 8
  %108 = load %struct.irq_data*, %struct.irq_data** %14, align 8
  %109 = icmp ne %struct.irq_data* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load %struct.irq_cfg*, %struct.irq_cfg** %15, align 8
  %112 = icmp ne %struct.irq_cfg* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %110, %100
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %17, align 4
  br label %165

116:                                              ; preds = %110
  %117 = load i32, i32* %16, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call %struct.intel_ir_data* @kzalloc(i32 4, i32 %120)
  store %struct.intel_ir_data* %121, %struct.intel_ir_data** %13, align 8
  %122 = load %struct.intel_ir_data*, %struct.intel_ir_data** %13, align 8
  %123 = icmp ne %struct.intel_ir_data* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  br label %165

125:                                              ; preds = %119
  %126 = load %struct.intel_ir_data*, %struct.intel_ir_data** %13, align 8
  %127 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %126, i32 0, i32 0
  %128 = load %struct.intel_ir_data*, %struct.intel_ir_data** %12, align 8
  %129 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %128, i32 0, i32 0
  %130 = bitcast %struct.TYPE_2__* %127 to i8*
  %131 = bitcast %struct.TYPE_2__* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 4, i1 false)
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.intel_ir_data*, %struct.intel_ir_data** %13, align 8
  %134 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  br label %138

136:                                              ; preds = %116
  %137 = load %struct.intel_ir_data*, %struct.intel_ir_data** %12, align 8
  store %struct.intel_ir_data* %137, %struct.intel_ir_data** %13, align 8
  br label %138

138:                                              ; preds = %136, %125
  %139 = load i32, i32* %18, align 4
  %140 = shl i32 %139, 16
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %140, %141
  %143 = load %struct.irq_data*, %struct.irq_data** %14, align 8
  %144 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.intel_ir_data*, %struct.intel_ir_data** %13, align 8
  %146 = load %struct.irq_data*, %struct.irq_data** %14, align 8
  %147 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %146, i32 0, i32 2
  store %struct.intel_ir_data* %145, %struct.intel_ir_data** %147, align 8
  %148 = load %struct.irq_data*, %struct.irq_data** %14, align 8
  %149 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %148, i32 0, i32 1
  store i32* @intel_ir_chip, i32** %149, align 8
  %150 = load %struct.intel_ir_data*, %struct.intel_ir_data** %13, align 8
  %151 = load %struct.irq_cfg*, %struct.irq_cfg** %15, align 8
  %152 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @intel_irq_remapping_prepare_irte(%struct.intel_ir_data* %150, %struct.irq_cfg* %151, %struct.irq_alloc_info* %152, i32 %153, i32 %154)
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %16, align 4
  %158 = add i32 %156, %157
  %159 = load i32, i32* @IRQ_MOVE_PCNTXT, align 4
  %160 = call i32 @irq_set_status_flags(i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %138
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  br label %96

164:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %176

165:                                              ; preds = %124, %113
  %166 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @intel_free_irq_resources(%struct.irq_domain* %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %165, %91, %80
  %171 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @irq_domain_free_irqs_common(%struct.irq_domain* %171, i32 %172, i32 %173)
  %175 = load i32, i32* %17, align 4
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %170, %164, %71, %47, %29
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, i8*) #1

declare dso_local %struct.intel_ir_data* @kzalloc(i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @alloc_irte(%struct.intel_iommu*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @kfree(%struct.intel_ir_data*) #1

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local %struct.irq_cfg* @irqd_cfg(%struct.irq_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @intel_irq_remapping_prepare_irte(%struct.intel_ir_data*, %struct.irq_cfg*, %struct.irq_alloc_info*, i32, i32) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @intel_free_irq_resources(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @irq_domain_free_irqs_common(%struct.irq_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
