; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_hd.c_gb_hd_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_hd.c_gb_hd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_host_device = type { i32, i64, i64, %struct.device, i32, i32, i32, i32, %struct.gb_hd_driver* }
%struct.device = type { i32, %struct.device*, i32, i32*, i32* }
%struct.gb_hd_driver = type { i64, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"mandatory hd-callbacks missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GB_OPERATION_MESSAGE_SIZE_MIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"greybus host-device buffers too small\0A\00", align 1
@CPORT_ID_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid number of CPorts: %zu\0A\00", align 1
@GB_OPERATION_MESSAGE_SIZE_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"limiting buffer size to %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_hd_bus_id_map = common dso_local global i32 0, align 4
@greybus_bus_type = common dso_local global i32 0, align 4
@greybus_hd_type = common dso_local global i32 0, align 4
@bus_groups = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"greybus%d\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to create svc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gb_host_device* @gb_hd_create(%struct.gb_hd_driver* %0, %struct.device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.gb_host_device*, align 8
  %6 = alloca %struct.gb_hd_driver*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gb_host_device*, align 8
  %11 = alloca i32, align 4
  store %struct.gb_hd_driver* %0, %struct.gb_hd_driver** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %6, align 8
  %13 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %6, align 8
  %18 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16, %4
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.gb_host_device* @ERR_PTR(i32 %25)
  store %struct.gb_host_device* %26, %struct.gb_host_device** %5, align 8
  br label %161

27:                                               ; preds = %16
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @GB_OPERATION_MESSAGE_SIZE_MIN, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.gb_host_device* @ERR_PTR(i32 %35)
  store %struct.gb_host_device* %36, %struct.gb_host_device** %5, align 8
  br label %161

37:                                               ; preds = %27
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* @CPORT_ID_MAX, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40, %37
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.gb_host_device* @ERR_PTR(i32 %51)
  store %struct.gb_host_device* %52, %struct.gb_host_device** %5, align 8
  br label %161

53:                                               ; preds = %40
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @GB_OPERATION_MESSAGE_SIZE_MAX, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = load i64, i64* @GB_OPERATION_MESSAGE_SIZE_MAX, align 8
  %60 = call i32 @dev_warn(%struct.device* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* @GB_OPERATION_MESSAGE_SIZE_MAX, align 8
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %57, %53
  %63 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %6, align 8
  %64 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 88, %65
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.gb_host_device* @kzalloc(i64 %66, i32 %67)
  store %struct.gb_host_device* %68, %struct.gb_host_device** %10, align 8
  %69 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %70 = icmp ne %struct.gb_host_device* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.gb_host_device* @ERR_PTR(i32 %73)
  store %struct.gb_host_device* %74, %struct.gb_host_device** %5, align 8
  br label %161

75:                                               ; preds = %62
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i32 @ida_simple_get(i32* @gb_hd_bus_id_map, i32 1, i32 0, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %82 = call i32 @kfree(%struct.gb_host_device* %81)
  %83 = load i32, i32* %11, align 4
  %84 = call %struct.gb_host_device* @ERR_PTR(i32 %83)
  store %struct.gb_host_device* %84, %struct.gb_host_device** %5, align 8
  br label %161

85:                                               ; preds = %75
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %88 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %6, align 8
  %90 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %91 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %90, i32 0, i32 8
  store %struct.gb_hd_driver* %89, %struct.gb_hd_driver** %91, align 8
  %92 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %93 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %92, i32 0, i32 7
  %94 = call i32 @INIT_LIST_HEAD(i32* %93)
  %95 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %96 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %95, i32 0, i32 6
  %97 = call i32 @INIT_LIST_HEAD(i32* %96)
  %98 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %99 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %98, i32 0, i32 5
  %100 = call i32 @ida_init(i32* %99)
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %103 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %106 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = load %struct.device*, %struct.device** %7, align 8
  %108 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %109 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.device, %struct.device* %109, i32 0, i32 1
  store %struct.device* %107, %struct.device** %110, align 8
  %111 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %112 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.device, %struct.device* %112, i32 0, i32 4
  store i32* @greybus_bus_type, i32** %113, align 8
  %114 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %115 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.device, %struct.device* %115, i32 0, i32 3
  store i32* @greybus_hd_type, i32** %116, align 8
  %117 = load i32, i32* @bus_groups, align 4
  %118 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %119 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.device, %struct.device* %119, i32 0, i32 2
  store i32 %117, i32* %120, align 8
  %121 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %122 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.device, %struct.device* %122, i32 0, i32 1
  %124 = load %struct.device*, %struct.device** %123, align 8
  %125 = getelementptr inbounds %struct.device, %struct.device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %128 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.device, %struct.device* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %131 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %130, i32 0, i32 3
  %132 = call i32 @device_initialize(%struct.device* %131)
  %133 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %134 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %133, i32 0, i32 3
  %135 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %136 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @dev_set_name(%struct.device* %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %140 = call i32 @trace_gb_hd_create(%struct.gb_host_device* %139)
  %141 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %142 = call i32 @gb_svc_create(%struct.gb_host_device* %141)
  %143 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %144 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %146 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %85
  %150 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %151 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %150, i32 0, i32 3
  %152 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %153 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  %154 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %153, i32 0, i32 3
  %155 = call i32 @put_device(%struct.device* %154)
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  %158 = call %struct.gb_host_device* @ERR_PTR(i32 %157)
  store %struct.gb_host_device* %158, %struct.gb_host_device** %5, align 8
  br label %161

159:                                              ; preds = %85
  %160 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  store %struct.gb_host_device* %160, %struct.gb_host_device** %5, align 8
  br label %161

161:                                              ; preds = %159, %149, %80, %71, %46, %31, %21
  %162 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  ret %struct.gb_host_device* %162
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.gb_host_device* @ERR_PTR(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local %struct.gb_host_device* @kzalloc(i64, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.gb_host_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @trace_gb_hd_create(%struct.gb_host_device*) #1

declare dso_local i32 @gb_svc_create(%struct.gb_host_device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
