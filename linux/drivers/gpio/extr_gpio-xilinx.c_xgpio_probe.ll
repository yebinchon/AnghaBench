; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xilinx.c_xgpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xilinx.c_xgpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.xgpio_instance = type { i32*, i32*, i32*, %struct.TYPE_7__, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"xlnx,dout-default\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"xlnx,tri-default\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"xlnx,gpio-width\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"xlnx,is-dual\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"xlnx,dout-default-2\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"xlnx,tri-default-2\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"xlnx,gpio2-width\00", align 1
@xgpio_dir_in = common dso_local global i32 0, align 4
@xgpio_dir_out = common dso_local global i32 0, align 4
@xgpio_get = common dso_local global i32 0, align 4
@xgpio_set = common dso_local global i32 0, align 4
@xgpio_set_multiple = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"failed to ioremap memory resource\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"failed to add GPIO chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xgpio_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.xgpio_instance* @devm_kzalloc(%struct.TYPE_6__* %13, i32 80, i32 %14)
  store %struct.xgpio_instance* %15, %struct.xgpio_instance** %4, align 8
  %16 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %17 = icmp ne %struct.xgpio_instance* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %190

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.xgpio_instance* %23)
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %27 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = call i64 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %29)
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %33 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = call i64 @of_property_read_u32(%struct.device_node* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %40 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 -1, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %21
  %44 = load %struct.device_node*, %struct.device_node** %6, align 8
  %45 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %46 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i64 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %53 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 32, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %43
  %57 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %58 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = load %struct.device_node*, %struct.device_node** %6, align 8
  %63 = call i64 @of_property_read_u32(%struct.device_node* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %107

69:                                               ; preds = %66
  %70 = load %struct.device_node*, %struct.device_node** %6, align 8
  %71 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %72 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = call i64 @of_property_read_u32(%struct.device_node* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %74)
  %76 = load %struct.device_node*, %struct.device_node** %6, align 8
  %77 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %78 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = call i64 @of_property_read_u32(%struct.device_node* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %69
  %84 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %85 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 -1, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %69
  %89 = load %struct.device_node*, %struct.device_node** %6, align 8
  %90 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %91 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = call i64 @of_property_read_u32(%struct.device_node* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %98 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 32, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %88
  %102 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %103 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = call i32 @spin_lock_init(i32* %105)
  br label %107

107:                                              ; preds = %101, %66
  %108 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %109 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 -1, i32* %110, align 8
  %111 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %112 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %117 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %115, %120
  %122 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %123 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %128 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 8
  store %struct.TYPE_6__* %126, %struct.TYPE_6__** %129, align 8
  %130 = load i32, i32* @xgpio_dir_in, align 4
  %131 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %132 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 7
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* @xgpio_dir_out, align 4
  %135 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %136 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 6
  store i32 %134, i32* %137, align 8
  %138 = load i32, i32* @xgpio_get, align 4
  %139 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %140 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 5
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* @xgpio_set, align 4
  %143 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %144 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 4
  store i32 %142, i32* %145, align 8
  %146 = load i32, i32* @xgpio_set_multiple, align 4
  %147 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %148 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 3
  store i32 %146, i32* %149, align 4
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @dev_name(%struct.TYPE_6__* %151)
  %153 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %154 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  store i32 %152, i32* %155, align 8
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %156, i32 0)
  %158 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %159 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  %160 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %161 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @IS_ERR(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %107
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = call i32 @dev_err(%struct.TYPE_6__* %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %169 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %170 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @PTR_ERR(i32 %171)
  store i32 %172, i32* %2, align 4
  br label %190

173:                                              ; preds = %107
  %174 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %175 = call i32 @xgpio_save_regs(%struct.xgpio_instance* %174)
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %179 = getelementptr inbounds %struct.xgpio_instance, %struct.xgpio_instance* %178, i32 0, i32 3
  %180 = load %struct.xgpio_instance*, %struct.xgpio_instance** %4, align 8
  %181 = call i32 @devm_gpiochip_add_data(%struct.TYPE_6__* %177, %struct.TYPE_7__* %179, %struct.xgpio_instance* %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %173
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = call i32 @dev_err(%struct.TYPE_6__* %186, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %188 = load i32, i32* %5, align 4
  store i32 %188, i32* %2, align 4
  br label %190

189:                                              ; preds = %173
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %184, %165, %18
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.xgpio_instance* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xgpio_instance*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @xgpio_save_regs(%struct.xgpio_instance*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.xgpio_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
