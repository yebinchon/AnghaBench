; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_setup_hwirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_setup_hwirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ls_scfg_msi = type { i32, %struct.TYPE_2__*, i64, %struct.ls_scfg_msir*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.ls_scfg_msir = type { i32, i32, i32, i32, i32, i64, %struct.ls_scfg_msi* }

@ENODEV = common dso_local global i32 0, align 4
@MSI_LS1043V1_1_IRQS_PER_MSIR = common dso_local global i32 0, align 4
@ls_scfg_msi_irq_handler = common dso_local global i32 0, align 4
@msi_affinity_flag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ls_scfg_msi*, i32)* @ls_scfg_msi_setup_hwirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls_scfg_msi_setup_hwirq(%struct.ls_scfg_msi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ls_scfg_msi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ls_scfg_msir*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ls_scfg_msi* %0, %struct.ls_scfg_msi** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %4, align 8
  %11 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @platform_get_irq(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %148

20:                                               ; preds = %2
  %21 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %4, align 8
  %22 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %21, i32 0, i32 3
  %23 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %23, i64 %25
  store %struct.ls_scfg_msir* %26, %struct.ls_scfg_msir** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %29 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %4, align 8
  %31 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %32 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %31, i32 0, i32 6
  store %struct.ls_scfg_msi* %30, %struct.ls_scfg_msi** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %35 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %4, align 8
  %37 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %4, align 8
  %40 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %38, %43
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 4, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %50 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %49, i32 0, i32 5
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %4, align 8
  %52 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MSI_LS1043V1_1_IRQS_PER_MSIR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %20
  %59 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %60 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* @MSI_LS1043V1_1_IRQS_PER_MSIR, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sub nsw i32 32, %64
  %66 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %67 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %69 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MSI_LS1043V1_1_IRQS_PER_MSIR, align 4
  %72 = add nsw i32 %70, %71
  %73 = sub nsw i32 %72, 1
  %74 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %75 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  br label %87

76:                                               ; preds = %20
  %77 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %78 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  %79 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %4, align 8
  %80 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %86 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %76, %58
  %88 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %89 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ls_scfg_msi_irq_handler, align 4
  %92 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %93 = call i32 @irq_set_chained_handler_and_data(i32 %90, i32 %91, %struct.ls_scfg_msir* %92)
  %94 = load i64, i64* @msi_affinity_flag, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %87
  %97 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %98 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @get_cpu_mask(i32 %100)
  %102 = call i32 @irq_set_affinity(i32 %99, i32 %101)
  %103 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %104 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %103, i32 0, i32 4
  store i32 0, i32* %104, align 8
  br label %109

105:                                              ; preds = %87
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %108 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %96
  %110 = load i64, i64* @msi_affinity_flag, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %114 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %112, %109
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %143, %117
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %4, align 8
  %121 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %119, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %118
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %4, align 8
  %129 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %127, %132
  %134 = load %struct.ls_scfg_msir*, %struct.ls_scfg_msir** %6, align 8
  %135 = getelementptr inbounds %struct.ls_scfg_msir, %struct.ls_scfg_msir* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %133, %136
  store i32 %137, i32* %9, align 4
  %138 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %4, align 8
  %139 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @bitmap_clear(i32 %140, i32 %141, i32 1)
  br label %143

143:                                              ; preds = %126
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %118

146:                                              ; preds = %118
  br label %147

147:                                              ; preds = %146, %112
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %17
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @platform_get_irq(i32, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.ls_scfg_msir*) #1

declare dso_local i32 @irq_set_affinity(i32, i32) #1

declare dso_local i32 @get_cpu_mask(i32) #1

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
