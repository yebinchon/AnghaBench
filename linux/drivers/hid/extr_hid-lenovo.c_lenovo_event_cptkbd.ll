; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_event_cptkbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_event_cptkbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_usage = type { i64, i64 }
%struct.lenovo_drvdata_cptkbd = type { i32 }

@EV_REL = common dso_local global i64 0, align 8
@REL_WHEEL = common dso_local global i64 0, align 8
@REL_HWHEEL = common dso_local global i64 0, align 8
@EV_KEY = common dso_local global i64 0, align 8
@BTN_MIDDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @lenovo_event_cptkbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lenovo_event_cptkbd(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lenovo_drvdata_cptkbd*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %12 = call %struct.lenovo_drvdata_cptkbd* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.lenovo_drvdata_cptkbd* %12, %struct.lenovo_drvdata_cptkbd** %10, align 8
  %13 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %14 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EV_REL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %20 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @REL_WHEEL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %26 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @REL_HWHEEL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %18
  %31 = load %struct.lenovo_drvdata_cptkbd*, %struct.lenovo_drvdata_cptkbd** %10, align 8
  %32 = getelementptr inbounds %struct.lenovo_drvdata_cptkbd, %struct.lenovo_drvdata_cptkbd* %31, i32 0, i32 0
  store i32 2, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %94

33:                                               ; preds = %24, %4
  %34 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %35 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EV_KEY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %93

39:                                               ; preds = %33
  %40 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %41 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BTN_MIDDLE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %93

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.lenovo_drvdata_cptkbd*, %struct.lenovo_drvdata_cptkbd** %10, align 8
  %50 = getelementptr inbounds %struct.lenovo_drvdata_cptkbd, %struct.lenovo_drvdata_cptkbd* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %92

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %51
  %55 = load %struct.lenovo_drvdata_cptkbd*, %struct.lenovo_drvdata_cptkbd** %10, align 8
  %56 = getelementptr inbounds %struct.lenovo_drvdata_cptkbd, %struct.lenovo_drvdata_cptkbd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %88

59:                                               ; preds = %54
  %60 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %61 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* @EV_KEY, align 8
  %66 = load i64, i64* @BTN_MIDDLE, align 8
  %67 = call i32 @input_event(i32 %64, i64 %65, i64 %66, i32 1)
  %68 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %69 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @input_sync(i32 %72)
  %74 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %75 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* @EV_KEY, align 8
  %80 = load i64, i64* @BTN_MIDDLE, align 8
  %81 = call i32 @input_event(i32 %78, i64 %79, i64 %80, i32 0)
  %82 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %83 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @input_sync(i32 %86)
  br label %88

88:                                               ; preds = %59, %54
  %89 = load %struct.lenovo_drvdata_cptkbd*, %struct.lenovo_drvdata_cptkbd** %10, align 8
  %90 = getelementptr inbounds %struct.lenovo_drvdata_cptkbd, %struct.lenovo_drvdata_cptkbd* %89, i32 0, i32 0
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %51
  br label %92

92:                                               ; preds = %91, %48
  store i32 1, i32* %5, align 4
  br label %94

93:                                               ; preds = %39, %33
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %92, %30
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.lenovo_drvdata_cptkbd* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_event(i32, i64, i64, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
