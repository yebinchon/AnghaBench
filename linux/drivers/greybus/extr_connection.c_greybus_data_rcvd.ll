; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_greybus_data_rcvd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_greybus_data_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_host_device = type { i32 }
%struct.gb_connection = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"nonexistent connection (%zu bytes dropped)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @greybus_data_rcvd(%struct.gb_host_device* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.gb_host_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gb_connection*, align 8
  store %struct.gb_host_device* %0, %struct.gb_host_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %11 = call i32 @trace_gb_hd_in(%struct.gb_host_device* %10)
  %12 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.gb_connection* @gb_connection_hd_find(%struct.gb_host_device* %12, i32 %13)
  store %struct.gb_connection* %14, %struct.gb_connection** %9, align 8
  %15 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %16 = icmp ne %struct.gb_connection* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.gb_host_device*, %struct.gb_host_device** %5, align 8
  %19 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %29

22:                                               ; preds = %4
  %23 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @gb_connection_recv(%struct.gb_connection* %23, i32* %24, i64 %25)
  %27 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %28 = call i32 @gb_connection_put(%struct.gb_connection* %27)
  br label %29

29:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @trace_gb_hd_in(%struct.gb_host_device*) #1

declare dso_local %struct.gb_connection* @gb_connection_hd_find(%struct.gb_host_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @gb_connection_recv(%struct.gb_connection*, i32*, i64) #1

declare dso_local i32 @gb_connection_put(%struct.gb_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
