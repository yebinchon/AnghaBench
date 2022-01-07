; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_handle_oob_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_handle_oob_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"unknown OOB_DATA type: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i8*)* @psmouse_handle_oob_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psmouse_handle_oob_data(%struct.psmouse* %0, i8* %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i8*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %28 [
    i32 128, label %8
    i32 129, label %13
  ]

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %15 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @psmouse_report_standard_buttons(i32 %16, i8* %17)
  %19 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @input_sync(i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %25 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %27 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %26, i32 0, i32 0
  store i32 128, i32* %27, align 8
  br label %36

28:                                               ; preds = %2
  %29 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %30 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %31 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @psmouse_warn(%struct.psmouse* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %35 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %34, i32 0, i32 0
  store i32 128, i32* %35, align 8
  br label %36

36:                                               ; preds = %28, %13, %8
  ret void
}

declare dso_local i32 @psmouse_report_standard_buttons(i32, i8*) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
