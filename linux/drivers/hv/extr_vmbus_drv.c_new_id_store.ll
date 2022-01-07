; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_new_id_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_new_id_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.hv_driver = type { i32 }

@EEXIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @new_id_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @new_id_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hv_driver*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %12 = call %struct.hv_driver* @drv_to_hv_drv(%struct.device_driver* %11)
  store %struct.hv_driver* %12, %struct.hv_driver** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @guid_parse(i8* %13, i32* %9)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %10, align 8
  store i64 %18, i64* %4, align 8
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.hv_driver*, %struct.hv_driver** %8, align 8
  %21 = call i64 @hv_vmbus_dynid_match(%struct.hv_driver* %20, i32* %9)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* @EEXIST, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %4, align 8
  br label %35

26:                                               ; preds = %19
  %27 = load %struct.hv_driver*, %struct.hv_driver** %8, align 8
  %28 = call i64 @vmbus_add_dynid(%struct.hv_driver* %27, i32* %9)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %4, align 8
  br label %35

33:                                               ; preds = %26
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %33, %31, %23, %17
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local %struct.hv_driver* @drv_to_hv_drv(%struct.device_driver*) #1

declare dso_local i64 @guid_parse(i8*, i32*) #1

declare dso_local i64 @hv_vmbus_dynid_match(%struct.hv_driver*, i32*) #1

declare dso_local i64 @vmbus_add_dynid(%struct.hv_driver*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
