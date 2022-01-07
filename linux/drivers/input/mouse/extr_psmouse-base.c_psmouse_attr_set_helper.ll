; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_attr_set_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_attr_set_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.device_attribute }
%struct.device_attribute = type { i32 }
%struct.device = type { i32 }
%struct.serio = type { %struct.serio*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.psmouse_attribute = type { i32 (%struct.psmouse*, i32, i8*, i64)*, i64, i32 }
%struct.psmouse = type opaque
%struct.psmouse.0 = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@psmouse_mutex = common dso_local global i32 0, align 4
@psmouse_attr_protocol = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4
@PSMOUSE_IGNORE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@SERIO_PS_PSTHRU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psmouse_attr_set_helper(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.serio*, align 8
  %10 = alloca %struct.psmouse_attribute*, align 8
  %11 = alloca %struct.psmouse.0*, align 8
  %12 = alloca %struct.psmouse.0*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.serio* @to_serio_port(%struct.device* %14)
  store %struct.serio* %15, %struct.serio** %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = call %struct.psmouse_attribute* @to_psmouse_attr(%struct.device_attribute* %16)
  store %struct.psmouse_attribute* %17, %struct.psmouse_attribute** %10, align 8
  store %struct.psmouse.0* null, %struct.psmouse.0** %12, align 8
  %18 = call i32 @mutex_lock_interruptible(i32* @psmouse_mutex)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %122

22:                                               ; preds = %4
  %23 = load %struct.serio*, %struct.serio** %9, align 8
  %24 = call %struct.psmouse.0* @serio_get_drvdata(%struct.serio* %23)
  store %struct.psmouse.0* %24, %struct.psmouse.0** %11, align 8
  %25 = load %struct.psmouse.0*, %struct.psmouse.0** %11, align 8
  %26 = getelementptr inbounds %struct.psmouse.0, %struct.psmouse.0* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %33 = icmp ne %struct.device_attribute* %32, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @psmouse_attr_protocol, i32 0, i32 0)
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %13, align 4
  br label %120

37:                                               ; preds = %31, %22
  %38 = load %struct.psmouse_attribute*, %struct.psmouse_attribute** %10, align 8
  %39 = getelementptr inbounds %struct.psmouse_attribute, %struct.psmouse_attribute* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %81

42:                                               ; preds = %37
  %43 = load %struct.psmouse.0*, %struct.psmouse.0** %11, align 8
  %44 = getelementptr inbounds %struct.psmouse.0, %struct.psmouse.0* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PSMOUSE_IGNORE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  br label %120

51:                                               ; preds = %42
  %52 = load %struct.serio*, %struct.serio** %9, align 8
  %53 = getelementptr inbounds %struct.serio, %struct.serio* %52, i32 0, i32 0
  %54 = load %struct.serio*, %struct.serio** %53, align 8
  %55 = icmp ne %struct.serio* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.serio*, %struct.serio** %9, align 8
  %58 = getelementptr inbounds %struct.serio, %struct.serio* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SERIO_PS_PSTHRU, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.serio*, %struct.serio** %9, align 8
  %65 = getelementptr inbounds %struct.serio, %struct.serio* %64, i32 0, i32 0
  %66 = load %struct.serio*, %struct.serio** %65, align 8
  %67 = call %struct.psmouse.0* @serio_get_drvdata(%struct.serio* %66)
  store %struct.psmouse.0* %67, %struct.psmouse.0** %12, align 8
  %68 = load %struct.psmouse.0*, %struct.psmouse.0** %12, align 8
  %69 = call i32 @psmouse_deactivate(%struct.psmouse.0* %68)
  br label %70

70:                                               ; preds = %63, %56, %51
  %71 = load %struct.psmouse.0*, %struct.psmouse.0** %11, align 8
  %72 = getelementptr inbounds %struct.psmouse.0, %struct.psmouse.0* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load %struct.psmouse.0*, %struct.psmouse.0** %11, align 8
  %79 = call i32 @psmouse_deactivate(%struct.psmouse.0* %78)
  br label %80

80:                                               ; preds = %77, %70
  br label %81

81:                                               ; preds = %80, %37
  %82 = load %struct.psmouse_attribute*, %struct.psmouse_attribute** %10, align 8
  %83 = getelementptr inbounds %struct.psmouse_attribute, %struct.psmouse_attribute* %82, i32 0, i32 0
  %84 = load i32 (%struct.psmouse*, i32, i8*, i64)*, i32 (%struct.psmouse*, i32, i8*, i64)** %83, align 8
  %85 = load %struct.psmouse.0*, %struct.psmouse.0** %11, align 8
  %86 = bitcast %struct.psmouse.0* %85 to %struct.psmouse*
  %87 = load %struct.psmouse_attribute*, %struct.psmouse_attribute** %10, align 8
  %88 = getelementptr inbounds %struct.psmouse_attribute, %struct.psmouse_attribute* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 %84(%struct.psmouse* %86, i32 %89, i8* %90, i64 %91)
  store i32 %92, i32* %13, align 4
  %93 = load %struct.psmouse_attribute*, %struct.psmouse_attribute** %10, align 8
  %94 = getelementptr inbounds %struct.psmouse_attribute, %struct.psmouse_attribute* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %81
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.psmouse.0*, %struct.psmouse.0** %11, align 8
  %104 = getelementptr inbounds %struct.psmouse.0, %struct.psmouse.0* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %102
  %110 = load %struct.psmouse.0*, %struct.psmouse.0** %11, align 8
  %111 = call i32 @psmouse_activate(%struct.psmouse.0* %110)
  br label %112

112:                                              ; preds = %109, %102, %97
  %113 = load %struct.psmouse.0*, %struct.psmouse.0** %12, align 8
  %114 = icmp ne %struct.psmouse.0* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.psmouse.0*, %struct.psmouse.0** %12, align 8
  %117 = call i32 @psmouse_activate(%struct.psmouse.0* %116)
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %81
  br label %120

120:                                              ; preds = %119, %48, %34
  %121 = call i32 @mutex_unlock(i32* @psmouse_mutex)
  br label %122

122:                                              ; preds = %120, %21
  %123 = load i32, i32* %13, align 4
  ret i32 %123
}

declare dso_local %struct.serio* @to_serio_port(%struct.device*) #1

declare dso_local %struct.psmouse_attribute* @to_psmouse_attr(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.psmouse.0* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @psmouse_deactivate(%struct.psmouse.0*) #1

declare dso_local i32 @psmouse_activate(%struct.psmouse.0*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
