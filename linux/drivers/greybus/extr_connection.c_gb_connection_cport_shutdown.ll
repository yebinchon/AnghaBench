; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_cport_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_cport_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32, i32, %struct.gb_host_device* }
%struct.gb_host_device = type { i32, %struct.gb_hd_driver* }
%struct.gb_hd_driver = type { i32 (%struct.gb_host_device*, i32, i32, i32)* }

@GB_OPERATION_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s: failed to send cport shutdown (phase %d): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_connection*, i32)* @gb_connection_cport_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_connection_cport_shutdown(%struct.gb_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_host_device*, align 8
  %7 = alloca %struct.gb_hd_driver*, align 8
  %8 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %10 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 2
  %11 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  store %struct.gb_host_device* %11, %struct.gb_host_device** %6, align 8
  %12 = load %struct.gb_host_device*, %struct.gb_host_device** %6, align 8
  %13 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %12, i32 0, i32 1
  %14 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %13, align 8
  store %struct.gb_hd_driver* %14, %struct.gb_hd_driver** %7, align 8
  %15 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %16 = call i64 @gb_connection_is_static(%struct.gb_connection* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %21 = call i64 @gb_connection_is_offloaded(%struct.gb_connection* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %7, align 8
  %25 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %24, i32 0, i32 0
  %26 = load i32 (%struct.gb_host_device*, i32, i32, i32)*, i32 (%struct.gb_host_device*, i32, i32, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.gb_host_device*, i32, i32, i32)* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %58

29:                                               ; preds = %23
  %30 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %7, align 8
  %31 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %30, i32 0, i32 0
  %32 = load i32 (%struct.gb_host_device*, i32, i32, i32)*, i32 (%struct.gb_host_device*, i32, i32, i32)** %31, align 8
  %33 = load %struct.gb_host_device*, %struct.gb_host_device** %6, align 8
  %34 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %35 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @GB_OPERATION_TIMEOUT_DEFAULT, align 4
  %39 = call i32 %32(%struct.gb_host_device* %33, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %44

40:                                               ; preds = %19
  %41 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @gb_connection_shutdown_operation(%struct.gb_connection* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %29
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.gb_host_device*, %struct.gb_host_device** %6, align 8
  %49 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %48, i32 0, i32 0
  %50 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %51 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %47, %28, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @gb_connection_is_static(%struct.gb_connection*) #1

declare dso_local i64 @gb_connection_is_offloaded(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_shutdown_operation(%struct.gb_connection*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
