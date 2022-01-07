; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack_device = type { %struct.TYPE_9__, %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.ipack_device*, i32)*, i64 (%struct.ipack_device*)* }

@ipack_bus_type = common dso_local global i32 0, align 4
@ipack_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ipack-dev.%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"failed to switch to 8 MHz operation for reading of device ID.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to reset potential timeout.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"error reading device id section.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"failed to switch to 32 MHz operation.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipack_device_init(%struct.ipack_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipack_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ipack_device* %0, %struct.ipack_device** %3, align 8
  %5 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %6 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i32* @ipack_bus_type, i32** %7, align 8
  %8 = load i32, i32* @ipack_device_release, align 4
  %9 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %10 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %13 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %18 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %21 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %20, i32 0, i32 0
  %22 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %23 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %28 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_set_name(%struct.TYPE_9__* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %32 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %31, i32 0, i32 0
  %33 = call i32 @device_initialize(%struct.TYPE_9__* %32)
  %34 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %35 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32 (%struct.ipack_device*, i32)*, i32 (%struct.ipack_device*, i32)** %39, align 8
  %41 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %42 = call i32 %40(%struct.ipack_device* %41, i32 8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %1
  %45 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %46 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %45, i32 0, i32 0
  %47 = call i32 @dev_warn(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %1
  %49 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %50 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64 (%struct.ipack_device*)*, i64 (%struct.ipack_device*)** %54, align 8
  %56 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %57 = call i64 %55(%struct.ipack_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %61 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %60, i32 0, i32 0
  %62 = call i32 @dev_warn(%struct.TYPE_9__* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %48
  %64 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %65 = call i32 @ipack_device_read_id(%struct.ipack_device* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %70 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(%struct.TYPE_9__* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %96

73:                                               ; preds = %63
  %74 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %75 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %73
  %79 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %80 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32 (%struct.ipack_device*, i32)*, i32 (%struct.ipack_device*, i32)** %84, align 8
  %86 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %87 = call i32 %85(%struct.ipack_device* %86, i32 32)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  %91 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %92 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %91, i32 0, i32 0
  %93 = call i32 @dev_err(%struct.TYPE_9__* %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %78
  br label %95

95:                                               ; preds = %94, %73
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %68
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @dev_set_name(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @ipack_device_read_id(%struct.ipack_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
