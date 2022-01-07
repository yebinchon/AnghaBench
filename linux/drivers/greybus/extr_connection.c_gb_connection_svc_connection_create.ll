; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_svc_connection_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_svc_connection_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32, %struct.gb_host_device*, i32, i32, %struct.gb_interface* }
%struct.gb_host_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gb_interface = type { i32 }

@GB_SVC_CPORT_FLAG_CSV_N = common dso_local global i32 0, align 4
@GB_SVC_CPORT_FLAG_CSD_N = common dso_local global i32 0, align 4
@GB_SVC_CPORT_FLAG_E2EFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: failed to create svc connection: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_connection*)* @gb_connection_svc_connection_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_connection_svc_connection_create(%struct.gb_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_connection*, align 8
  %4 = alloca %struct.gb_host_device*, align 8
  %5 = alloca %struct.gb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %3, align 8
  %8 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %9 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %8, i32 0, i32 1
  %10 = load %struct.gb_host_device*, %struct.gb_host_device** %9, align 8
  store %struct.gb_host_device* %10, %struct.gb_host_device** %4, align 8
  %11 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %12 = call i64 @gb_connection_is_static(%struct.gb_connection* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

15:                                               ; preds = %1
  %16 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %17 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %16, i32 0, i32 4
  %18 = load %struct.gb_interface*, %struct.gb_interface** %17, align 8
  store %struct.gb_interface* %18, %struct.gb_interface** %5, align 8
  %19 = load i32, i32* @GB_SVC_CPORT_FLAG_CSV_N, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %21 = call i64 @gb_connection_flow_control_disabled(%struct.gb_connection* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @GB_SVC_CPORT_FLAG_CSD_N, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %38

27:                                               ; preds = %15
  %28 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %29 = call i64 @gb_connection_e2efc_enabled(%struct.gb_connection* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @GB_SVC_CPORT_FLAG_CSD_N, align 4
  %33 = load i32, i32* @GB_SVC_CPORT_FLAG_E2EFC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %31, %27
  br label %38

38:                                               ; preds = %37, %23
  %39 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %40 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %43 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %48 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.gb_interface*, %struct.gb_interface** %5, align 8
  %51 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %54 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @gb_svc_connection_create(%struct.TYPE_2__* %41, i32 %46, i32 %49, i32 %52, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %38
  %61 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %62 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %61, i32 0, i32 1
  %63 = load %struct.gb_host_device*, %struct.gb_host_device** %62, align 8
  %64 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %63, i32 0, i32 0
  %65 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %66 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %60, %14
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @gb_connection_is_static(%struct.gb_connection*) #1

declare dso_local i64 @gb_connection_flow_control_disabled(%struct.gb_connection*) #1

declare dso_local i64 @gb_connection_e2efc_enabled(%struct.gb_connection*) #1

declare dso_local i32 @gb_svc_connection_create(%struct.TYPE_2__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
