; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.serio*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.psmouse = type { i64, i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)* }

@psmouse_attribute_group = common dso_local global i32 0, align 4
@psmouse_mutex = common dso_local global i32 0, align 4
@PSMOUSE_CMD_MODE = common dso_local global i32 0, align 4
@kpsmoused_wq = common dso_local global i32 0, align 4
@SERIO_PS_PSTHRU = common dso_local global i64 0, align 8
@PSMOUSE_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @psmouse_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psmouse_disconnect(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.psmouse*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %5 = load %struct.serio*, %struct.serio** %2, align 8
  %6 = call %struct.psmouse* @serio_get_drvdata(%struct.serio* %5)
  store %struct.psmouse* %6, %struct.psmouse** %3, align 8
  store %struct.psmouse* null, %struct.psmouse** %4, align 8
  %7 = load %struct.serio*, %struct.serio** %2, align 8
  %8 = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @sysfs_remove_group(i32* %9, i32* @psmouse_attribute_group)
  %11 = call i32 @mutex_lock(i32* @psmouse_mutex)
  %12 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %13 = load i32, i32* @PSMOUSE_CMD_MODE, align 4
  %14 = call i32 @psmouse_set_state(%struct.psmouse* %12, i32 %13)
  %15 = call i32 @mutex_unlock(i32* @psmouse_mutex)
  %16 = load i32, i32* @kpsmoused_wq, align 4
  %17 = call i32 @flush_workqueue(i32 %16)
  %18 = call i32 @mutex_lock(i32* @psmouse_mutex)
  %19 = load %struct.serio*, %struct.serio** %2, align 8
  %20 = getelementptr inbounds %struct.serio, %struct.serio* %19, i32 0, i32 0
  %21 = load %struct.serio*, %struct.serio** %20, align 8
  %22 = icmp ne %struct.serio* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %1
  %24 = load %struct.serio*, %struct.serio** %2, align 8
  %25 = getelementptr inbounds %struct.serio, %struct.serio* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SERIO_PS_PSTHRU, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.serio*, %struct.serio** %2, align 8
  %32 = getelementptr inbounds %struct.serio, %struct.serio* %31, i32 0, i32 0
  %33 = load %struct.serio*, %struct.serio** %32, align 8
  %34 = call %struct.psmouse* @serio_get_drvdata(%struct.serio* %33)
  store %struct.psmouse* %34, %struct.psmouse** %4, align 8
  %35 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %36 = call i32 @psmouse_deactivate(%struct.psmouse* %35)
  br label %37

37:                                               ; preds = %30, %23, %1
  %38 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %39 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %38, i32 0, i32 2
  %40 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %39, align 8
  %41 = icmp ne i32 (%struct.psmouse*)* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %44 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %43, i32 0, i32 2
  %45 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %44, align 8
  %46 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %47 = call i32 %45(%struct.psmouse* %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %50 = icmp ne %struct.psmouse* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %53 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %52, i32 0, i32 1
  %54 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %53, align 8
  %55 = icmp ne i32 (%struct.psmouse*)* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %58 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %57, i32 0, i32 1
  %59 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %58, align 8
  %60 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %61 = call i32 %59(%struct.psmouse* %60)
  br label %62

62:                                               ; preds = %56, %51, %48
  %63 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %64 = load i32, i32* @PSMOUSE_IGNORE, align 4
  %65 = call i32 @psmouse_set_state(%struct.psmouse* %63, i32 %64)
  %66 = load %struct.serio*, %struct.serio** %2, align 8
  %67 = call i32 @serio_close(%struct.serio* %66)
  %68 = load %struct.serio*, %struct.serio** %2, align 8
  %69 = call i32 @serio_set_drvdata(%struct.serio* %68, i32* null)
  %70 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %71 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  %75 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %76 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @input_unregister_device(i64 %77)
  br label %79

79:                                               ; preds = %74, %62
  %80 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %81 = call i32 @kfree(%struct.psmouse* %80)
  %82 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %83 = icmp ne %struct.psmouse* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %86 = call i32 @psmouse_activate(%struct.psmouse* %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = call i32 @mutex_unlock(i32* @psmouse_mutex)
  ret void
}

declare dso_local %struct.psmouse* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @psmouse_deactivate(%struct.psmouse*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, i32*) #1

declare dso_local i32 @input_unregister_device(i64) #1

declare dso_local i32 @kfree(%struct.psmouse*) #1

declare dso_local i32 @psmouse_activate(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
