; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp10_wheel_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp10_wheel_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REPORT_ID_HIDPP_SHORT = common dso_local global i64 0, align 8
@HIDPP_SUB_ID_ROLLER = common dso_local global i64 0, align 8
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_WHEEL_HI_RES = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL_HI_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*, i64*, i32)* @hidpp10_wheel_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp10_wheel_raw_event(%struct.hidpp_device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hidpp_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %11 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %73

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 7
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %73

21:                                               ; preds = %17
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REPORT_ID_HIDPP_SHORT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i64*, i64** %6, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HIDPP_SUB_ID_ROLLER, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21
  store i32 0, i32* %4, align 4
  br label %73

34:                                               ; preds = %27
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 3
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i64*, i64** %6, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 4
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %44 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @REL_WHEEL, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @input_report_rel(i32 %45, i32 %46, i32 %47)
  %49 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %50 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @REL_WHEEL_HI_RES, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %53, 120
  %55 = call i32 @input_report_rel(i32 %51, i32 %52, i32 %54)
  %56 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %57 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @REL_HWHEEL, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @input_report_rel(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %63 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @REL_HWHEEL_HI_RES, align 4
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %66, 120
  %68 = call i32 @input_report_rel(i32 %64, i32 %65, i32 %67)
  %69 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %70 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @input_sync(i32 %71)
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %34, %33, %20, %14
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @input_report_rel(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
