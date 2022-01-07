; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.TYPE_5__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { {}* }

@.str = private unnamed_addr constant [15 x i8] c"%s registered\0A\00", align 1
@fpga_mgr_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpga_mgr_register(%struct.fpga_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpga_manager*, align 8
  %4 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %3, align 8
  %5 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %6 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.fpga_manager*)**
  %10 = load i32 (%struct.fpga_manager*)*, i32 (%struct.fpga_manager*)** %9, align 8
  %11 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %12 = call i32 %10(%struct.fpga_manager* %11)
  %13 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %14 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %16 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %15, i32 0, i32 0
  %17 = call i32 @device_add(%struct.TYPE_5__* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %23 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %22, i32 0, i32 0
  %24 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %25 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_info(%struct.TYPE_5__* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %2, align 4
  br label %35

28:                                               ; preds = %20
  %29 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %30 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ida_simple_remove(i32* @fpga_mgr_ida, i32 %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %21
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @device_add(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
