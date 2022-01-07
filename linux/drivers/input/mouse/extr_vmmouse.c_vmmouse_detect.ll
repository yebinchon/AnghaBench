; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vmmouse.c_vmmouse_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vmmouse.c_vmmouse_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"VMMouse not running on supported hypervisor.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@VMMOUSE_PROTO_MAGIC = common dso_local global i32 0, align 4
@GETVERSION = common dso_local global i32 0, align 4
@VMMOUSE_VENDOR = common dso_local global i32 0, align 4
@VMMOUSE_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmmouse_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 (...) @vmmouse_check_hypervisor()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %14 = call i32 @psmouse_dbg(%struct.psmouse* %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load i32, i32* @VMMOUSE_PROTO_MAGIC, align 4
  %19 = xor i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @GETVERSION, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @VMMOUSE_CMD(i32 %20, i32 0, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @VMMOUSE_PROTO_MAGIC, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %17
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32, i32* @VMMOUSE_VENDOR, align 4
  %40 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %41 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @VMMOUSE_NAME, align 4
  %43 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %44 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %47 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %38, %35
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %32, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @vmmouse_check_hypervisor(...) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*) #1

declare dso_local i32 @VMMOUSE_CMD(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
