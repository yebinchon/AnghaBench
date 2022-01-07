; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-smbus.c_psmouse_smbus_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-smbus.c_psmouse_smbus_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.psmouse_smbus_dev* }
%struct.psmouse_smbus_dev = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@psmouse_smbus_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"posting removal request for SMBus companion %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @psmouse_smbus_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psmouse_smbus_disconnect(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.psmouse_smbus_dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %4 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %5 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 0
  %6 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %5, align 8
  store %struct.psmouse_smbus_dev* %6, %struct.psmouse_smbus_dev** %3, align 8
  %7 = call i32 @mutex_lock(i32* @psmouse_smbus_mutex)
  %8 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %3, align 8
  %14 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %13, i32 0, i32 3
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %3, align 8
  %17 = call i32 @kfree(%struct.psmouse_smbus_dev* %16)
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %3, align 8
  %20 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %3, align 8
  %22 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %3, align 8
  %25 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_name(i32* %27)
  %29 = call i32 @psmouse_dbg(i32 %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %3, align 8
  %31 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @psmouse_smbus_schedule_remove(%struct.TYPE_2__* %32)
  br label %34

34:                                               ; preds = %18, %12
  %35 = call i32 @mutex_unlock(i32* @psmouse_smbus_mutex)
  %36 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %37 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %36, i32 0, i32 0
  store %struct.psmouse_smbus_dev* null, %struct.psmouse_smbus_dev** %37, align 8
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.psmouse_smbus_dev*) #1

declare dso_local i32 @psmouse_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @psmouse_smbus_schedule_remove(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
