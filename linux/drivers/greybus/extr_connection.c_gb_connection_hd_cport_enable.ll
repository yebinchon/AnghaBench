; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_hd_cport_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_hd_cport_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32, i32, i32, %struct.gb_host_device* }
%struct.gb_host_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.gb_host_device*, i32, i32)* }

@.str = private unnamed_addr constant [37 x i8] c"%s: failed to enable host cport: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_connection*)* @gb_connection_hd_cport_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_connection_hd_cport_enable(%struct.gb_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_connection*, align 8
  %4 = alloca %struct.gb_host_device*, align 8
  %5 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %3, align 8
  %6 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %7 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %6, i32 0, i32 3
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %7, align 8
  store %struct.gb_host_device* %8, %struct.gb_host_device** %4, align 8
  %9 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %10 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.gb_host_device*, i32, i32)*, i32 (%struct.gb_host_device*, i32, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.gb_host_device*, i32, i32)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %18 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.gb_host_device*, i32, i32)*, i32 (%struct.gb_host_device*, i32, i32)** %20, align 8
  %22 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %23 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %24 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %27 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 %21(%struct.gb_host_device* %22, i32 %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %16
  %33 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %34 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %33, i32 0, i32 0
  %35 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %36 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %32, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
