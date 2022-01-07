; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Interface removed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_interface_del(%struct.gb_interface* %0) #0 {
  %2 = alloca %struct.gb_interface*, align 8
  store %struct.gb_interface* %0, %struct.gb_interface** %2, align 8
  %3 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %4 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %3, i32 0, i32 0
  %5 = call i64 @device_is_registered(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %9 = call i32 @trace_gb_interface_del(%struct.gb_interface* %8)
  %10 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %11 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %10, i32 0, i32 0
  %12 = call i32 @device_del(i32* %11)
  %13 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %14 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %13, i32 0, i32 0
  %15 = call i32 @dev_info(i32* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @trace_gb_interface_del(%struct.gb_interface*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
