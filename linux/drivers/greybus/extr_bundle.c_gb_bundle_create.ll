; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_bundle.c_gb_bundle_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_bundle.c_gb_bundle_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32, %struct.TYPE_5__, i32, i64, i64, %struct.gb_interface* }
%struct.TYPE_5__ = type { i32, i32, i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.gb_interface = type { i32, %struct.TYPE_6__ }

@BUNDLE_ID_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"can't use bundle id %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"duplicate bundle id %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@greybus_bus_type = common dso_local global i32 0, align 4
@greybus_bundle_type = common dso_local global i32 0, align 4
@bundle_groups = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gb_bundle* @gb_bundle_create(%struct.gb_interface* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.gb_interface*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gb_bundle*, align 8
  store %struct.gb_interface* %0, %struct.gb_interface** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @BUNDLE_ID_NONE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %14 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %13, i32 0, i32 1
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @dev_err(%struct.TYPE_6__* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %15)
  store %struct.gb_bundle* null, %struct.gb_bundle** %4, align 8
  br label %86

17:                                               ; preds = %3
  %18 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @gb_bundle_find(%struct.gb_interface* %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %24 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %23, i32 0, i32 1
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @dev_err(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  store %struct.gb_bundle* null, %struct.gb_bundle** %4, align 8
  br label %86

27:                                               ; preds = %17
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.gb_bundle* @kzalloc(i32 72, i32 %28)
  store %struct.gb_bundle* %29, %struct.gb_bundle** %8, align 8
  %30 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %31 = icmp ne %struct.gb_bundle* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store %struct.gb_bundle* null, %struct.gb_bundle** %4, align 8
  br label %86

33:                                               ; preds = %27
  %34 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %35 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %36 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %35, i32 0, i32 5
  store %struct.gb_interface* %34, %struct.gb_interface** %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %39 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %38, i32 0, i32 4
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %42 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %44 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %43, i32 0, i32 2
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %47 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %46, i32 0, i32 1
  %48 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %49 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %50, align 8
  %51 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %52 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i32* @greybus_bus_type, i32** %53, align 8
  %54 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %55 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i32* @greybus_bundle_type, i32** %56, align 8
  %57 = load i32, i32* @bundle_groups, align 4
  %58 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %59 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %62 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %66 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %69 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %68, i32 0, i32 1
  %70 = call i32 @device_initialize(%struct.TYPE_5__* %69)
  %71 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %72 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %71, i32 0, i32 1
  %73 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %74 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %73, i32 0, i32 1
  %75 = call i32 @dev_name(%struct.TYPE_6__* %74)
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @dev_set_name(%struct.TYPE_5__* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %75, i64 %76)
  %78 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %79 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %78, i32 0, i32 0
  %80 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %81 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %80, i32 0, i32 0
  %82 = call i32 @list_add(i32* %79, i32* %81)
  %83 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %84 = call i32 @trace_gb_bundle_create(%struct.gb_bundle* %83)
  %85 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  store %struct.gb_bundle* %85, %struct.gb_bundle** %4, align 8
  br label %86

86:                                               ; preds = %33, %32, %22, %12
  %87 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  ret %struct.gb_bundle* %87
}

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i64 @gb_bundle_find(%struct.gb_interface*, i64) #1

declare dso_local %struct.gb_bundle* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i64) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @trace_gb_bundle_create(%struct.gb_bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
