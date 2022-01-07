; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c___fpga_mgr_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c___fpga_mgr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32 }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpga_manager* (%struct.device*)* @__fpga_mgr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpga_manager* @__fpga_mgr_get(%struct.device* %0) #0 {
  %2 = alloca %struct.fpga_manager*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fpga_manager*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.fpga_manager* @to_fpga_manager(%struct.device* %5)
  store %struct.fpga_manager* %6, %struct.fpga_manager** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @try_module_get(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %19

17:                                               ; preds = %1
  %18 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  store %struct.fpga_manager* %18, %struct.fpga_manager** %2, align 8
  br label %25

19:                                               ; preds = %16
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @put_device(%struct.device* %20)
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.fpga_manager* @ERR_PTR(i32 %23)
  store %struct.fpga_manager* %24, %struct.fpga_manager** %2, align 8
  br label %25

25:                                               ; preds = %19, %17
  %26 = load %struct.fpga_manager*, %struct.fpga_manager** %2, align 8
  ret %struct.fpga_manager* %26
}

declare dso_local %struct.fpga_manager* @to_fpga_manager(%struct.device*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local %struct.fpga_manager* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
