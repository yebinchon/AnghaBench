; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_route_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_route_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gb_svc* }
%struct.gb_svc = type { i32, i32 }

@GB_SVC_DEVICE_ID_MIN = common dso_local global i32 0, align 4
@GB_SVC_DEVICE_ID_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to allocate device id: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to set device id %u: %d\0A\00", align 1
@GB_SVC_DEVICE_ID_AP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to create route: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_interface*)* @gb_interface_route_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_interface_route_create(%struct.gb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_interface*, align 8
  %4 = alloca %struct.gb_svc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gb_interface* %0, %struct.gb_interface** %3, align 8
  %8 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %9 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.gb_svc*, %struct.gb_svc** %11, align 8
  store %struct.gb_svc* %12, %struct.gb_svc** %4, align 8
  %13 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %14 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %17 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %16, i32 0, i32 0
  %18 = load i32, i32* @GB_SVC_DEVICE_ID_MIN, align 4
  %19 = load i64, i64* @GB_SVC_DEVICE_ID_MAX, align 8
  %20 = add nsw i64 %19, 1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @ida_simple_get(i32* %17, i32 %18, i64 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %27 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %26, i32 0, i32 2
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %72

31:                                               ; preds = %1
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @gb_svc_intf_device_id(%struct.gb_svc* %33, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %41 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %40, i32 0, i32 2
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  br label %66

45:                                               ; preds = %31
  %46 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %47 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %48 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GB_SVC_DEVICE_ID_AP, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @gb_svc_route_create(%struct.gb_svc* %46, i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %58 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %57, i32 0, i32 2
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %65

61:                                               ; preds = %45
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %64 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %2, align 4
  br label %72

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %39
  %67 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %68 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %67, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ida_simple_remove(i32* %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %66, %61, %25
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @ida_simple_get(i32*, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @gb_svc_intf_device_id(%struct.gb_svc*, i32, i32) #1

declare dso_local i32 @gb_svc_route_create(%struct.gb_svc*, i32, i32, i32, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
