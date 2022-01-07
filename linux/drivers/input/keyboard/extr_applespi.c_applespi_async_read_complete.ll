; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_async_read_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_async_read_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Error reading from device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @applespi_async_read_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applespi_async_read_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.applespi_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.applespi_data*
  store %struct.applespi_data* %5, %struct.applespi_data** %3, align 8
  %6 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %7 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %13 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %17 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dev_warn(i32* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %22 = call i32 @applespi_msg_complete(%struct.applespi_data* %21, i32 1, i32 1)
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %25 = call i32 @applespi_got_data(%struct.applespi_data* %24)
  br label %26

26:                                               ; preds = %23, %11
  %27 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %28 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @acpi_finish_gpe(i32* null, i32 %29)
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i32 @applespi_msg_complete(%struct.applespi_data*, i32, i32) #1

declare dso_local i32 @applespi_got_data(%struct.applespi_data*) #1

declare dso_local i32 @acpi_finish_gpe(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
