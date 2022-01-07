; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_legacy_mode_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_legacy_mode_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"legacy mode switch detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to re-enable interface: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_interface*)* @gb_interface_legacy_mode_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_interface_legacy_mode_switch(%struct.gb_interface* %0) #0 {
  %2 = alloca %struct.gb_interface*, align 8
  %3 = alloca i32, align 4
  store %struct.gb_interface* %0, %struct.gb_interface** %2, align 8
  %4 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %5 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %4, i32 0, i32 1
  %6 = call i32 @dev_info(i32* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %8 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %10 = call i32 @gb_interface_disable(%struct.gb_interface* %9)
  %11 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %12 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %14 = call i32 @gb_interface_enable(%struct.gb_interface* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %19 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %18, i32 0, i32 1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %23 = call i32 @gb_interface_deactivate(%struct.gb_interface* %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @gb_interface_disable(%struct.gb_interface*) #1

declare dso_local i32 @gb_interface_enable(%struct.gb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gb_interface_deactivate(%struct.gb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
