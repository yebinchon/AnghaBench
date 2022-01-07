; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vmmouse.c_vmmouse_process_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vmmouse.c_vmmouse_process_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i32 }

@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@PSMOUSE_BAD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @vmmouse_process_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmmouse_process_byte(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i8*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %4, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %26 [
    i32 1, label %11
    i32 2, label %24
  ]

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  br label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %1
  %27 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %28 = call i32 @vmmouse_report_events(%struct.psmouse* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %24, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @vmmouse_report_events(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
