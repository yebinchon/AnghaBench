; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_is_protocol_implemented.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_is_protocol_implemented.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_info = type { i64* }

@MAX_PROTOCOLS_IMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i64)* @scmi_is_protocol_implemented to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_is_protocol_implemented(%struct.scmi_handle* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scmi_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %9 = call %struct.scmi_info* @handle_to_scmi_info(%struct.scmi_handle* %8)
  store %struct.scmi_info* %9, %struct.scmi_info** %7, align 8
  %10 = load %struct.scmi_info*, %struct.scmi_info** %7, align 8
  %11 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MAX_PROTOCOLS_IMP, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.scmi_info*, %struct.scmi_info** %7, align 8
  %22 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %36

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %16

35:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30, %14
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.scmi_info* @handle_to_scmi_info(%struct.scmi_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
