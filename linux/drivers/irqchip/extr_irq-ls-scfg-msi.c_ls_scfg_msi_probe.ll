; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.of_device_id = type { i64 }
%struct.ls_scfg_msi = type { i32, i64, i8*, i8*, %struct.ls_scfg_msi_cfg*, i32, %struct.platform_device*, i32, i32 }
%struct.ls_scfg_msi_cfg = type { i32 }
%struct.resource = type { i32 }

@ls_scfg_msi_id = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to initialize 'regs'\0A\00", align 1
@MSI_IRQS_PER_MSIR = common dso_local global i32 0, align 4
@msi_affinity_flag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ls_scfg_msi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls_scfg_msi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.ls_scfg_msi*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @ls_scfg_msi_id, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.of_device_id* @of_match_device(i32 %10, %struct.TYPE_6__* %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %4, align 8
  %14 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %15 = icmp ne %struct.of_device_id* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %170

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ls_scfg_msi* @devm_kzalloc(%struct.TYPE_6__* %21, i32 64, i32 %22)
  store %struct.ls_scfg_msi* %23, %struct.ls_scfg_msi** %5, align 8
  %24 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %25 = icmp ne %struct.ls_scfg_msi* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %170

29:                                               ; preds = %19
  %30 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %31 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.ls_scfg_msi_cfg*
  %34 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %35 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %34, i32 0, i32 4
  store %struct.ls_scfg_msi_cfg* %33, %struct.ls_scfg_msi_cfg** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %6, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %6, align 8
  %42 = call i32 @devm_ioremap_resource(%struct.TYPE_6__* %40, %struct.resource* %41)
  %43 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %44 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %46 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %29
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @dev_err(%struct.TYPE_6__* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %55 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %170

58:                                               ; preds = %29
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %63 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %66 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %65, i32 0, i32 6
  store %struct.platform_device* %64, %struct.platform_device** %66, align 8
  %67 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %68 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %67, i32 0, i32 5
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load i32, i32* @MSI_IRQS_PER_MSIR, align 4
  %71 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %72 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %71, i32 0, i32 4
  %73 = load %struct.ls_scfg_msi_cfg*, %struct.ls_scfg_msi_cfg** %72, align 8
  %74 = getelementptr inbounds %struct.ls_scfg_msi_cfg, %struct.ls_scfg_msi_cfg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 1, %75
  %77 = mul nsw i32 %70, %76
  %78 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %79 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %83 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @BITS_TO_LONGS(i32 %84)
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @devm_kcalloc(%struct.TYPE_6__* %81, i64 %85, i32 1, i32 %86)
  %88 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %89 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %91 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %58
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %170

97:                                               ; preds = %58
  %98 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %99 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %102 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @bitmap_set(i8* %100, i32 0, i32 %103)
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @of_irq_count(i32 %108)
  %110 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %111 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* @msi_affinity_flag, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %97
  %115 = call i64 (...) @num_possible_cpus()
  store i64 %115, i64* %9, align 8
  %116 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %117 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %124 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  br label %126

125:                                              ; preds = %114
  store i64 0, i64* @msi_affinity_flag, align 8
  br label %126

126:                                              ; preds = %125, %121
  br label %127

127:                                              ; preds = %126, %97
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %131 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call i8* @devm_kcalloc(%struct.TYPE_6__* %129, i64 %132, i32 1, i32 %133)
  %135 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %136 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %138 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %127
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %170

144:                                              ; preds = %127
  store i32 0, i32* %7, align 4
  br label %145

145:                                              ; preds = %156, %144
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %149 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp slt i64 %147, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @ls_scfg_msi_setup_hwirq(%struct.ls_scfg_msi* %153, i32 %154)
  br label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %145

159:                                              ; preds = %145
  %160 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %161 = call i32 @ls_scfg_msi_domains_init(%struct.ls_scfg_msi* %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %2, align 4
  br label %170

166:                                              ; preds = %159
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %5, align 8
  %169 = call i32 @platform_set_drvdata(%struct.platform_device* %167, %struct.ls_scfg_msi* %168)
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %166, %164, %141, %94, %50, %26, %16
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_6__*) #1

declare dso_local %struct.ls_scfg_msi* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_6__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_6__*, i64, i32, i32) #1

declare dso_local i64 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @bitmap_set(i8*, i32, i32) #1

declare dso_local i64 @of_irq_count(i32) #1

declare dso_local i64 @num_possible_cpus(...) #1

declare dso_local i32 @ls_scfg_msi_setup_hwirq(%struct.ls_scfg_msi*, i32) #1

declare dso_local i32 @ls_scfg_msi_domains_init(%struct.ls_scfg_msi*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ls_scfg_msi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
