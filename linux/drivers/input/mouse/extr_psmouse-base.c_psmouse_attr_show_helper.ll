; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_attr_show_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_attr_show_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.device_attribute }
%struct.device_attribute = type { i32 }
%struct.device = type { i32 }
%struct.serio = type { i32 }
%struct.psmouse_attribute = type { i32, i32 (%struct.psmouse*, i32, i8*)* }
%struct.psmouse = type opaque
%struct.psmouse.0 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@psmouse_attr_protocol = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psmouse_attr_show_helper(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.serio*, align 8
  %9 = alloca %struct.psmouse_attribute*, align 8
  %10 = alloca %struct.psmouse.0*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.serio* @to_serio_port(%struct.device* %11)
  store %struct.serio* %12, %struct.serio** %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.psmouse_attribute* @to_psmouse_attr(%struct.device_attribute* %13)
  store %struct.psmouse_attribute* %14, %struct.psmouse_attribute** %9, align 8
  %15 = load %struct.serio*, %struct.serio** %8, align 8
  %16 = call %struct.psmouse.0* @serio_get_drvdata(%struct.serio* %15)
  store %struct.psmouse.0* %16, %struct.psmouse.0** %10, align 8
  %17 = load %struct.psmouse.0*, %struct.psmouse.0** %10, align 8
  %18 = getelementptr inbounds %struct.psmouse.0, %struct.psmouse.0* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %25 = icmp ne %struct.device_attribute* %24, getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @psmouse_attr_protocol, i32 0, i32 0)
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %23, %3
  %30 = load %struct.psmouse_attribute*, %struct.psmouse_attribute** %9, align 8
  %31 = getelementptr inbounds %struct.psmouse_attribute, %struct.psmouse_attribute* %30, i32 0, i32 1
  %32 = load i32 (%struct.psmouse*, i32, i8*)*, i32 (%struct.psmouse*, i32, i8*)** %31, align 8
  %33 = load %struct.psmouse.0*, %struct.psmouse.0** %10, align 8
  %34 = bitcast %struct.psmouse.0* %33 to %struct.psmouse*
  %35 = load %struct.psmouse_attribute*, %struct.psmouse_attribute** %9, align 8
  %36 = getelementptr inbounds %struct.psmouse_attribute, %struct.psmouse_attribute* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 %32(%struct.psmouse* %34, i32 %37, i8* %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %29, %26
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.serio* @to_serio_port(%struct.device*) #1

declare dso_local %struct.psmouse_attribute* @to_psmouse_attr(%struct.device_attribute*) #1

declare dso_local %struct.psmouse.0* @serio_get_drvdata(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
