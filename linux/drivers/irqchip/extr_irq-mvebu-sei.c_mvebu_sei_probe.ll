; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-sei.c_mvebu_sei_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-sei.c_mvebu_sei_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.irq_domain = type { i32 }
%struct.mvebu_sei = type { i8*, i8*, i8*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to remap SEI resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Could not retrieve controller capabilities\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to retrieve top-level SPI IRQ\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@mvebu_sei_domain_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to create SEI IRQ domain\0A\00", align 1
@DOMAIN_BUS_NEXUS = common dso_local global i32 0, align 4
@mvebu_sei_ap_domain_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to create AP IRQ domain\0A\00", align 1
@DOMAIN_BUS_WIRED = common dso_local global i32 0, align 4
@mvebu_sei_cp_domain_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to create CPs IRQ domain\0A\00", align 1
@DOMAIN_BUS_GENERIC_MSI = common dso_local global i32 0, align 4
@mvebu_sei_msi_domain_info = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to create CPs MSI domain\0A\00", align 1
@mvebu_sei_handle_cascade_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvebu_sei_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_sei_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.mvebu_sei*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mvebu_sei* @devm_kzalloc(%struct.TYPE_11__* %14, i32 56, i32 %15)
  store %struct.mvebu_sei* %16, %struct.mvebu_sei** %6, align 8
  %17 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %18 = icmp ne %struct.mvebu_sei* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %226

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %26 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %25, i32 0, i32 4
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %26, align 8
  %27 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %28 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %27, i32 0, i32 8
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %31 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %30, i32 0, i32 7
  %32 = call i32 @raw_spin_lock_init(i32* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call i32 @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  %36 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %37 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %39 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %38, i32 0, i32 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %42 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @devm_ioremap_resource(%struct.TYPE_11__* %40, i32 %43)
  %45 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %46 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %48 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %22
  %53 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %54 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %53, i32 0, i32 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = call i32 @dev_err(%struct.TYPE_11__* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %58 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %226

61:                                               ; preds = %22
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call %struct.TYPE_10__* @of_device_get_match_data(%struct.TYPE_11__* %63)
  %65 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %66 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %65, i32 0, i32 3
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %66, align 8
  %67 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %68 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %67, i32 0, i32 3
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = icmp ne %struct.TYPE_10__* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %61
  %72 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %73 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %72, i32 0, i32 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = call i32 @dev_err(%struct.TYPE_11__* %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %226

78:                                               ; preds = %61
  %79 = load %struct.device_node*, %struct.device_node** %4, align 8
  %80 = call i64 @irq_of_parse_and_map(%struct.device_node* %79, i32 0)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %85 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %84, i32 0, i32 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = call i32 @dev_err(%struct.TYPE_11__* %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %226

90:                                               ; preds = %78
  %91 = load %struct.device_node*, %struct.device_node** %4, align 8
  %92 = call i32 @of_node_to_fwnode(%struct.device_node* %91)
  %93 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %94 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %93, i32 0, i32 3
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %100 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %99, i32 0, i32 3
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %98, %104
  %106 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %107 = call i8* @irq_domain_create_linear(i32 %92, i64 %105, i32* @mvebu_sei_domain_ops, %struct.mvebu_sei* %106)
  %108 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %109 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %111 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %90
  %115 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %116 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %115, i32 0, i32 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = call i32 @dev_err(%struct.TYPE_11__* %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %8, align 4
  br label %222

121:                                              ; preds = %90
  %122 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %123 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* @DOMAIN_BUS_NEXUS, align 4
  %126 = call i32 @irq_domain_update_bus_token(i8* %124, i32 %125)
  %127 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %128 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %131 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %130, i32 0, i32 3
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.device_node*, %struct.device_node** %4, align 8
  %137 = call i32 @of_node_to_fwnode(%struct.device_node* %136)
  %138 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %139 = call i8* @irq_domain_create_hierarchy(i8* %129, i32 0, i64 %135, i32 %137, i32* @mvebu_sei_ap_domain_ops, %struct.mvebu_sei* %138)
  %140 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %141 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %143 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %121
  %147 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %148 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %147, i32 0, i32 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = call i32 @dev_err(%struct.TYPE_11__* %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %8, align 4
  br label %217

153:                                              ; preds = %121
  %154 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %155 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* @DOMAIN_BUS_WIRED, align 4
  %158 = call i32 @irq_domain_update_bus_token(i8* %156, i32 %157)
  %159 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %160 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %163 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %162, i32 0, i32 3
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.device_node*, %struct.device_node** %4, align 8
  %169 = call i32 @of_node_to_fwnode(%struct.device_node* %168)
  %170 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %171 = call i8* @irq_domain_create_hierarchy(i8* %161, i32 0, i64 %167, i32 %169, i32* @mvebu_sei_cp_domain_ops, %struct.mvebu_sei* %170)
  %172 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %173 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  %174 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %175 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %174, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %182, label %178

178:                                              ; preds = %153
  %179 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %8, align 4
  br label %212

182:                                              ; preds = %153
  %183 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %184 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* @DOMAIN_BUS_GENERIC_MSI, align 4
  %187 = call i32 @irq_domain_update_bus_token(i8* %185, i32 %186)
  %188 = load %struct.device_node*, %struct.device_node** %4, align 8
  %189 = call i32 @of_node_to_fwnode(%struct.device_node* %188)
  %190 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %191 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = call %struct.irq_domain* @platform_msi_create_irq_domain(i32 %189, i32* @mvebu_sei_msi_domain_info, i8* %192)
  store %struct.irq_domain* %193, %struct.irq_domain** %5, align 8
  %194 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %195 = icmp ne %struct.irq_domain* %194, null
  br i1 %195, label %200, label %196

196:                                              ; preds = %182
  %197 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %8, align 4
  br label %207

200:                                              ; preds = %182
  %201 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %202 = call i32 @mvebu_sei_reset(%struct.mvebu_sei* %201)
  %203 = load i64, i64* %7, align 8
  %204 = load i32, i32* @mvebu_sei_handle_cascade_irq, align 4
  %205 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %206 = call i32 @irq_set_chained_handler_and_data(i64 %203, i32 %204, %struct.mvebu_sei* %205)
  store i32 0, i32* %2, align 4
  br label %226

207:                                              ; preds = %196
  %208 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %209 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @irq_domain_remove(i8* %210)
  br label %212

212:                                              ; preds = %207, %178
  %213 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %214 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @irq_domain_remove(i8* %215)
  br label %217

217:                                              ; preds = %212, %146
  %218 = load %struct.mvebu_sei*, %struct.mvebu_sei** %6, align 8
  %219 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @irq_domain_remove(i8* %220)
  br label %222

222:                                              ; preds = %217, %114
  %223 = load i64, i64* %7, align 8
  %224 = call i32 @irq_dispose_mapping(i64 %223)
  %225 = load i32, i32* %8, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %222, %200, %83, %71, %52, %19
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local %struct.mvebu_sei* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_10__* @of_device_get_match_data(%struct.TYPE_11__*) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i8* @irq_domain_create_linear(i32, i64, i32*, %struct.mvebu_sei*) #1

declare dso_local i32 @of_node_to_fwnode(%struct.device_node*) #1

declare dso_local i32 @irq_domain_update_bus_token(i8*, i32) #1

declare dso_local i8* @irq_domain_create_hierarchy(i8*, i32, i64, i32, i32*, %struct.mvebu_sei*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.irq_domain* @platform_msi_create_irq_domain(i32, i32*, i8*) #1

declare dso_local i32 @mvebu_sei_reset(%struct.mvebu_sei*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i64, i32, %struct.mvebu_sei*) #1

declare dso_local i32 @irq_domain_remove(i8*) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
