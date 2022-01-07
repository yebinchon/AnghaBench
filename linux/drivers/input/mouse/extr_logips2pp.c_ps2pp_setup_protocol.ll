; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_logips2pp.c_ps2pp_setup_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_logips2pp.c_ps2pp_setup_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.psmouse = type { i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ps2pp_info = type { i64 }

@ps2pp_process_byte = common dso_local global i32 0, align 4
@PS2PP_KIND_TP3 = common dso_local global i64 0, align 8
@ps2pp_set_resolution = common dso_local global i32 0, align 4
@ps2pp_disconnect = common dso_local global i32 0, align 4
@psmouse_attr_smartscroll = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [57 x i8] c"failed to create smartscroll sysfs attribute, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, %struct.ps2pp_info*)* @ps2pp_setup_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2pp_setup_protocol(%struct.psmouse* %0, %struct.ps2pp_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca %struct.ps2pp_info*, align 8
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store %struct.ps2pp_info* %1, %struct.ps2pp_info** %5, align 8
  %7 = load i32, i32* @ps2pp_process_byte, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  store i32 3, i32* %11, align 8
  %12 = load %struct.ps2pp_info*, %struct.ps2pp_info** %5, align 8
  %13 = getelementptr inbounds %struct.ps2pp_info, %struct.ps2pp_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PS2PP_KIND_TP3, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load i32, i32* @ps2pp_set_resolution, align 4
  %19 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ps2pp_disconnect, align 4
  %22 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %23 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %25 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @device_create_file(i32* %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @psmouse_attr_smartscroll, i32 0, i32 0))
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @psmouse_err(%struct.psmouse* %33, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37, %2
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
