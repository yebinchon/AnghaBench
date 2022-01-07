; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.sti_mbox_pdata*, %struct.device_node* }
%struct.sti_mbox_pdata = type { i32 }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }
%struct.mbox_controller = type { i32, i32, i32, i32, %struct.mbox_chan*, i32, %struct.TYPE_9__*, i32* }
%struct.mbox_chan = type { i32 }
%struct.sti_mbox_device = type { i32, %struct.TYPE_9__*, i32, %struct.mbox_controller*, i32 }
%struct.resource = type { i32 }

@sti_mailbox_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No configuration found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"mbox-name\00", align 1
@STI_MBOX_CHAN_MAX = common dso_local global i32 0, align 4
@sti_mbox_ops = common dso_local global i32 0, align 4
@sti_mbox_xlate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: Registered Tx only Mailbox\0A\00", align 1
@sti_mbox_irq_handler = common dso_local global i32 0, align 4
@sti_mbox_thread_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Can't claim IRQ %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: Registered Tx/Rx Mailbox\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sti_mbox_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_mbox_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.mbox_controller*, align 8
  %6 = alloca %struct.sti_mbox_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.mbox_chan*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load i32, i32* @sti_mailbox_match, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.of_device_id* @of_match_device(i32 %16, %struct.TYPE_9__* %18)
  store %struct.of_device_id* %19, %struct.of_device_id** %4, align 8
  %20 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %21 = icmp ne %struct.of_device_id* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %185

28:                                               ; preds = %1
  %29 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %30 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.sti_mbox_pdata*
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store %struct.sti_mbox_pdata* %32, %struct.sti_mbox_pdata** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kzalloc(%struct.TYPE_9__* %37, i32 40, i32 %38)
  %40 = bitcast i8* %39 to %struct.sti_mbox_device*
  store %struct.sti_mbox_device* %40, %struct.sti_mbox_device** %6, align 8
  %41 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %42 = icmp ne %struct.sti_mbox_device* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %185

46:                                               ; preds = %28
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %49 = call i32 @platform_set_drvdata(%struct.platform_device* %47, %struct.sti_mbox_device* %48)
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = call %struct.resource* @platform_get_resource(%struct.platform_device* %50, i32 %51, i32 0)
  store %struct.resource* %52, %struct.resource** %9, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.resource*, %struct.resource** %9, align 8
  %56 = call i32 @devm_ioremap_resource(%struct.TYPE_9__* %54, %struct.resource* %55)
  %57 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %58 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %60 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %46
  %65 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %66 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %185

69:                                               ; preds = %46
  %70 = load %struct.device_node*, %struct.device_node** %7, align 8
  %71 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %72 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %71, i32 0, i32 0
  %73 = call i32 @of_property_read_string(%struct.device_node* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.device_node*, %struct.device_node** %7, align 8
  %78 = getelementptr inbounds %struct.device_node, %struct.device_node* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %81 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %76, %69
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @devm_kzalloc(%struct.TYPE_9__* %84, i32 48, i32 %85)
  %87 = bitcast i8* %86 to %struct.mbox_controller*
  store %struct.mbox_controller* %87, %struct.mbox_controller** %5, align 8
  %88 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %89 = icmp ne %struct.mbox_controller* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %185

93:                                               ; preds = %82
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load i32, i32* @STI_MBOX_CHAN_MAX, align 4
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call %struct.mbox_chan* @devm_kcalloc(%struct.TYPE_9__* %95, i32 %96, i32 4, i32 %97)
  store %struct.mbox_chan* %98, %struct.mbox_chan** %8, align 8
  %99 = load %struct.mbox_chan*, %struct.mbox_chan** %8, align 8
  %100 = icmp ne %struct.mbox_chan* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %185

104:                                              ; preds = %93
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %108 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %107, i32 0, i32 1
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %108, align 8
  %109 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %110 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %111 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %110, i32 0, i32 3
  store %struct.mbox_controller* %109, %struct.mbox_controller** %111, align 8
  %112 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %113 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %112, i32 0, i32 2
  %114 = call i32 @spin_lock_init(i32* %113)
  %115 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %116 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %118 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %120 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %119, i32 0, i32 2
  store i32 100, i32* %120, align 8
  %121 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %122 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %121, i32 0, i32 7
  store i32* @sti_mbox_ops, i32** %122, align 8
  %123 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %124 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %123, i32 0, i32 1
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %127 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %126, i32 0, i32 6
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** %127, align 8
  %128 = load i32, i32* @sti_mbox_xlate, align 4
  %129 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %130 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 8
  %131 = load %struct.mbox_chan*, %struct.mbox_chan** %8, align 8
  %132 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %133 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %132, i32 0, i32 4
  store %struct.mbox_chan* %131, %struct.mbox_chan** %133, align 8
  %134 = load i32, i32* @STI_MBOX_CHAN_MAX, align 4
  %135 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %136 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %140 = call i32 @devm_mbox_controller_register(%struct.TYPE_9__* %138, %struct.mbox_controller* %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %104
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %2, align 4
  br label %185

145:                                              ; preds = %104
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = call i32 @platform_get_irq(%struct.platform_device* %146, i32 0)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %154 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @dev_info(%struct.TYPE_9__* %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  store i32 0, i32* %2, align 4
  br label %185

157:                                              ; preds = %145
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @sti_mbox_irq_handler, align 4
  %162 = load i32, i32* @sti_mbox_thread_handler, align 4
  %163 = load i32, i32* @IRQF_ONESHOT, align 4
  %164 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %165 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %168 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %166, %struct.sti_mbox_device* %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %157
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = load i32, i32* %10, align 4
  %175 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %173, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %2, align 4
  br label %185

178:                                              ; preds = %157
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %182 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @dev_info(%struct.TYPE_9__* %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %183)
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %178, %171, %150, %143, %101, %90, %64, %43, %22
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sti_mbox_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.mbox_chan* @devm_kcalloc(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_mbox_controller_register(%struct.TYPE_9__*, %struct.mbox_controller*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i32, i32, i32, i32, i32, %struct.sti_mbox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
