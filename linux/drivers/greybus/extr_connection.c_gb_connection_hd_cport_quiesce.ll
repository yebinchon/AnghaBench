; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_hd_cport_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_hd_cport_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32, i32, i64, %struct.gb_host_device* }
%struct.gb_host_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.gb_host_device*, i32, i64, i32)* }

@GB_CONNECTION_CPORT_QUIESCE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: failed to quiesce host cport: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_connection*)* @gb_connection_hd_cport_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_connection_hd_cport_quiesce(%struct.gb_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_connection*, align 8
  %4 = alloca %struct.gb_host_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %3, align 8
  %7 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %8 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %7, i32 0, i32 3
  %9 = load %struct.gb_host_device*, %struct.gb_host_device** %8, align 8
  store %struct.gb_host_device* %9, %struct.gb_host_device** %4, align 8
  %10 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %11 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.gb_host_device*, i32, i64, i32)*, i32 (%struct.gb_host_device*, i32, i64, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.gb_host_device*, i32, i64, i32)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

17:                                               ; preds = %1
  store i64 8, i64* %5, align 8
  %18 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %19 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 4
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %27 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.gb_host_device*, i32, i64, i32)*, i32 (%struct.gb_host_device*, i32, i64, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.gb_host_device*, i32, i64, i32)* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %58

33:                                               ; preds = %25
  %34 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %35 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.gb_host_device*, i32, i64, i32)*, i32 (%struct.gb_host_device*, i32, i64, i32)** %37, align 8
  %39 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %40 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %41 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @GB_CONNECTION_CPORT_QUIESCE_TIMEOUT, align 4
  %45 = call i32 %38(%struct.gb_host_device* %39, i32 %42, i64 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %33
  %49 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %50 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %49, i32 0, i32 0
  %51 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %52 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %48, %32, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
