; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.psmouse = type { i64, %struct.TYPE_7__, %struct.hgpk_data* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.hgpk_data = type { i32 }

@psmouse_attr_powered = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@psmouse_attr_hgpk_mode = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@HGPK_MODEL_C = common dso_local global i64 0, align 8
@psmouse_attr_recalibrate = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @hgpk_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hgpk_disconnect(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.hgpk_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %4 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %5 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 2
  %6 = load %struct.hgpk_data*, %struct.hgpk_data** %5, align 8
  store %struct.hgpk_data* %6, %struct.hgpk_data** %3, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @device_remove_file(i32* %11, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @psmouse_attr_powered, i32 0, i32 0))
  %13 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 @device_remove_file(i32* %17, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @psmouse_attr_hgpk_mode, i32 0, i32 0))
  %19 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HGPK_MODEL_C, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %26 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @device_remove_file(i32* %29, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @psmouse_attr_recalibrate, i32 0, i32 0))
  br label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %33 = call i32 @psmouse_reset(%struct.psmouse* %32)
  %34 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %35 = call i32 @kfree(%struct.hgpk_data* %34)
  ret void
}

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i32 @kfree(%struct.hgpk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
