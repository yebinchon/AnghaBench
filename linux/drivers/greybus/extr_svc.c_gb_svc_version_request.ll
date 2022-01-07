; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_version_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_version_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.gb_connection* }
%struct.TYPE_4__ = type { %struct.gb_svc_version_response* }
%struct.gb_svc_version_response = type { i64, i32 }
%struct.TYPE_3__ = type { i32, %struct.gb_svc_version_request* }
%struct.gb_svc_version_request = type { i64, i32 }
%struct.gb_connection = type { i32 }
%struct.gb_svc = type { i64, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"short version request (%zu < %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GB_SVC_VERSION_MAJOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"unsupported major version (%u > %u)\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_svc_version_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_svc_version_request(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_svc*, align 8
  %6 = alloca %struct.gb_svc_version_request*, align 8
  %7 = alloca %struct.gb_svc_version_response*, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %8 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %9 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %8, i32 0, i32 2
  %10 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  store %struct.gb_connection* %10, %struct.gb_connection** %4, align 8
  %11 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %12 = call %struct.gb_svc* @gb_connection_get_data(%struct.gb_connection* %11)
  store %struct.gb_svc* %12, %struct.gb_svc** %5, align 8
  %13 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %14 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 16
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %22 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %21, i32 0, i32 2
  %23 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %24 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27, i32 16)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %86

31:                                               ; preds = %1
  %32 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %33 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.gb_svc_version_request*, %struct.gb_svc_version_request** %35, align 8
  store %struct.gb_svc_version_request* %36, %struct.gb_svc_version_request** %6, align 8
  %37 = load %struct.gb_svc_version_request*, %struct.gb_svc_version_request** %6, align 8
  %38 = getelementptr inbounds %struct.gb_svc_version_request, %struct.gb_svc_version_request* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @GB_SVC_VERSION_MAJOR, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %44 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %43, i32 0, i32 2
  %45 = load %struct.gb_svc_version_request*, %struct.gb_svc_version_request** %6, align 8
  %46 = getelementptr inbounds %struct.gb_svc_version_request, %struct.gb_svc_version_request* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GB_SVC_VERSION_MAJOR, align 8
  %49 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %48)
  %50 = load i32, i32* @ENOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %86

52:                                               ; preds = %31
  %53 = load %struct.gb_svc_version_request*, %struct.gb_svc_version_request** %6, align 8
  %54 = getelementptr inbounds %struct.gb_svc_version_request, %struct.gb_svc_version_request* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %57 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.gb_svc_version_request*, %struct.gb_svc_version_request** %6, align 8
  %59 = getelementptr inbounds %struct.gb_svc_version_request, %struct.gb_svc_version_request* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %62 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32 @gb_operation_response_alloc(%struct.gb_operation* %63, i32 16, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %52
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %86

70:                                               ; preds = %52
  %71 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %72 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.gb_svc_version_response*, %struct.gb_svc_version_response** %74, align 8
  store %struct.gb_svc_version_response* %75, %struct.gb_svc_version_response** %7, align 8
  %76 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %77 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.gb_svc_version_response*, %struct.gb_svc_version_response** %7, align 8
  %80 = getelementptr inbounds %struct.gb_svc_version_response, %struct.gb_svc_version_response* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %82 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.gb_svc_version_response*, %struct.gb_svc_version_response** %7, align 8
  %85 = getelementptr inbounds %struct.gb_svc_version_response, %struct.gb_svc_version_response* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %70, %67, %42, %20
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.gb_svc* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64) #1

declare dso_local i32 @gb_operation_response_alloc(%struct.gb_operation*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
