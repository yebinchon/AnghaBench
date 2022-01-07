; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_message_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_message_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_host_device = type { i32 }
%struct.gb_message = type { i64, %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr* }
%struct.gb_operation_msg_hdr = type { i64, i64, i64, i32 }

@GB_REQUEST_TYPE_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_host_device*, %struct.gb_message*, i32, i64, i64)* @gb_operation_message_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_operation_message_init(%struct.gb_host_device* %0, %struct.gb_message* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.gb_host_device*, align 8
  %7 = alloca %struct.gb_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.gb_operation_msg_hdr*, align 8
  %12 = alloca i32, align 4
  store %struct.gb_host_device* %0, %struct.gb_host_device** %6, align 8
  store %struct.gb_message* %1, %struct.gb_message** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %14 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %13, i32 0, i32 3
  %15 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %14, align 8
  store %struct.gb_operation_msg_hdr* %15, %struct.gb_operation_msg_hdr** %11, align 8
  %16 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %11, align 8
  %17 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %18 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %17, i32 0, i32 2
  store %struct.gb_operation_msg_hdr* %16, %struct.gb_operation_msg_hdr** %18, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %11, align 8
  %23 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %22, i64 1
  br label %25

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi %struct.gb_operation_msg_hdr* [ %23, %21 ], [ null, %24 ]
  %27 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %28 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %27, i32 0, i32 1
  store %struct.gb_operation_msg_hdr* %26, %struct.gb_operation_msg_hdr** %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %31 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @GB_REQUEST_TYPE_INVALID, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %25
  %36 = load i64, i64* %9, align 8
  %37 = add i64 32, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @cpu_to_le16(i32 %39)
  %41 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %11, align 8
  %42 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %11, align 8
  %44 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %11, align 8
  %47 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %11, align 8
  %49 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %35, %25
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
