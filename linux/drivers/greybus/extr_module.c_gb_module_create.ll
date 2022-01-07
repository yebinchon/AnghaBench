; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_module.c_gb_module_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_module.c_gb_module_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_module = type { i64, %struct.TYPE_7__, %struct.gb_interface**, i64, %struct.gb_host_device* }
%struct.TYPE_7__ = type { i32, i32, i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.gb_interface = type { i32 }
%struct.gb_host_device = type { i32, %struct.TYPE_6__ }

@interfaces = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@greybus_bus_type = common dso_local global i32 0, align 4
@greybus_module_type = common dso_local global i32 0, align 4
@module_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d-%u\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to create interface %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gb_module* @gb_module_create(%struct.gb_host_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.gb_module*, align 8
  %5 = alloca %struct.gb_host_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gb_interface*, align 8
  %9 = alloca %struct.gb_module*, align 8
  %10 = alloca i32, align 4
  store %struct.gb_host_device* %0, %struct.gb_host_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %12 = load i32, i32* @interfaces, align 4
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @struct_size(%struct.gb_module* %11, i32 %12, i64 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.gb_module* @kzalloc(i32 %14, i32 %15)
  store %struct.gb_module* %16, %struct.gb_module** %9, align 8
  %17 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %18 = icmp ne %struct.gb_module* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.gb_module* null, %struct.gb_module** %4, align 8
  br label %121

20:                                               ; preds = %3
  %21 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %22 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %23 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %22, i32 0, i32 4
  store %struct.gb_host_device* %21, %struct.gb_host_device** %23, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %26 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %29 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %31 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %30, i32 0, i32 1
  %32 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %33 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %36 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  store i32* @greybus_bus_type, i32** %37, align 8
  %38 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %39 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  store i32* @greybus_module_type, i32** %40, align 8
  %41 = load i32, i32* @module_groups, align 4
  %42 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %43 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %46 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %50 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %53 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %52, i32 0, i32 1
  %54 = call i32 @device_initialize(%struct.TYPE_7__* %53)
  %55 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %56 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %55, i32 0, i32 1
  %57 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %58 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @dev_set_name(%struct.TYPE_7__* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %59, i64 %60)
  %62 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %63 = call i32 @trace_gb_module_create(%struct.gb_module* %62)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %94, %20
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %7, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %64
  %70 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = call %struct.gb_interface* @gb_interface_create(%struct.gb_module* %70, i64 %74)
  store %struct.gb_interface* %75, %struct.gb_interface** %8, align 8
  %76 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %77 = icmp ne %struct.gb_interface* %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %69
  %79 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %80 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %79, i32 0, i32 1
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = call i32 @dev_err(%struct.TYPE_7__* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  br label %99

86:                                               ; preds = %69
  %87 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %88 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %89 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %88, i32 0, i32 2
  %90 = load %struct.gb_interface**, %struct.gb_interface*** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.gb_interface*, %struct.gb_interface** %90, i64 %92
  store %struct.gb_interface* %87, %struct.gb_interface** %93, align 8
  br label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %64

97:                                               ; preds = %64
  %98 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  store %struct.gb_module* %98, %struct.gb_module** %4, align 8
  br label %121

99:                                               ; preds = %78
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %114, %99
  %103 = load i32, i32* %10, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %107 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %106, i32 0, i32 2
  %108 = load %struct.gb_interface**, %struct.gb_interface*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.gb_interface*, %struct.gb_interface** %108, i64 %110
  %112 = load %struct.gb_interface*, %struct.gb_interface** %111, align 8
  %113 = call i32 @gb_interface_put(%struct.gb_interface* %112)
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %10, align 4
  br label %102

117:                                              ; preds = %102
  %118 = load %struct.gb_module*, %struct.gb_module** %9, align 8
  %119 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %118, i32 0, i32 1
  %120 = call i32 @put_device(%struct.TYPE_7__* %119)
  store %struct.gb_module* null, %struct.gb_module** %4, align 8
  br label %121

121:                                              ; preds = %117, %97, %19
  %122 = load %struct.gb_module*, %struct.gb_module** %4, align 8
  ret %struct.gb_module* %122
}

declare dso_local %struct.gb_module* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.gb_module*, i32, i64) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32, i64) #1

declare dso_local i32 @trace_gb_module_create(%struct.gb_module*) #1

declare dso_local %struct.gb_interface* @gb_interface_create(%struct.gb_module*, i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @gb_interface_put(%struct.gb_interface*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
