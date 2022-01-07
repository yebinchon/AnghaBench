; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-sw-trigger.c_iio_unregister_sw_trigger_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-sw-trigger.c_iio_unregister_sw_trigger_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_sw_trigger_type = type { i32, i32, i32 }

@iio_trigger_types_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iio_unregister_sw_trigger_type(%struct.iio_sw_trigger_type* %0) #0 {
  %2 = alloca %struct.iio_sw_trigger_type*, align 8
  %3 = alloca %struct.iio_sw_trigger_type*, align 8
  store %struct.iio_sw_trigger_type* %0, %struct.iio_sw_trigger_type** %2, align 8
  %4 = call i32 @mutex_lock(i32* @iio_trigger_types_lock)
  %5 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %2, align 8
  %6 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %2, align 8
  %9 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strlen(i32 %10)
  %12 = call %struct.iio_sw_trigger_type* @__iio_find_sw_trigger_type(i32 %7, i32 %11)
  store %struct.iio_sw_trigger_type* %12, %struct.iio_sw_trigger_type** %3, align 8
  %13 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %3, align 8
  %14 = icmp ne %struct.iio_sw_trigger_type* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %2, align 8
  %17 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %16, i32 0, i32 1
  %18 = call i32 @list_del(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = call i32 @mutex_unlock(i32* @iio_trigger_types_lock)
  %21 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %2, align 8
  %22 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @configfs_unregister_default_group(i32 %23)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.iio_sw_trigger_type* @__iio_find_sw_trigger_type(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @configfs_unregister_default_group(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
