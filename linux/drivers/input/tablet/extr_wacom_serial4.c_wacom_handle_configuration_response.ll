; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_handle_configuration_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_handle_configuration_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Configuration string: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"~R%x,%u,%u,%u,%u\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"could not get resolution\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom*)* @wacom_handle_configuration_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_handle_configuration_response(%struct.wacom* %0) #0 {
  %2 = alloca %struct.wacom*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %2, align 8
  %5 = load %struct.wacom*, %struct.wacom** %2, align 8
  %6 = getelementptr inbounds %struct.wacom, %struct.wacom* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.wacom*, %struct.wacom** %2, align 8
  %10 = getelementptr inbounds %struct.wacom, %struct.wacom* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.wacom*, %struct.wacom** %2, align 8
  %14 = getelementptr inbounds %struct.wacom, %struct.wacom* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.wacom*, %struct.wacom** %2, align 8
  %17 = getelementptr inbounds %struct.wacom, %struct.wacom* %16, i32 0, i32 2
  %18 = load %struct.wacom*, %struct.wacom** %2, align 8
  %19 = getelementptr inbounds %struct.wacom, %struct.wacom* %18, i32 0, i32 1
  %20 = call i32 @sscanf(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %4, i32* %4, i32* %4, i32* %17, i32* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 5
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.wacom*, %struct.wacom** %2, align 8
  %25 = getelementptr inbounds %struct.wacom, %struct.wacom* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
