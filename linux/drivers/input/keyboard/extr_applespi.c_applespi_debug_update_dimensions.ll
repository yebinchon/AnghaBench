; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_debug_update_dimensions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_debug_update_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { i8*, i8*, i8*, i8* }
%struct.tp_finger = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.applespi_data*, %struct.tp_finger*)* @applespi_debug_update_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applespi_debug_update_dimensions(%struct.applespi_data* %0, %struct.tp_finger* %1) #0 {
  %3 = alloca %struct.applespi_data*, align 8
  %4 = alloca %struct.tp_finger*, align 8
  store %struct.applespi_data* %0, %struct.applespi_data** %3, align 8
  store %struct.tp_finger* %1, %struct.tp_finger** %4, align 8
  %5 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %6 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %5, i32 0, i32 3
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.tp_finger*, %struct.tp_finger** %4, align 8
  %9 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le16_to_int(i32 %10)
  %12 = call i8* @min(i8* %7, i32 %11)
  %13 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %14 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %16 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.tp_finger*, %struct.tp_finger** %4, align 8
  %19 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_int(i32 %20)
  %22 = call i8* @max(i8* %17, i32 %21)
  %23 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %24 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %26 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.tp_finger*, %struct.tp_finger** %4, align 8
  %29 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_int(i32 %30)
  %32 = call i8* @min(i8* %27, i32 %31)
  %33 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %34 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %36 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.tp_finger*, %struct.tp_finger** %4, align 8
  %39 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_int(i32 %40)
  %42 = call i8* @max(i8* %37, i32 %41)
  %43 = load %struct.applespi_data*, %struct.applespi_data** %3, align 8
  %44 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  ret void
}

declare dso_local i8* @min(i8*, i32) #1

declare dso_local i32 @le16_to_int(i32) #1

declare dso_local i8* @max(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
