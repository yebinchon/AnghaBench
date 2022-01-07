; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_hello.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_2__*, %struct.gb_connection* }
%struct.TYPE_2__ = type { i32, %struct.gb_svc_hello_request* }
%struct.gb_svc_hello_request = type { i32, i32 }
%struct.gb_connection = type { i32 }
%struct.gb_svc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"short hello request (%zu < %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to register svc device: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to create watchdog: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_svc_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_svc_hello(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_svc*, align 8
  %6 = alloca %struct.gb_svc_hello_request*, align 8
  %7 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %8 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %9 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %8, i32 0, i32 1
  %10 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  store %struct.gb_connection* %10, %struct.gb_connection** %4, align 8
  %11 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %12 = call %struct.gb_svc* @gb_connection_get_data(%struct.gb_connection* %11)
  store %struct.gb_svc* %12, %struct.gb_svc** %5, align 8
  %13 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %14 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 8
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %22 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %21, i32 0, i32 0
  %23 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %24 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27, i32 8)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %81

31:                                               ; preds = %1
  %32 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %33 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.gb_svc_hello_request*, %struct.gb_svc_hello_request** %35, align 8
  store %struct.gb_svc_hello_request* %36, %struct.gb_svc_hello_request** %6, align 8
  %37 = load %struct.gb_svc_hello_request*, %struct.gb_svc_hello_request** %6, align 8
  %38 = getelementptr inbounds %struct.gb_svc_hello_request, %struct.gb_svc_hello_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %42 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.gb_svc_hello_request*, %struct.gb_svc_hello_request** %6, align 8
  %44 = getelementptr inbounds %struct.gb_svc_hello_request, %struct.gb_svc_hello_request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %47 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %49 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %48, i32 0, i32 0
  %50 = call i32 @device_add(i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %31
  %54 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %55 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %81

59:                                               ; preds = %31
  %60 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %61 = call i32 @gb_svc_watchdog_create(%struct.gb_svc* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %66 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %65, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %74

69:                                               ; preds = %59
  %70 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %71 = call i32 @gb_svc_debugfs_init(%struct.gb_svc* %70)
  %72 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %73 = call i32 @gb_svc_queue_deferred_request(%struct.gb_operation* %72)
  store i32 %73, i32* %2, align 4
  br label %81

74:                                               ; preds = %64
  %75 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %76 = call i32 @gb_svc_watchdog_destroy(%struct.gb_svc* %75)
  %77 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %78 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %77, i32 0, i32 0
  %79 = call i32 @device_del(i32* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %74, %69, %53, %20
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.gb_svc* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gb_svc_watchdog_create(%struct.gb_svc*) #1

declare dso_local i32 @gb_svc_debugfs_init(%struct.gb_svc*) #1

declare dso_local i32 @gb_svc_queue_deferred_request(%struct.gb_operation*) #1

declare dso_local i32 @gb_svc_watchdog_destroy(%struct.gb_svc*) #1

declare dso_local i32 @device_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
