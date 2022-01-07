; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_interface_deactivate(%struct.gb_interface* %0) #0 {
  %2 = alloca %struct.gb_interface*, align 8
  store %struct.gb_interface* %0, %struct.gb_interface** %2, align 8
  %3 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %4 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %10 = call i32 @trace_gb_interface_deactivate(%struct.gb_interface* %9)
  %11 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %12 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %17 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %16, i32 0, i32 1
  %18 = call i32 @complete(i32* %17)
  br label %19

19:                                               ; preds = %15, %8
  %20 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %21 = call i32 @gb_interface_route_destroy(%struct.gb_interface* %20)
  %22 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %23 = call i32 @gb_interface_hibernate_link(%struct.gb_interface* %22)
  %24 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %25 = call i32 @gb_interface_unipro_set(%struct.gb_interface* %24, i32 0)
  %26 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %27 = call i32 @gb_interface_refclk_set(%struct.gb_interface* %26, i32 0)
  %28 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %29 = call i32 @gb_interface_vsys_set(%struct.gb_interface* %28, i32 0)
  %30 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %31 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %19, %7
  ret void
}

declare dso_local i32 @trace_gb_interface_deactivate(%struct.gb_interface*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @gb_interface_route_destroy(%struct.gb_interface*) #1

declare dso_local i32 @gb_interface_hibernate_link(%struct.gb_interface*) #1

declare dso_local i32 @gb_interface_unipro_set(%struct.gb_interface*, i32) #1

declare dso_local i32 @gb_interface_refclk_set(%struct.gb_interface*, i32) #1

declare dso_local i32 @gb_interface_vsys_set(%struct.gb_interface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
