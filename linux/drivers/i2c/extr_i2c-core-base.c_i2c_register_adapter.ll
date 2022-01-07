; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_register_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_register_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i64, i64, i32, %struct.TYPE_10__, i32*, i32, i32, i32, i32, i64, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@is_registered = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"i2c adapter has no name\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"adapter '%s': no algo supplied!\0A\00", align 1
@i2c_adapter_lock_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"adapter '%s': can't create Host Notify IRQs (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"i2c-%d\00", align 1
@i2c_bus_type = common dso_local global i32 0, align 4
@i2c_adapter_type = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"adapter '%s': can't register device (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"adapter [%s] registered\0A\00", align 1
@__i2c_first_dynamic_bus_num = common dso_local global i64 0, align 8
@core_lock = common dso_local global i32 0, align 4
@__process_new_adapter = common dso_local global i32 0, align 4
@i2c_adapter_idr = common dso_local global i32 0, align 4
@i2c_adapter_compat_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @i2c_register_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_register_adapter(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @is_registered, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %158

16:                                               ; preds = %1
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %158

28:                                               ; preds = %16
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 (i8*, i32*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* %36)
  br label %158

38:                                               ; preds = %28
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 10
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %44, i32 0, i32 10
  store i32* @i2c_adapter_lock_ops, i32** %45, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %47, i32 0, i32 9
  store i64 0, i64* %48, align 8
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 8
  %51 = call i32 @rt_mutex_init(i32* %50)
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 7
  %54 = call i32 @rt_mutex_init(i32* %53)
  %55 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %55, i32 0, i32 6
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %58, i32 0, i32 5
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %46
  %66 = load i64, i64* @HZ, align 8
  %67 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %46
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %71 = call i32 @i2c_setup_host_notify_irq_domain(%struct.i2c_adapter* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i8*, i32*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32* %77, i32 %78)
  br label %158

80:                                               ; preds = %69
  %81 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %81, i32 0, i32 3
  %83 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @dev_set_name(%struct.TYPE_10__* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  %87 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  store i32* @i2c_bus_type, i32** %89, align 8
  %90 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i32* @i2c_adapter_type, i32** %92, align 8
  %93 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %93, i32 0, i32 3
  %95 = call i32 @device_register(%struct.TYPE_10__* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %80
  %99 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i8*, i32*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32* %101, i32 %102)
  br label %158

104:                                              ; preds = %80
  %105 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %106 = call i32 @of_i2c_setup_smbus_alert(%struct.i2c_adapter* %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %148

110:                                              ; preds = %104
  %111 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %111, i32 0, i32 3
  %113 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @dev_dbg(%struct.TYPE_10__* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* %115)
  %117 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %117, i32 0, i32 3
  %119 = call i32 @pm_runtime_no_callbacks(%struct.TYPE_10__* %118)
  %120 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %120, i32 0, i32 3
  %122 = call i32 @pm_suspend_ignore_children(%struct.TYPE_10__* %121, i32 1)
  %123 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %123, i32 0, i32 3
  %125 = call i32 @pm_runtime_enable(%struct.TYPE_10__* %124)
  %126 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %127 = call i32 @i2c_init_recovery(%struct.i2c_adapter* %126)
  %128 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %129 = call i32 @of_i2c_register_devices(%struct.i2c_adapter* %128)
  %130 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %131 = call i32 @i2c_acpi_register_devices(%struct.i2c_adapter* %130)
  %132 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %133 = call i32 @i2c_acpi_install_space_handler(%struct.i2c_adapter* %132)
  %134 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @__i2c_first_dynamic_bus_num, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %110
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %141 = call i32 @i2c_scan_static_board_info(%struct.i2c_adapter* %140)
  br label %142

142:                                              ; preds = %139, %110
  %143 = call i32 @mutex_lock(i32* @core_lock)
  %144 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %145 = load i32, i32* @__process_new_adapter, align 4
  %146 = call i32 @bus_for_each_drv(i32* @i2c_bus_type, i32* null, %struct.i2c_adapter* %144, i32 %145)
  %147 = call i32 @mutex_unlock(i32* @core_lock)
  store i32 0, i32* %2, align 4
  br label %166

148:                                              ; preds = %109
  %149 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %150 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %149, i32 0, i32 2
  %151 = call i32 @init_completion(i32* %150)
  %152 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %153 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %152, i32 0, i32 3
  %154 = call i32 @device_unregister(%struct.TYPE_10__* %153)
  %155 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %155, i32 0, i32 2
  %157 = call i32 @wait_for_completion(i32* %156)
  br label %158

158:                                              ; preds = %148, %98, %74, %33, %27, %13
  %159 = call i32 @mutex_lock(i32* @core_lock)
  %160 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %161 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @idr_remove(i32* @i2c_adapter_idr, i64 %162)
  %164 = call i32 @mutex_unlock(i32* @core_lock)
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %158, %142
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i32*, ...) #1

declare dso_local i32 @rt_mutex_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @i2c_setup_host_notify_irq_domain(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @device_register(%struct.TYPE_10__*) #1

declare dso_local i32 @of_i2c_setup_smbus_alert(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i32 @pm_runtime_no_callbacks(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_suspend_ignore_children(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_10__*) #1

declare dso_local i32 @i2c_init_recovery(%struct.i2c_adapter*) #1

declare dso_local i32 @of_i2c_register_devices(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_acpi_register_devices(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_acpi_install_space_handler(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_scan_static_board_info(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bus_for_each_drv(i32*, i32*, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
