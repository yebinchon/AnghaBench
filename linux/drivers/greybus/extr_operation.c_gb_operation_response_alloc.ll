; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_response_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_response_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i32, %struct.gb_message*, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.gb_message = type { %struct.TYPE_5__*, %struct.gb_operation* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.gb_operation_msg_hdr* }
%struct.gb_operation_msg_hdr = type { i32 }
%struct.TYPE_6__ = type { %struct.gb_host_device* }
%struct.gb_host_device = type { i32 }

@GB_MESSAGE_TYPE_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_operation_response_alloc(%struct.gb_operation* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_operation*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gb_host_device*, align 8
  %9 = alloca %struct.gb_operation_msg_hdr*, align 8
  %10 = alloca %struct.gb_message*, align 8
  %11 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gb_operation*, %struct.gb_operation** %5, align 8
  %13 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.gb_host_device*, %struct.gb_host_device** %15, align 8
  store %struct.gb_host_device* %16, %struct.gb_host_device** %8, align 8
  %17 = load %struct.gb_operation*, %struct.gb_operation** %5, align 8
  %18 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GB_MESSAGE_TYPE_RESPONSE, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.gb_host_device*, %struct.gb_host_device** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.gb_message* @gb_operation_message_alloc(%struct.gb_host_device* %22, i32 %23, i64 %24, i32 %25)
  store %struct.gb_message* %26, %struct.gb_message** %10, align 8
  %27 = load %struct.gb_message*, %struct.gb_message** %10, align 8
  %28 = icmp ne %struct.gb_message* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

30:                                               ; preds = %3
  %31 = load %struct.gb_operation*, %struct.gb_operation** %5, align 8
  %32 = load %struct.gb_message*, %struct.gb_message** %10, align 8
  %33 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %32, i32 0, i32 1
  store %struct.gb_operation* %31, %struct.gb_operation** %33, align 8
  %34 = load %struct.gb_operation*, %struct.gb_operation** %5, align 8
  %35 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %37, align 8
  store %struct.gb_operation_msg_hdr* %38, %struct.gb_operation_msg_hdr** %9, align 8
  %39 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %9, align 8
  %40 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.gb_message*, %struct.gb_message** %10, align 8
  %43 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.gb_message*, %struct.gb_message** %10, align 8
  %47 = load %struct.gb_operation*, %struct.gb_operation** %5, align 8
  %48 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %47, i32 0, i32 1
  store %struct.gb_message* %46, %struct.gb_message** %48, align 8
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %30, %29
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.gb_message* @gb_operation_message_alloc(%struct.gb_host_device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
