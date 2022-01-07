; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.atkbd = type { i32, i32 }

@atkbd_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @atkbd_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atkbd_disconnect(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.atkbd*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = call %struct.atkbd* @serio_get_drvdata(%struct.serio* %4)
  store %struct.atkbd* %5, %struct.atkbd** %3, align 8
  %6 = load %struct.serio*, %struct.serio** %2, align 8
  %7 = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @sysfs_remove_group(i32* %8, i32* @atkbd_attribute_group)
  %10 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %11 = call i32 @atkbd_disable(%struct.atkbd* %10)
  %12 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %13 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @input_unregister_device(i32 %14)
  %16 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %17 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %16, i32 0, i32 0
  %18 = call i32 @cancel_delayed_work_sync(i32* %17)
  %19 = load %struct.serio*, %struct.serio** %2, align 8
  %20 = call i32 @serio_close(%struct.serio* %19)
  %21 = load %struct.serio*, %struct.serio** %2, align 8
  %22 = call i32 @serio_set_drvdata(%struct.serio* %21, i32* null)
  %23 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %24 = call i32 @kfree(%struct.atkbd* %23)
  ret void
}

declare dso_local %struct.atkbd* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @atkbd_disable(%struct.atkbd*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, i32*) #1

declare dso_local i32 @kfree(%struct.atkbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
