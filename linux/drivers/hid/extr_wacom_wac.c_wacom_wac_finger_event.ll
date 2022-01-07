; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_finger_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_finger_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i64 }
%struct.hid_usage = type { i64, i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { i32, i32, %struct.TYPE_2__, %struct.wacom_features }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wacom_features = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i8*)* @wacom_wac_finger_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_finger_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i8* %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wacom*, align 8
  %10 = alloca %struct.wacom_wac*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wacom_features*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_field* %1, %struct.hid_field** %6, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %14 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %13)
  store %struct.wacom* %14, %struct.wacom** %9, align 8
  %15 = load %struct.wacom*, %struct.wacom** %9, align 8
  %16 = getelementptr inbounds %struct.wacom, %struct.wacom* %15, i32 0, i32 0
  store %struct.wacom_wac* %16, %struct.wacom_wac** %10, align 8
  %17 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %18 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @wacom_equivalent_usage(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.wacom*, %struct.wacom** %9, align 8
  %22 = getelementptr inbounds %struct.wacom, %struct.wacom* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %22, i32 0, i32 3
  store %struct.wacom_features* %23, %struct.wacom_features** %12, align 8
  %24 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %25 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %95

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  switch i32 %30, label %72 [
    i32 130, label %31
    i32 129, label %36
    i32 131, label %41
    i32 133, label %46
    i32 135, label %51
    i32 132, label %56
    i32 128, label %61
    i32 134, label %68
  ]

31:                                               ; preds = %29
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %34 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  store i8* %32, i8** %35, align 8
  br label %72

36:                                               ; preds = %29
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %39 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  store i8* %37, i8** %40, align 8
  br label %72

41:                                               ; preds = %29
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %44 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  br label %72

46:                                               ; preds = %29
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %49 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i8* %47, i8** %50, align 8
  br label %72

51:                                               ; preds = %29
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %54 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  br label %72

56:                                               ; preds = %29
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %59 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  br label %72

61:                                               ; preds = %29
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %67 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %95

68:                                               ; preds = %29
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.wacom_features*, %struct.wacom_features** %12, align 8
  %71 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %95

72:                                               ; preds = %29, %56, %51, %46, %41, %36, %31
  %73 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %74 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  %77 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %78 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %72
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %84 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %82, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %90 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %91 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @wacom_wac_finger_slot(%struct.wacom_wac* %89, i32 %92)
  br label %94

94:                                               ; preds = %88, %81
  br label %95

95:                                               ; preds = %28, %61, %68, %94, %72
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_equivalent_usage(i32) #1

declare dso_local i32 @wacom_wac_finger_slot(%struct.wacom_wac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
