; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-gicp.c_mvebu_gicp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-gicp.c_mvebu_gicp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mvebu_gicp = type { i32, i32, i8*, %struct.TYPE_5__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.irq_domain = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"marvell,spi-ranges\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to find parent IRQ node\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to find parent IRQ domain\0A\00", align 1
@gicp_domain_ops = common dso_local global i32 0, align 4
@gicp_msi_domain_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvebu_gicp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_gicp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mvebu_gicp*, align 8
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %8, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mvebu_gicp* @devm_kzalloc(%struct.TYPE_6__* %17, i32 40, i32 %18)
  store %struct.mvebu_gicp* %19, %struct.mvebu_gicp** %4, align 8
  %20 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %21 = icmp ne %struct.mvebu_gicp* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %192

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %29 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %28, i32 0, i32 6
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %29, align 8
  %30 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %31 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %30, i32 0, i32 5
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call i32 @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  %36 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %37 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %39 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %25
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %192

45:                                               ; preds = %25
  %46 = load %struct.device_node*, %struct.device_node** %8, align 8
  %47 = call i32 @of_property_count_u32_elems(%struct.device_node* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %2, align 4
  br label %192

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = sdiv i32 %53, 2
  %55 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %56 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %60 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @devm_kcalloc(%struct.TYPE_6__* %58, i32 %61, i32 4, i32 %62)
  %64 = bitcast i8* %63 to %struct.TYPE_5__*
  %65 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %66 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %65, i32 0, i32 3
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %66, align 8
  %67 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %68 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %67, i32 0, i32 3
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = icmp ne %struct.TYPE_5__* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %52
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %192

74:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %119, %74
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %78 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %122

81:                                               ; preds = %75
  %82 = load %struct.device_node*, %struct.device_node** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = mul nsw i32 %83, 2
  %85 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %86 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = call i32 @of_property_read_u32_index(%struct.device_node* %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %84, i64* %91)
  %93 = load %struct.device_node*, %struct.device_node** %8, align 8
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %94, 2
  %96 = add nsw i32 %95, 1
  %97 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %98 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %97, i32 0, i32 3
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = call i32 @of_property_read_u32_index(%struct.device_node* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %96, i64* %103)
  %105 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %106 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %105, i32 0, i32 3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %114 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  br label %119

119:                                              ; preds = %81
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %75

122:                                              ; preds = %75
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %126 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @BITS_TO_LONGS(i32 %127)
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i8* @devm_kcalloc(%struct.TYPE_6__* %124, i32 %128, i32 8, i32 %129)
  %131 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %132 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %134 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %122
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %192

140:                                              ; preds = %122
  %141 = load %struct.device_node*, %struct.device_node** %8, align 8
  %142 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %141)
  store %struct.device_node* %142, %struct.device_node** %9, align 8
  %143 = load %struct.device_node*, %struct.device_node** %9, align 8
  %144 = icmp ne %struct.device_node* %143, null
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = call i32 @dev_err(%struct.TYPE_6__* %147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %149 = load i32, i32* @ENODEV, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %192

151:                                              ; preds = %140
  %152 = load %struct.device_node*, %struct.device_node** %9, align 8
  %153 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %152)
  store %struct.irq_domain* %153, %struct.irq_domain** %7, align 8
  %154 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %155 = icmp ne %struct.irq_domain* %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %151
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i32 @dev_err(%struct.TYPE_6__* %158, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %160 = load i32, i32* @ENODEV, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %192

162:                                              ; preds = %151
  %163 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %164 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %165 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.device_node*, %struct.device_node** %8, align 8
  %168 = call i32 @of_node_to_fwnode(%struct.device_node* %167)
  %169 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %170 = call %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain* %163, i32 0, i32 %166, i32 %168, i32* @gicp_domain_ops, %struct.mvebu_gicp* %169)
  store %struct.irq_domain* %170, %struct.irq_domain** %5, align 8
  %171 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %172 = icmp ne %struct.irq_domain* %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %162
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %2, align 4
  br label %192

176:                                              ; preds = %162
  %177 = load %struct.device_node*, %struct.device_node** %8, align 8
  %178 = call i32 @of_node_to_fwnode(%struct.device_node* %177)
  %179 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %180 = call %struct.irq_domain* @platform_msi_create_irq_domain(i32 %178, i32* @gicp_msi_domain_info, %struct.irq_domain* %179)
  store %struct.irq_domain* %180, %struct.irq_domain** %6, align 8
  %181 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %182 = icmp ne %struct.irq_domain* %181, null
  br i1 %182, label %188, label %183

183:                                              ; preds = %176
  %184 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %185 = call i32 @irq_domain_remove(%struct.irq_domain* %184)
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %2, align 4
  br label %192

188:                                              ; preds = %176
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %191 = call i32 @platform_set_drvdata(%struct.platform_device* %189, %struct.mvebu_gicp* %190)
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %188, %183, %173, %156, %145, %137, %71, %50, %42, %22
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.mvebu_gicp* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i64*) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local %struct.device_node* @of_irq_find_parent(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain*, i32, i32, i32, i32*, %struct.mvebu_gicp*) #1

declare dso_local i32 @of_node_to_fwnode(%struct.device_node*) #1

declare dso_local %struct.irq_domain* @platform_msi_create_irq_domain(i32, i32*, %struct.irq_domain*) #1

declare dso_local i32 @irq_domain_remove(%struct.irq_domain*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mvebu_gicp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
