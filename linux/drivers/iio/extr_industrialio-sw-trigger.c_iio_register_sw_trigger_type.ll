; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-sw-trigger.c_iio_register_sw_trigger_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-sw-trigger.c_iio_register_sw_trigger_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_sw_trigger_type = type { i32, i32, i32 }

@iio_trigger_types_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@iio_trigger_types_list = common dso_local global i32 0, align 4
@iio_triggers_group = common dso_local global i32 0, align 4
@iio_trigger_type_group_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_register_sw_trigger_type(%struct.iio_sw_trigger_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_sw_trigger_type*, align 8
  %4 = alloca %struct.iio_sw_trigger_type*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_sw_trigger_type* %0, %struct.iio_sw_trigger_type** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @mutex_lock(i32* @iio_trigger_types_lock)
  %7 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %3, align 8
  %8 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %3, align 8
  %11 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strlen(i32 %12)
  %14 = call %struct.iio_sw_trigger_type* @__iio_find_sw_trigger_type(i32 %9, i32 %13)
  store %struct.iio_sw_trigger_type* %14, %struct.iio_sw_trigger_type** %4, align 8
  %15 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %4, align 8
  %16 = icmp ne %struct.iio_sw_trigger_type* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %3, align 8
  %22 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %21, i32 0, i32 2
  %23 = call i32 @list_add_tail(i32* %22, i32* @iio_trigger_types_list)
  br label %24

24:                                               ; preds = %20, %17
  %25 = call i32 @mutex_unlock(i32* @iio_trigger_types_lock)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %50

30:                                               ; preds = %24
  %31 = load i32, i32* @iio_triggers_group, align 4
  %32 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %3, align 8
  %33 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @configfs_register_default_group(i32 %31, i32 %34, i32* @iio_trigger_type_group_type)
  %36 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %3, align 8
  %37 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %3, align 8
  %39 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.iio_sw_trigger_type*, %struct.iio_sw_trigger_type** %3, align 8
  %45 = getelementptr inbounds %struct.iio_sw_trigger_type, %struct.iio_sw_trigger_type* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %30
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %28
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.iio_sw_trigger_type* @__iio_find_sw_trigger_type(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @configfs_register_default_group(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
