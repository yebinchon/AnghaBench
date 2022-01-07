; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_map_array_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_map_array_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_map = type { i32* }
%struct.iio_map_internal = type { i32, %struct.iio_dev*, %struct.iio_map* }

@iio_map_list_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iio_map_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_map_array_register(%struct.iio_dev* %0, %struct.iio_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iio_map_internal*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_map* %1, %struct.iio_map** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.iio_map*, %struct.iio_map** %5, align 8
  %10 = icmp eq %struct.iio_map* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

12:                                               ; preds = %2
  %13 = call i32 @mutex_lock(i32* @iio_map_list_lock)
  br label %14

14:                                               ; preds = %30, %12
  %15 = load %struct.iio_map*, %struct.iio_map** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.iio_map, %struct.iio_map* %15, i64 %17
  %19 = getelementptr inbounds %struct.iio_map, %struct.iio_map* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %14
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.iio_map_internal* @kzalloc(i32 24, i32 %23)
  store %struct.iio_map_internal* %24, %struct.iio_map_internal** %8, align 8
  %25 = load %struct.iio_map_internal*, %struct.iio_map_internal** %8, align 8
  %26 = icmp eq %struct.iio_map_internal* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %46

30:                                               ; preds = %22
  %31 = load %struct.iio_map*, %struct.iio_map** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iio_map, %struct.iio_map* %31, i64 %33
  %35 = load %struct.iio_map_internal*, %struct.iio_map_internal** %8, align 8
  %36 = getelementptr inbounds %struct.iio_map_internal, %struct.iio_map_internal* %35, i32 0, i32 2
  store %struct.iio_map* %34, %struct.iio_map** %36, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %38 = load %struct.iio_map_internal*, %struct.iio_map_internal** %8, align 8
  %39 = getelementptr inbounds %struct.iio_map_internal, %struct.iio_map_internal* %38, i32 0, i32 1
  store %struct.iio_dev* %37, %struct.iio_dev** %39, align 8
  %40 = load %struct.iio_map_internal*, %struct.iio_map_internal** %8, align 8
  %41 = getelementptr inbounds %struct.iio_map_internal, %struct.iio_map_internal* %40, i32 0, i32 0
  %42 = call i32 @list_add_tail(i32* %41, i32* @iio_map_list)
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %14

45:                                               ; preds = %14
  br label %46

46:                                               ; preds = %45, %27
  %47 = call i32 @mutex_unlock(i32* @iio_map_list_lock)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.iio_map_internal* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
