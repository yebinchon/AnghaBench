; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_connection_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_connection_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { i32, %struct.gb_connection* }
%struct.gb_connection = type { i32 }
%struct.gb_svc_conn_destroy_request = type { i8*, i8*, i8*, i8* }

@GB_SVC_TYPE_CONN_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to destroy connection (%u:%u %u:%u): %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_svc_connection_destroy(%struct.gb_svc* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.gb_svc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gb_svc_conn_destroy_request, align 8
  %12 = alloca %struct.gb_connection*, align 8
  %13 = alloca i32, align 4
  store %struct.gb_svc* %0, %struct.gb_svc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.gb_svc*, %struct.gb_svc** %6, align 8
  %15 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %14, i32 0, i32 1
  %16 = load %struct.gb_connection*, %struct.gb_connection** %15, align 8
  store %struct.gb_connection* %16, %struct.gb_connection** %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds %struct.gb_svc_conn_destroy_request, %struct.gb_svc_conn_destroy_request* %11, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.gb_svc_conn_destroy_request, %struct.gb_svc_conn_destroy_request* %11, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds %struct.gb_svc_conn_destroy_request, %struct.gb_svc_conn_destroy_request* %11, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = getelementptr inbounds %struct.gb_svc_conn_destroy_request, %struct.gb_svc_conn_destroy_request* %11, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load %struct.gb_connection*, %struct.gb_connection** %12, align 8
  %28 = load i32, i32* @GB_SVC_TYPE_CONN_DESTROY, align 4
  %29 = call i32 @gb_operation_sync(%struct.gb_connection* %27, i32 %28, %struct.gb_svc_conn_destroy_request* %11, i32 32, i32* null, i32 0)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %5
  %33 = load %struct.gb_svc*, %struct.gb_svc** %6, align 8
  %34 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %33, i32 0, i32 0
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36, i8* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %5
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_svc_conn_destroy_request*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
