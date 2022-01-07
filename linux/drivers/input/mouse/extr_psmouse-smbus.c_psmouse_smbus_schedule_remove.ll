; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-smbus.c_psmouse_smbus_schedule_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-smbus.c_psmouse_smbus_schedule_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.psmouse_smbus_removal_work = type { i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@psmouse_smbus_remove_i2c_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @psmouse_smbus_schedule_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psmouse_smbus_schedule_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.psmouse_smbus_removal_work*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.psmouse_smbus_removal_work* @kzalloc(i32 16, i32 %4)
  store %struct.psmouse_smbus_removal_work* %5, %struct.psmouse_smbus_removal_work** %3, align 8
  %6 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %3, align 8
  %7 = icmp ne %struct.psmouse_smbus_removal_work* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %3, align 8
  %10 = getelementptr inbounds %struct.psmouse_smbus_removal_work, %struct.psmouse_smbus_removal_work* %9, i32 0, i32 0
  %11 = load i32, i32* @psmouse_smbus_remove_i2c_device, align 4
  %12 = call i32 @INIT_WORK(i32* %10, i32 %11)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %3, align 8
  %15 = getelementptr inbounds %struct.psmouse_smbus_removal_work, %struct.psmouse_smbus_removal_work* %14, i32 0, i32 1
  store %struct.i2c_client* %13, %struct.i2c_client** %15, align 8
  %16 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %3, align 8
  %17 = getelementptr inbounds %struct.psmouse_smbus_removal_work, %struct.psmouse_smbus_removal_work* %16, i32 0, i32 0
  %18 = call i32 @schedule_work(i32* %17)
  br label %19

19:                                               ; preds = %8, %1
  ret void
}

declare dso_local %struct.psmouse_smbus_removal_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
