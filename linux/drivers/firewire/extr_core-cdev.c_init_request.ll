; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fw_cdev_send_request = type { i32, i32, i32, i32, i64, i32 }
%struct.outbound_transaction_event = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.client* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@TCODE_STREAM_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@release_transaction = common dso_local global i32 0, align 4
@complete_transaction = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %struct.fw_cdev_send_request*, i32, i32)* @init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_request(%struct.client* %0, %struct.fw_cdev_send_request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.client*, align 8
  %7 = alloca %struct.fw_cdev_send_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.outbound_transaction_event*, align 8
  %11 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %6, align 8
  store %struct.fw_cdev_send_request* %1, %struct.fw_cdev_send_request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %13 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TCODE_STREAM_DATA, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %4
  %18 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %19 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 4096
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %24 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 512, %26
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %17
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %146

32:                                               ; preds = %22, %4
  %33 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %34 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %40 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %146

46:                                               ; preds = %38, %32
  %47 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %48 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add i64 32, %50
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.outbound_transaction_event* @kmalloc(i32 %52, i32 %53)
  store %struct.outbound_transaction_event* %54, %struct.outbound_transaction_event** %10, align 8
  %55 = load %struct.outbound_transaction_event*, %struct.outbound_transaction_event** %10, align 8
  %56 = icmp eq %struct.outbound_transaction_event* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %146

60:                                               ; preds = %46
  %61 = load %struct.client*, %struct.client** %6, align 8
  %62 = load %struct.outbound_transaction_event*, %struct.outbound_transaction_event** %10, align 8
  %63 = getelementptr inbounds %struct.outbound_transaction_event, %struct.outbound_transaction_event* %62, i32 0, i32 2
  store %struct.client* %61, %struct.client** %63, align 8
  %64 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %65 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.outbound_transaction_event*, %struct.outbound_transaction_event** %10, align 8
  %68 = getelementptr inbounds %struct.outbound_transaction_event, %struct.outbound_transaction_event* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %71 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.outbound_transaction_event*, %struct.outbound_transaction_event** %10, align 8
  %74 = getelementptr inbounds %struct.outbound_transaction_event, %struct.outbound_transaction_event* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 8
  %76 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %77 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %60
  %81 = load %struct.outbound_transaction_event*, %struct.outbound_transaction_event** %10, align 8
  %82 = getelementptr inbounds %struct.outbound_transaction_event, %struct.outbound_transaction_event* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %86 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @u64_to_uptr(i64 %87)
  %89 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %90 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @copy_from_user(i32 %84, i32 %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load i32, i32* @EFAULT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %11, align 4
  br label %142

97:                                               ; preds = %80, %60
  %98 = load i32, i32* @release_transaction, align 4
  %99 = load %struct.outbound_transaction_event*, %struct.outbound_transaction_event** %10, align 8
  %100 = getelementptr inbounds %struct.outbound_transaction_event, %struct.outbound_transaction_event* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 4
  %103 = load %struct.client*, %struct.client** %6, align 8
  %104 = load %struct.outbound_transaction_event*, %struct.outbound_transaction_event** %10, align 8
  %105 = getelementptr inbounds %struct.outbound_transaction_event, %struct.outbound_transaction_event* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i32 @add_client_resource(%struct.client* %103, %struct.TYPE_8__* %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  br label %142

112:                                              ; preds = %97
  %113 = load %struct.client*, %struct.client** %6, align 8
  %114 = getelementptr inbounds %struct.client, %struct.client* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.outbound_transaction_event*, %struct.outbound_transaction_event** %10, align 8
  %119 = getelementptr inbounds %struct.outbound_transaction_event, %struct.outbound_transaction_event* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %122 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %126 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %130 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.outbound_transaction_event*, %struct.outbound_transaction_event** %10, align 8
  %133 = getelementptr inbounds %struct.outbound_transaction_event, %struct.outbound_transaction_event* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %7, align 8
  %137 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @complete_transaction, align 4
  %140 = load %struct.outbound_transaction_event*, %struct.outbound_transaction_event** %10, align 8
  %141 = call i32 @fw_send_request(i32 %117, i32* %120, i32 %123, i32 %124, i32 %127, i32 %128, i32 %131, i32 %135, i32 %138, i32 %139, %struct.outbound_transaction_event* %140)
  store i32 0, i32* %5, align 4
  br label %146

142:                                              ; preds = %111, %94
  %143 = load %struct.outbound_transaction_event*, %struct.outbound_transaction_event** %10, align 8
  %144 = call i32 @kfree(%struct.outbound_transaction_event* %143)
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %142, %112, %57, %43, %29
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local %struct.outbound_transaction_event* @kmalloc(i32, i32) #1

declare dso_local i64 @copy_from_user(i32, i32, i32) #1

declare dso_local i32 @u64_to_uptr(i64) #1

declare dso_local i32 @add_client_resource(%struct.client*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @fw_send_request(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.outbound_transaction_event*) #1

declare dso_local i32 @kfree(%struct.outbound_transaction_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
