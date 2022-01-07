; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_set_shared_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_set_shared_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { %struct.TYPE_4__*, i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@WACOM_DEVICETYPE_TOUCH = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@SW_MUTE_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*)* @wacom_set_shared_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_set_shared_values(%struct.wacom_wac* %0) #0 {
  %2 = alloca %struct.wacom_wac*, align 8
  store %struct.wacom_wac* %0, %struct.wacom_wac** %2, align 8
  %3 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %4 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @WACOM_DEVICETYPE_TOUCH, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %12 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %16 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i32 %14, i32* %18, align 8
  %19 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %20 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %23 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %25, align 8
  br label %26

26:                                               ; preds = %10, %1
  %27 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %28 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %33 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %37 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %42 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %40
  %48 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %49 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %47
  %55 = load i32, i32* @EV_SW, align 4
  %56 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %57 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @set_bit(i32 %55, i32 %62)
  %64 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %65 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* @EV_SW, align 4
  %70 = load i32, i32* @SW_MUTE_DEVICE, align 4
  %71 = call i32 @input_set_capability(%struct.TYPE_6__* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %54, %47, %40
  ret void
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
