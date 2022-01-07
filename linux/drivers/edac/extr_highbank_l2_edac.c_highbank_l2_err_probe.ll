; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_highbank_l2_edac.c_highbank_l2_err_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_highbank_l2_edac.c_highbank_l2_err_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.of_device_id = type { i8* }
%struct.edac_device_ctl_info = type { i8*, i32, i32, %struct.TYPE_13__*, %struct.hb_l2_drvdata* }
%struct.hb_l2_drvdata = type { i8*, i8*, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to get mem resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Error while requesting mem region\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Unable to map regs\0A\00", align 1
@hb_l2_err_of_match = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@highbank_l2_err_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @highbank_l2_err_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highbank_l2_err_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.edac_device_ctl_info*, align 8
  %6 = alloca %struct.hb_l2_drvdata*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = call %struct.edac_device_ctl_info* @edac_device_alloc_ctl_info(i32 24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 2, i32* null, i32 0, i32 0)
  store %struct.edac_device_ctl_info* %9, %struct.edac_device_ctl_info** %5, align 8
  %10 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %11 = icmp ne %struct.edac_device_ctl_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %172

15:                                               ; preds = %1
  %16 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %17 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %16, i32 0, i32 4
  %18 = load %struct.hb_l2_drvdata*, %struct.hb_l2_drvdata** %17, align 8
  store %struct.hb_l2_drvdata* %18, %struct.hb_l2_drvdata** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %22 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %21, i32 0, i32 3
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.edac_device_ctl_info* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @devres_open_group(%struct.TYPE_13__* %27, i32* null, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %15
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %172

34:                                               ; preds = %15
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %7, align 8
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = icmp ne %struct.resource* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @dev_err(%struct.TYPE_13__* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %165

46:                                               ; preds = %34
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.resource*, %struct.resource** %7, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.resource*, %struct.resource** %7, align 8
  %53 = call i32 @resource_size(%struct.resource* %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_name(%struct.TYPE_13__* %55)
  %57 = call i32 @devm_request_mem_region(%struct.TYPE_13__* %48, i32 %51, i32 %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %46
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(%struct.TYPE_13__* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %165

65:                                               ; preds = %46
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.resource*, %struct.resource** %7, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.resource*, %struct.resource** %7, align 8
  %72 = call i32 @resource_size(%struct.resource* %71)
  %73 = call i32 @devm_ioremap(%struct.TYPE_13__* %67, i32 %70, i32 %72)
  %74 = load %struct.hb_l2_drvdata*, %struct.hb_l2_drvdata** %6, align 8
  %75 = getelementptr inbounds %struct.hb_l2_drvdata, %struct.hb_l2_drvdata* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.hb_l2_drvdata*, %struct.hb_l2_drvdata** %6, align 8
  %77 = getelementptr inbounds %struct.hb_l2_drvdata, %struct.hb_l2_drvdata* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %65
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_err(%struct.TYPE_13__* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %165

86:                                               ; preds = %65
  %87 = load i32, i32* @hb_l2_err_of_match, align 4
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call %struct.of_device_id* @of_match_device(i32 %87, %struct.TYPE_13__* %89)
  store %struct.of_device_id* %90, %struct.of_device_id** %4, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %98 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %100 = icmp ne %struct.of_device_id* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %86
  %102 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %103 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  br label %106

105:                                              ; preds = %86
  br label %106

106:                                              ; preds = %105, %101
  %107 = phi i8* [ %104, %101 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %105 ]
  %108 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %109 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @dev_name(%struct.TYPE_13__* %111)
  %113 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %114 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %116 = call i64 @edac_device_add_device(%struct.edac_device_ctl_info* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %165

119:                                              ; preds = %106
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = call i8* @platform_get_irq(%struct.platform_device* %120, i32 0)
  %122 = load %struct.hb_l2_drvdata*, %struct.hb_l2_drvdata** %6, align 8
  %123 = getelementptr inbounds %struct.hb_l2_drvdata, %struct.hb_l2_drvdata* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load %struct.hb_l2_drvdata*, %struct.hb_l2_drvdata** %6, align 8
  %127 = getelementptr inbounds %struct.hb_l2_drvdata, %struct.hb_l2_drvdata* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @highbank_l2_err_handler, align 4
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @dev_name(%struct.TYPE_13__* %131)
  %133 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %134 = call i32 @devm_request_irq(%struct.TYPE_13__* %125, i8* %128, i32 %129, i32 0, i32 %132, %struct.edac_device_ctl_info* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %119
  br label %161

138:                                              ; preds = %119
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = call i8* @platform_get_irq(%struct.platform_device* %139, i32 1)
  %141 = load %struct.hb_l2_drvdata*, %struct.hb_l2_drvdata** %6, align 8
  %142 = getelementptr inbounds %struct.hb_l2_drvdata, %struct.hb_l2_drvdata* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load %struct.hb_l2_drvdata*, %struct.hb_l2_drvdata** %6, align 8
  %146 = getelementptr inbounds %struct.hb_l2_drvdata, %struct.hb_l2_drvdata* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* @highbank_l2_err_handler, align 4
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @dev_name(%struct.TYPE_13__* %150)
  %152 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %153 = call i32 @devm_request_irq(%struct.TYPE_13__* %144, i8* %147, i32 %148, i32 0, i32 %151, %struct.edac_device_ctl_info* %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %138
  br label %161

157:                                              ; preds = %138
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i32 @devres_close_group(%struct.TYPE_13__* %159, i32* null)
  store i32 0, i32* %2, align 4
  br label %172

161:                                              ; preds = %156, %137
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = call i32 @edac_device_del_device(%struct.TYPE_13__* %163)
  br label %165

165:                                              ; preds = %161, %118, %80, %59, %40
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = call i32 @devres_release_group(%struct.TYPE_13__* %167, i32* null)
  %169 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %170 = call i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info* %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %165, %157, %31, %12
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.edac_device_ctl_info* @edac_device_alloc_ctl_info(i32, i8*, i32, i8*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.edac_device_ctl_info*) #1

declare dso_local i32 @devres_open_group(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @devm_request_mem_region(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @edac_device_add_device(%struct.edac_device_ctl_info*) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i8*, i32, i32, i32, %struct.edac_device_ctl_info*) #1

declare dso_local i32 @devres_close_group(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @edac_device_del_device(%struct.TYPE_13__*) #1

declare dso_local i32 @devres_release_group(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
