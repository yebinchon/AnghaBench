; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_handle_coordinates_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_handle_coordinates_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Coordinates string: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"~C%u,%u\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"could not get max coordinates\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom*)* @wacom_handle_coordinates_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_handle_coordinates_response(%struct.wacom* %0) #0 {
  %2 = alloca %struct.wacom*, align 8
  %3 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %2, align 8
  %4 = load %struct.wacom*, %struct.wacom** %2, align 8
  %5 = getelementptr inbounds %struct.wacom, %struct.wacom* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.wacom*, %struct.wacom** %2, align 8
  %9 = getelementptr inbounds %struct.wacom, %struct.wacom* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.wacom*, %struct.wacom** %2, align 8
  %13 = getelementptr inbounds %struct.wacom, %struct.wacom* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.wacom*, %struct.wacom** %2, align 8
  %16 = getelementptr inbounds %struct.wacom, %struct.wacom* %15, i32 0, i32 2
  %17 = load %struct.wacom*, %struct.wacom** %2, align 8
  %18 = getelementptr inbounds %struct.wacom, %struct.wacom* %17, i32 0, i32 1
  %19 = call i32 @sscanf(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %16, i32* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.wacom*, %struct.wacom** %2, align 8
  %24 = getelementptr inbounds %struct.wacom, %struct.wacom* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
