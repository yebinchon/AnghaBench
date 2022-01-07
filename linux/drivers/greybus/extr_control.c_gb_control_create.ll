; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_control = type { %struct.gb_connection*, %struct.TYPE_5__, %struct.gb_interface* }
%struct.gb_connection = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.gb_interface = type { %struct.TYPE_6__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to create control connection: %ld\0A\00", align 1
@greybus_bus_type = common dso_local global i32 0, align 4
@greybus_control_type = common dso_local global i32 0, align 4
@control_groups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s.ctrl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gb_control* @gb_control_create(%struct.gb_interface* %0) #0 {
  %2 = alloca %struct.gb_control*, align 8
  %3 = alloca %struct.gb_interface*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_control*, align 8
  store %struct.gb_interface* %0, %struct.gb_interface** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.gb_control* @kzalloc(i32 48, i32 %6)
  store %struct.gb_control* %7, %struct.gb_control** %5, align 8
  %8 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %9 = icmp ne %struct.gb_control* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.gb_control* @ERR_PTR(i32 %12)
  store %struct.gb_control* %13, %struct.gb_control** %2, align 8
  br label %74

14:                                               ; preds = %1
  %15 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %16 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %17 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %16, i32 0, i32 2
  store %struct.gb_interface* %15, %struct.gb_interface** %17, align 8
  %18 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %19 = call %struct.gb_connection* @gb_connection_create_control(%struct.gb_interface* %18)
  store %struct.gb_connection* %19, %struct.gb_connection** %4, align 8
  %20 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %21 = call i64 @IS_ERR(%struct.gb_connection* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  %24 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %25 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %24, i32 0, i32 0
  %26 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %27 = call i32 @PTR_ERR(%struct.gb_connection* %26)
  %28 = call i32 @dev_err(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %30 = call i32 @kfree(%struct.gb_control* %29)
  %31 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %32 = call %struct.gb_control* @ERR_CAST(%struct.gb_connection* %31)
  store %struct.gb_control* %32, %struct.gb_control** %2, align 8
  br label %74

33:                                               ; preds = %14
  %34 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %35 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %36 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %35, i32 0, i32 0
  store %struct.gb_connection* %34, %struct.gb_connection** %36, align 8
  %37 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %38 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %37, i32 0, i32 0
  %39 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %40 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %41, align 8
  %42 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %43 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i32* @greybus_bus_type, i32** %44, align 8
  %45 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %46 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i32* @greybus_control_type, i32** %47, align 8
  %48 = load i32, i32* @control_groups, align 4
  %49 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %50 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %53 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %57 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %60 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %59, i32 0, i32 1
  %61 = call i32 @device_initialize(%struct.TYPE_5__* %60)
  %62 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %63 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %62, i32 0, i32 1
  %64 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %65 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %64, i32 0, i32 0
  %66 = call i32 @dev_name(%struct.TYPE_6__* %65)
  %67 = call i32 @dev_set_name(%struct.TYPE_5__* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %69 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %68, i32 0, i32 0
  %70 = load %struct.gb_connection*, %struct.gb_connection** %69, align 8
  %71 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  %72 = call i32 @gb_connection_set_data(%struct.gb_connection* %70, %struct.gb_control* %71)
  %73 = load %struct.gb_control*, %struct.gb_control** %5, align 8
  store %struct.gb_control* %73, %struct.gb_control** %2, align 8
  br label %74

74:                                               ; preds = %33, %23, %10
  %75 = load %struct.gb_control*, %struct.gb_control** %2, align 8
  ret %struct.gb_control* %75
}

declare dso_local %struct.gb_control* @kzalloc(i32, i32) #1

declare dso_local %struct.gb_control* @ERR_PTR(i32) #1

declare dso_local %struct.gb_connection* @gb_connection_create_control(%struct.gb_interface*) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @kfree(%struct.gb_control*) #1

declare dso_local %struct.gb_control* @ERR_CAST(%struct.gb_connection*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
