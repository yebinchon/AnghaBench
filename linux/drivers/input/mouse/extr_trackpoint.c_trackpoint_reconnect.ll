; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.trackpoint_data* }
%struct.trackpoint_data = type { i64 }

@TP_VARIANT_IBM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @trackpoint_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trackpoint_reconnect(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.trackpoint_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 1
  %9 = load %struct.trackpoint_data*, %struct.trackpoint_data** %8, align 8
  store %struct.trackpoint_data* %9, %struct.trackpoint_data** %4, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %11 = call i32 @trackpoint_start_protocol(%struct.psmouse* %10, i32* null, i32* null)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.trackpoint_data*, %struct.trackpoint_data** %4, align 8
  %18 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TP_VARIANT_IBM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %24 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %23, i32 0, i32 0
  %25 = call i64 @trackpoint_power_on_reset(i32* %24)
  %26 = icmp eq i64 %25, 0
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i1 [ false, %16 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @trackpoint_sync(%struct.psmouse* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %35, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @trackpoint_start_protocol(%struct.psmouse*, i32*, i32*) #1

declare dso_local i64 @trackpoint_power_on_reset(i32*) #1

declare dso_local i32 @trackpoint_sync(%struct.psmouse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
