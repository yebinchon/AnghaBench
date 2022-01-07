; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c___psmouse_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c___psmouse_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.serio*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.psmouse = type { i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)*, %struct.TYPE_4__*, i32 (%struct.psmouse*)* }
%struct.TYPE_4__ = type { i32, i32 }

@psmouse_mutex = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SERIO_PS_PSTHRU = common dso_local global i64 0, align 8
@PSMOUSE_INITIALIZING = common dso_local global i32 0, align 4
@psmouse_max_proto = common dso_local global i32 0, align 4
@PSMOUSE_CMD_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i32)* @__psmouse_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__psmouse_reconnect(%struct.serio* %0, i32 %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i32 (%struct.psmouse*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.serio*, %struct.serio** %3, align 8
  %11 = call %struct.psmouse* @serio_get_drvdata(%struct.serio* %10)
  store %struct.psmouse* %11, %struct.psmouse** %5, align 8
  store %struct.psmouse* null, %struct.psmouse** %6, align 8
  store i32 -1, i32* %9, align 4
  %12 = call i32 @mutex_lock(i32* @psmouse_mutex)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %17 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %16, i32 0, i32 0
  %18 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %17, align 8
  store i32 (%struct.psmouse*)* %18, i32 (%struct.psmouse*)** %7, align 8
  %19 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %7, align 8
  %20 = icmp ne i32 (%struct.psmouse*)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %126

24:                                               ; preds = %15
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %27 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %26, i32 0, i32 1
  %28 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %27, align 8
  store i32 (%struct.psmouse*)* %28, i32 (%struct.psmouse*)** %7, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = load %struct.serio*, %struct.serio** %3, align 8
  %31 = getelementptr inbounds %struct.serio, %struct.serio* %30, i32 0, i32 0
  %32 = load %struct.serio*, %struct.serio** %31, align 8
  %33 = icmp ne %struct.serio* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.serio*, %struct.serio** %3, align 8
  %36 = getelementptr inbounds %struct.serio, %struct.serio* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SERIO_PS_PSTHRU, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.serio*, %struct.serio** %3, align 8
  %43 = getelementptr inbounds %struct.serio, %struct.serio* %42, i32 0, i32 0
  %44 = load %struct.serio*, %struct.serio** %43, align 8
  %45 = call %struct.psmouse* @serio_get_drvdata(%struct.serio* %44)
  store %struct.psmouse* %45, %struct.psmouse** %6, align 8
  %46 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %47 = call i32 @psmouse_deactivate(%struct.psmouse* %46)
  br label %48

48:                                               ; preds = %41, %34, %29
  %49 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %50 = load i32, i32* @PSMOUSE_INITIALIZING, align 4
  %51 = call i32 @psmouse_set_state(%struct.psmouse* %49, i32 %50)
  %52 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %7, align 8
  %53 = icmp ne i32 (%struct.psmouse*)* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %7, align 8
  %56 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %57 = call i32 %55(%struct.psmouse* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %119

60:                                               ; preds = %54
  br label %81

61:                                               ; preds = %48
  %62 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %63 = call i32 @psmouse_reset(%struct.psmouse* %62)
  %64 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %65 = call i64 @psmouse_probe(%struct.psmouse* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %119

68:                                               ; preds = %61
  %69 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %70 = load i32, i32* @psmouse_max_proto, align 4
  %71 = call i32 @psmouse_extensions(%struct.psmouse* %69, i32 %70, i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %73 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %119

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %60
  %82 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %83 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %81
  %89 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %90 = load i32, i32* @PSMOUSE_CMD_MODE, align 4
  %91 = call i32 @psmouse_set_state(%struct.psmouse* %89, i32 %90)
  %92 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %93 = call i32 @psmouse_initialize(%struct.psmouse* %92)
  br label %94

94:                                               ; preds = %88, %81
  %95 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %96 = icmp ne %struct.psmouse* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %99 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %98, i32 0, i32 3
  %100 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %99, align 8
  %101 = icmp ne i32 (%struct.psmouse*)* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %104 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %103, i32 0, i32 3
  %105 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %104, align 8
  %106 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %107 = call i32 %105(%struct.psmouse* %106)
  br label %108

108:                                              ; preds = %102, %97, %94
  %109 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %110 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %117 = call i32 @psmouse_activate(%struct.psmouse* %116)
  br label %118

118:                                              ; preds = %115, %108
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %118, %79, %67, %59
  %120 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %121 = icmp ne %struct.psmouse* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %124 = call i32 @psmouse_activate(%struct.psmouse* %123)
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %21
  %127 = call i32 @mutex_unlock(i32* @psmouse_mutex)
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local %struct.psmouse* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @psmouse_deactivate(%struct.psmouse*) #1

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i64 @psmouse_probe(%struct.psmouse*) #1

declare dso_local i32 @psmouse_extensions(%struct.psmouse*, i32, i32) #1

declare dso_local i32 @psmouse_initialize(%struct.psmouse*) #1

declare dso_local i32 @psmouse_activate(%struct.psmouse*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
