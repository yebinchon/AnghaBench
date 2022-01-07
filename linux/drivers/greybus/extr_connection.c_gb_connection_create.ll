; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.gb_bundle = type { %struct.gb_interface* }
%struct.gb_interface = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gb_interface*, align 8
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %9 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %8, i32 0, i32 0
  %10 = load %struct.gb_interface*, %struct.gb_interface** %9, align 8
  store %struct.gb_interface* %10, %struct.gb_interface** %7, align 8
  %11 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %12 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %15 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.gb_connection* @_gb_connection_create(i32 %13, i32 -1, %struct.gb_interface* %14, %struct.gb_bundle* %15, i32 %16, i32 %17, i32 0)
  ret %struct.gb_connection* %18
}

declare dso_local %struct.gb_connection* @_gb_connection_create(i32, i32, %struct.gb_interface*, %struct.gb_bundle*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
