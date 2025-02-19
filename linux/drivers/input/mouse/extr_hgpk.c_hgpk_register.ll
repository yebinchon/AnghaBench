; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.psmouse = type { i32, i64, %struct.TYPE_7__, i32, i64, i32, i32, i32, i32, %struct.hgpk_data* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.hgpk_data = type { i32 }

@hgpk_process_byte = common dso_local global i32 0, align 4
@hgpk_poll = common dso_local global i32 0, align 4
@hgpk_disconnect = common dso_local global i32 0, align 4
@hgpk_reconnect = common dso_local global i32 0, align 4
@psmouse_attr_powered = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed creating 'powered' sysfs node\0A\00", align 1
@psmouse_attr_hgpk_mode = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed creating 'hgpk_mode' sysfs node\0A\00", align 1
@HGPK_MODEL_C = common dso_local global i64 0, align 8
@psmouse_attr_recalibrate = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed creating 'recalibrate' sysfs node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @hgpk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgpk_register(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.hgpk_data*, align 8
  %5 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 9
  %8 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  store %struct.hgpk_data* %8, %struct.hgpk_data** %4, align 8
  %9 = load i32, i32* @hgpk_process_byte, align 4
  %10 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @hgpk_poll, align 4
  %13 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @hgpk_disconnect, align 4
  %16 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %17 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @hgpk_reconnect, align 4
  %19 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %22 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %24 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %23, i32 0, i32 0
  store i32 1024, i32* %24, align 8
  %25 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %26 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %29 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @hgpk_setup_input_device(i32 %27, i32* null, i32 %30)
  %32 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %33 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @device_create_file(i32* %36, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @psmouse_attr_powered, i32 0, i32 0))
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %1
  %41 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %42 = call i32 @psmouse_err(%struct.psmouse* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %91

44:                                               ; preds = %1
  %45 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %46 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @device_create_file(i32* %49, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @psmouse_attr_hgpk_mode, i32 0, i32 0))
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %55 = call i32 @psmouse_err(%struct.psmouse* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %83

56:                                               ; preds = %44
  %57 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %58 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @HGPK_MODEL_C, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %64 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @device_create_file(i32* %67, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @psmouse_attr_recalibrate, i32 0, i32 0))
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %73 = call i32 @psmouse_err(%struct.psmouse* %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %76

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %56
  store i32 0, i32* %2, align 4
  br label %91

76:                                               ; preds = %71
  %77 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %78 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = call i32 @device_remove_file(i32* %81, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @psmouse_attr_hgpk_mode, i32 0, i32 0))
  br label %83

83:                                               ; preds = %76, %53
  %84 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %85 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @device_remove_file(i32* %88, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @psmouse_attr_powered, i32 0, i32 0))
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %83, %75, %40
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @hgpk_setup_input_device(i32, i32*, i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
