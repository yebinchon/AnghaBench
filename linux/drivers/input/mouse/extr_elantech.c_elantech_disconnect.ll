; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.elantech_data*, %struct.TYPE_6__ }
%struct.elantech_data = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@elantech_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @elantech_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elantech_disconnect(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.elantech_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %4 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %5 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 0
  %6 = load %struct.elantech_data*, %struct.elantech_data** %5, align 8
  store %struct.elantech_data* %6, %struct.elantech_data** %3, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %8 = call i32 @psmouse_smbus_cleanup(%struct.psmouse* %7)
  %9 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %10 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %15 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @input_unregister_device(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @sysfs_remove_group(i32* %24, i32* @elantech_attr_group)
  %26 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %27 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %26, i32 0, i32 0
  %28 = load %struct.elantech_data*, %struct.elantech_data** %27, align 8
  %29 = call i32 @kfree(%struct.elantech_data* %28)
  %30 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %31 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %30, i32 0, i32 0
  store %struct.elantech_data* null, %struct.elantech_data** %31, align 8
  ret void
}

declare dso_local i32 @psmouse_smbus_cleanup(%struct.psmouse*) #1

declare dso_local i32 @input_unregister_device(i64) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.elantech_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
