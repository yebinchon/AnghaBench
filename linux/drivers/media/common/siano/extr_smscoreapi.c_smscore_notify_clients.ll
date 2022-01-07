; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_notify_clients.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_notify_clients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.smscore_client_t = type { i32, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smscore_device_t*)* @smscore_notify_clients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smscore_notify_clients(%struct.smscore_device_t* %0) #0 {
  %2 = alloca %struct.smscore_device_t*, align 8
  %3 = alloca %struct.smscore_client_t*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %6 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %5, i32 0, i32 0
  %7 = call i32 @list_empty(%struct.TYPE_2__* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %12 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smscore_client_t*
  store %struct.smscore_client_t* %15, %struct.smscore_client_t** %3, align 8
  %16 = load %struct.smscore_client_t*, %struct.smscore_client_t** %3, align 8
  %17 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %16, i32 0, i32 1
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.smscore_client_t*, %struct.smscore_client_t** %3, align 8
  %20 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %18(i32 %21)
  br label %4

23:                                               ; preds = %4
  ret void
}

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
