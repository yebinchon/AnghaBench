; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_latency_tag_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_latency_tag_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32, %struct.gb_host_device*, i32 }
%struct.gb_host_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.gb_host_device*, i32)* }

@.str = private unnamed_addr constant [39 x i8] c"%s: failed to disable latency tag: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_connection_latency_tag_disable(%struct.gb_connection* %0) #0 {
  %2 = alloca %struct.gb_connection*, align 8
  %3 = alloca %struct.gb_host_device*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %2, align 8
  %5 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %6 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %5, i32 0, i32 1
  %7 = load %struct.gb_host_device*, %struct.gb_host_device** %6, align 8
  store %struct.gb_host_device* %7, %struct.gb_host_device** %3, align 8
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %9 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.gb_host_device*, i32)*, i32 (%struct.gb_host_device*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.gb_host_device*, i32)* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %17 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.gb_host_device*, i32)*, i32 (%struct.gb_host_device*, i32)** %19, align 8
  %21 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %22 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %23 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %20(%struct.gb_host_device* %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %15
  %29 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %30 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %29, i32 0, i32 1
  %31 = load %struct.gb_host_device*, %struct.gb_host_device** %30, align 8
  %32 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %31, i32 0, i32 0
  %33 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %34 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %14, %28, %15
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
