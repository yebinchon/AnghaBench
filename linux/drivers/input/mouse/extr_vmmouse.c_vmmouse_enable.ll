; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vmmouse.c_vmmouse_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vmmouse.c_vmmouse_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@ABSPOINTER_COMMAND = common dso_local global i32 0, align 4
@VMMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@ABSPOINTER_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"empty flags - assuming no device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ABSPOINTER_DATA = common dso_local global i32 0, align 4
@VMMOUSE_VERSION_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unexpected version value: %u vs %u\0A\00", align 1
@ABSPOINTER_RESTRICT = common dso_local global i32 0, align 4
@VMMOUSE_RESTRICT_CPL0 = common dso_local global i32 0, align 4
@VMMOUSE_CMD_REQUEST_ABSOLUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @vmmouse_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmmouse_enable(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %10 = load i32, i32* @ABSPOINTER_COMMAND, align 4
  %11 = load i32, i32* @VMMOUSE_CMD_ENABLE, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @VMMOUSE_CMD(i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @ABSPOINTER_STATUS, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @VMMOUSE_CMD(i32 %17, i32 0, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %28 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %65

31:                                               ; preds = %1
  %32 = load i32, i32* @ABSPOINTER_DATA, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @VMMOUSE_CMD(i32 %32, i32 1, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @VMMOUSE_VERSION_ID, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @VMMOUSE_VERSION_ID, align 4
  %45 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %47 = call i32 @vmmouse_disable(%struct.psmouse* %46)
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %65

50:                                               ; preds = %31
  %51 = load i32, i32* @ABSPOINTER_RESTRICT, align 4
  %52 = load i32, i32* @VMMOUSE_RESTRICT_CPL0, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @VMMOUSE_CMD(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* @ABSPOINTER_COMMAND, align 4
  %59 = load i32, i32* @VMMOUSE_CMD_REQUEST_ABSOLUTE, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @VMMOUSE_CMD(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %50, %41, %26
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @VMMOUSE_CMD(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, ...) #1

declare dso_local i32 @vmmouse_disable(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
