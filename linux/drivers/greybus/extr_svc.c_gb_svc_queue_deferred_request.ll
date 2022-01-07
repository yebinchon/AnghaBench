; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_queue_deferred_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_queue_deferred_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i32 }
%struct.gb_svc = type { i32 }
%struct.gb_svc_deferred_request = type { i32, %struct.gb_operation* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_svc_process_deferred_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_svc_queue_deferred_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_svc_queue_deferred_request(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_svc*, align 8
  %5 = alloca %struct.gb_svc_deferred_request*, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %6 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %7 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.gb_svc* @gb_connection_get_data(i32 %8)
  store %struct.gb_svc* %9, %struct.gb_svc** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gb_svc_deferred_request* @kmalloc(i32 16, i32 %10)
  store %struct.gb_svc_deferred_request* %11, %struct.gb_svc_deferred_request** %5, align 8
  %12 = load %struct.gb_svc_deferred_request*, %struct.gb_svc_deferred_request** %5, align 8
  %13 = icmp ne %struct.gb_svc_deferred_request* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %19 = call i32 @gb_operation_get(%struct.gb_operation* %18)
  %20 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %21 = load %struct.gb_svc_deferred_request*, %struct.gb_svc_deferred_request** %5, align 8
  %22 = getelementptr inbounds %struct.gb_svc_deferred_request, %struct.gb_svc_deferred_request* %21, i32 0, i32 1
  store %struct.gb_operation* %20, %struct.gb_operation** %22, align 8
  %23 = load %struct.gb_svc_deferred_request*, %struct.gb_svc_deferred_request** %5, align 8
  %24 = getelementptr inbounds %struct.gb_svc_deferred_request, %struct.gb_svc_deferred_request* %23, i32 0, i32 0
  %25 = load i32, i32* @gb_svc_process_deferred_request, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %28 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.gb_svc_deferred_request*, %struct.gb_svc_deferred_request** %5, align 8
  %31 = getelementptr inbounds %struct.gb_svc_deferred_request, %struct.gb_svc_deferred_request* %30, i32 0, i32 0
  %32 = call i32 @queue_work(i32 %29, i32* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %17, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.gb_svc* @gb_connection_get_data(i32) #1

declare dso_local %struct.gb_svc_deferred_request* @kmalloc(i32, i32) #1

declare dso_local i32 @gb_operation_get(%struct.gb_operation*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
