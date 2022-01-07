; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_create_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_create_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.gb_interface = type { i32 }

@GB_CONNECTION_FLAG_CONTROL = common dso_local global i32 0, align 4
@GB_CONNECTION_FLAG_HIGH_PRIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gb_connection* @gb_connection_create_control(%struct.gb_interface* %0) #0 {
  %2 = alloca %struct.gb_interface*, align 8
  store %struct.gb_interface* %0, %struct.gb_interface** %2, align 8
  %3 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %4 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %7 = load i32, i32* @GB_CONNECTION_FLAG_CONTROL, align 4
  %8 = load i32, i32* @GB_CONNECTION_FLAG_HIGH_PRIO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.gb_connection* @_gb_connection_create(i32 %5, i32 -1, %struct.gb_interface* %6, i32* null, i32 0, i32* null, i32 %9)
  ret %struct.gb_connection* %10
}

declare dso_local %struct.gb_connection* @_gb_connection_create(i32, i32, %struct.gb_interface*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
