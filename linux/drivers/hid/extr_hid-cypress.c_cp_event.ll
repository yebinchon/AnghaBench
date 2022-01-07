; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cypress.c_cp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cypress.c_cp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.hid_usage = type { i32, i64, i32 }

@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@CP_2WHEEL_MOUSE_HACK = common dso_local global i64 0, align 8
@CP_2WHEEL_MOUSE_HACK_ON = common dso_local global i64 0, align 8
@REL_WHEEL = common dso_local global i64 0, align 8
@REL_HWHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i64)* @cp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.input_dev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = call i64 @hid_get_drvdata(%struct.hid_device* %12)
  store i64 %13, i64* %10, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %22 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %27 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @CP_2WHEEL_MOUSE_HACK, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %25, %20, %4
  store i32 0, i32* %5, align 4
  br label %83

36:                                               ; preds = %30
  %37 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %38 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 589829
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* @CP_2WHEEL_MOUSE_HACK_ON, align 8
  %46 = load i64, i64* %10, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %10, align 8
  br label %53

48:                                               ; preds = %41
  %49 = load i64, i64* @CP_2WHEEL_MOUSE_HACK_ON, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %10, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @hid_set_drvdata(%struct.hid_device* %54, i8* %56)
  store i32 1, i32* %5, align 4
  br label %83

58:                                               ; preds = %36
  %59 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %60 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @REL_WHEEL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @CP_2WHEEL_MOUSE_HACK_ON, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %71 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load %struct.input_dev*, %struct.input_dev** %73, align 8
  store %struct.input_dev* %74, %struct.input_dev** %11, align 8
  %75 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %76 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %77 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @REL_HWHEEL, align 4
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @input_event(%struct.input_dev* %75, i32 %78, i32 %79, i64 %80)
  store i32 1, i32* %5, align 4
  br label %83

82:                                               ; preds = %64, %58
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %69, %53, %35
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, i8*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
