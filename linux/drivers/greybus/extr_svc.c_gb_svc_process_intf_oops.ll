; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_process_intf_oops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_process_intf_oops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_2__*, %struct.gb_connection* }
%struct.TYPE_2__ = type { %struct.gb_svc_intf_oops_request* }
%struct.gb_svc_intf_oops_request = type { i32, i32 }
%struct.gb_connection = type { i32 }
%struct.gb_svc = type { i32 }
%struct.gb_interface = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"unexpected interface-oops event %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Deactivating interface %u, interface oops reason = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_operation*)* @gb_svc_process_intf_oops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_svc_process_intf_oops(%struct.gb_operation* %0) #0 {
  %2 = alloca %struct.gb_operation*, align 8
  %3 = alloca %struct.gb_svc_intf_oops_request*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_svc*, align 8
  %6 = alloca %struct.gb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %2, align 8
  %9 = load %struct.gb_operation*, %struct.gb_operation** %2, align 8
  %10 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %9, i32 0, i32 1
  %11 = load %struct.gb_connection*, %struct.gb_connection** %10, align 8
  store %struct.gb_connection* %11, %struct.gb_connection** %4, align 8
  %12 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %13 = call %struct.gb_svc* @gb_connection_get_data(%struct.gb_connection* %12)
  store %struct.gb_svc* %13, %struct.gb_svc** %5, align 8
  %14 = load %struct.gb_operation*, %struct.gb_operation** %2, align 8
  %15 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.gb_svc_intf_oops_request*, %struct.gb_svc_intf_oops_request** %17, align 8
  store %struct.gb_svc_intf_oops_request* %18, %struct.gb_svc_intf_oops_request** %3, align 8
  %19 = load %struct.gb_svc_intf_oops_request*, %struct.gb_svc_intf_oops_request** %3, align 8
  %20 = getelementptr inbounds %struct.gb_svc_intf_oops_request, %struct.gb_svc_intf_oops_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.gb_svc_intf_oops_request*, %struct.gb_svc_intf_oops_request** %3, align 8
  %23 = getelementptr inbounds %struct.gb_svc_intf_oops_request, %struct.gb_svc_intf_oops_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.gb_interface* @gb_svc_interface_lookup(%struct.gb_svc* %25, i32 %26)
  store %struct.gb_interface* %27, %struct.gb_interface** %6, align 8
  %28 = load %struct.gb_interface*, %struct.gb_interface** %6, align 8
  %29 = icmp ne %struct.gb_interface* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %32 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %31, i32 0, i32 0
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %53

35:                                               ; preds = %1
  %36 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %37 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @dev_info(i32* %37, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.gb_interface*, %struct.gb_interface** %6, align 8
  %42 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.gb_interface*, %struct.gb_interface** %6, align 8
  %45 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.gb_interface*, %struct.gb_interface** %6, align 8
  %47 = call i32 @gb_interface_disable(%struct.gb_interface* %46)
  %48 = load %struct.gb_interface*, %struct.gb_interface** %6, align 8
  %49 = call i32 @gb_interface_deactivate(%struct.gb_interface* %48)
  %50 = load %struct.gb_interface*, %struct.gb_interface** %6, align 8
  %51 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  br label %53

53:                                               ; preds = %35, %30
  ret void
}

declare dso_local %struct.gb_svc* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local %struct.gb_interface* @gb_svc_interface_lookup(%struct.gb_svc*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_interface_disable(%struct.gb_interface*) #1

declare dso_local i32 @gb_interface_deactivate(%struct.gb_interface*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
