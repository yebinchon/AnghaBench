; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stm_data = type { i32, i32, i32, %struct.stm_device*, i32, i32 }
%struct.stm_device = type { i64, i32, %struct.TYPE_9__, %struct.stm_data*, %struct.module*, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.device*, i32*, i32 }
%struct.module = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@stm_core_up = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@stm_fops = common dso_local global i32 0, align 4
@stm_class = common dso_local global i32 0, align 4
@stm_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stm_register_device(%struct.device* %0, %struct.stm_data* %1, %struct.module* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.stm_data*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.stm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.stm_data* %1, %struct.stm_data** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @stm_core_up, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EPROBE_DEFER, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %160

18:                                               ; preds = %3
  %19 = load %struct.stm_data*, %struct.stm_data** %6, align 8
  %20 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.stm_data*, %struct.stm_data** %6, align 8
  %25 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %160

31:                                               ; preds = %23
  %32 = load %struct.stm_data*, %struct.stm_data** %6, align 8
  %33 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.stm_data*, %struct.stm_data** %6, align 8
  %36 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = add i64 88, %42
  %44 = trunc i64 %43 to i32
  %45 = call %struct.stm_device* @vzalloc(i32 %44)
  store %struct.stm_device* %45, %struct.stm_device** %8, align 8
  %46 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %47 = icmp ne %struct.stm_device* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %31
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %160

51:                                               ; preds = %31
  %52 = load %struct.stm_data*, %struct.stm_data** %6, align 8
  %53 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @register_chrdev(i32 0, i32 %54, i32* @stm_fops)
  %56 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %57 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %59 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %156

63:                                               ; preds = %51
  %64 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %65 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %64, i32 0, i32 2
  %66 = call i32 @device_initialize(%struct.TYPE_9__* %65)
  %67 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %68 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @MKDEV(i64 %69, i32 0)
  %71 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %72 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 8
  %74 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %75 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  store i32* @stm_class, i32** %76, align 8
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %79 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store %struct.device* %77, %struct.device** %80, align 8
  %81 = load i32, i32* @stm_device_release, align 4
  %82 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %83 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %86 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %85, i32 0, i32 9
  %87 = call i32 @mutex_init(i32* %86)
  %88 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %89 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %88, i32 0, i32 8
  %90 = call i32 @spin_lock_init(i32* %89)
  %91 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %92 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %91, i32 0, i32 7
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %95 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %94, i32 0, i32 6
  %96 = call i32 @spin_lock_init(i32* %95)
  %97 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %98 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %97, i32 0, i32 5
  %99 = call i32 @mutex_init(i32* %98)
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %102 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.module*, %struct.module** %7, align 8
  %104 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %105 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %104, i32 0, i32 4
  store %struct.module* %103, %struct.module** %105, align 8
  %106 = load %struct.stm_data*, %struct.stm_data** %6, align 8
  %107 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %108 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %107, i32 0, i32 3
  store %struct.stm_data* %106, %struct.stm_data** %108, align 8
  %109 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %110 = load %struct.stm_data*, %struct.stm_data** %6, align 8
  %111 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %110, i32 0, i32 3
  store %struct.stm_device* %109, %struct.stm_device** %111, align 8
  %112 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %113 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load %struct.stm_data*, %struct.stm_data** %6, align 8
  %116 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @kobject_set_name(i32* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %63
  br label %145

122:                                              ; preds = %63
  %123 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %124 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %123, i32 0, i32 2
  %125 = call i32 @device_add(%struct.TYPE_9__* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %145

129:                                              ; preds = %122
  %130 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %131 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %130, i32 0, i32 2
  %132 = call i32 @pm_runtime_no_callbacks(%struct.TYPE_9__* %131)
  %133 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %134 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %133, i32 0, i32 2
  %135 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_9__* %134)
  %136 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %137 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %136, i32 0, i32 2
  %138 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_9__* %137, i32 2000)
  %139 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %140 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %139, i32 0, i32 2
  %141 = call i32 @pm_runtime_set_suspended(%struct.TYPE_9__* %140)
  %142 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %143 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %142, i32 0, i32 2
  %144 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %143)
  store i32 0, i32* %4, align 4
  br label %160

145:                                              ; preds = %128, %121
  %146 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %147 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.stm_data*, %struct.stm_data** %6, align 8
  %150 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @unregister_chrdev(i64 %148, i32 %151)
  %153 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %154 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %153, i32 0, i32 2
  %155 = call i32 @put_device(%struct.TYPE_9__* %154)
  br label %156

156:                                              ; preds = %145, %62
  %157 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %158 = call i32 @vfree(%struct.stm_device* %157)
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %156, %129, %48, %28, %15
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.stm_device* @vzalloc(i32) #1

declare dso_local i64 @register_chrdev(i32, i32, i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_9__*) #1

declare dso_local i32 @MKDEV(i64, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kobject_set_name(i32*, i8*, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_9__*) #1

declare dso_local i32 @pm_runtime_no_callbacks(%struct.TYPE_9__*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_9__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_9__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @unregister_chrdev(i64, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_9__*) #1

declare dso_local i32 @vfree(%struct.stm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
