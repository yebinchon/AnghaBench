; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_route_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_route_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { i32, i32 }
%struct.gb_svc_route_destroy_request = type { i8*, i8* }

@GB_SVC_TYPE_ROUTE_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to destroy route (%u %u): %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_svc_route_destroy(%struct.gb_svc* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.gb_svc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gb_svc_route_destroy_request, align 8
  %8 = alloca i32, align 4
  store %struct.gb_svc* %0, %struct.gb_svc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds %struct.gb_svc_route_destroy_request, %struct.gb_svc_route_destroy_request* %7, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.gb_svc_route_destroy_request, %struct.gb_svc_route_destroy_request* %7, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %14 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GB_SVC_TYPE_ROUTE_DESTROY, align 4
  %17 = call i32 @gb_operation_sync(i32 %15, i32 %16, %struct.gb_svc_route_destroy_request* %7, i32 16, i32* null, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %22 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %21, i32 0, i32 0
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %3
  ret void
}

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_svc_route_destroy_request*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
