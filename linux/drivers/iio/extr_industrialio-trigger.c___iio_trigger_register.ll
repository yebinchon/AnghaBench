; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c___iio_trigger_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c___iio_trigger_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i64, i32, i32, i32, %struct.module* }
%struct.module = type { i32 }

@iio_trigger_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"trigger%ld\00", align 1
@iio_trigger_list_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Duplicate trigger name '%s'\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@iio_trigger_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__iio_trigger_register(%struct.iio_trigger* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_trigger*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %7 = load %struct.module*, %struct.module** %5, align 8
  %8 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %9 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %8, i32 0, i32 4
  store %struct.module* %7, %struct.module** %9, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @ida_simple_get(i32* @iio_trigger_ida, i32 0, i32 0, i32 %10)
  %12 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %13 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %15 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %20 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %2
  %24 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %25 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %24, i32 0, i32 1
  %26 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %27 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dev_set_name(i32* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %31 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %30, i32 0, i32 1
  %32 = call i32 @device_add(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %60

36:                                               ; preds = %23
  %37 = call i32 @mutex_lock(i32* @iio_trigger_list_lock)
  %38 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %39 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @__iio_trigger_find_by_name(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %45 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EEXIST, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %55

50:                                               ; preds = %36
  %51 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %52 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %51, i32 0, i32 2
  %53 = call i32 @list_add_tail(i32* %52, i32* @iio_trigger_list)
  %54 = call i32 @mutex_unlock(i32* @iio_trigger_list_lock)
  store i32 0, i32* %3, align 4
  br label %67

55:                                               ; preds = %43
  %56 = call i32 @mutex_unlock(i32* @iio_trigger_list_lock)
  %57 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %58 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %57, i32 0, i32 1
  %59 = call i32 @device_del(i32* %58)
  br label %60

60:                                               ; preds = %55, %35
  %61 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %62 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @ida_simple_remove(i32* @iio_trigger_ida, i32 %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %50, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i64) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__iio_trigger_find_by_name(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
