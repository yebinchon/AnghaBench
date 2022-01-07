; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c___fpga_bridge_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c___fpga_bridge_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_bridge = type { i32, i32, %struct.fpga_image_info* }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fpga_image_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"get\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpga_bridge* (%struct.device*, %struct.fpga_image_info*)* @__fpga_bridge_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpga_bridge* @__fpga_bridge_get(%struct.device* %0, %struct.fpga_image_info* %1) #0 {
  %3 = alloca %struct.fpga_bridge*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fpga_image_info*, align 8
  %6 = alloca %struct.fpga_bridge*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %5, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.fpga_bridge* @to_fpga_bridge(%struct.device* %10)
  store %struct.fpga_bridge* %11, %struct.fpga_bridge** %6, align 8
  %12 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %13 = load %struct.fpga_bridge*, %struct.fpga_bridge** %6, align 8
  %14 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %13, i32 0, i32 2
  store %struct.fpga_image_info* %12, %struct.fpga_image_info** %14, align 8
  %15 = load %struct.fpga_bridge*, %struct.fpga_bridge** %6, align 8
  %16 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %15, i32 0, i32 0
  %17 = call i32 @mutex_trylock(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @try_module_get(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %38

33:                                               ; preds = %22
  %34 = load %struct.fpga_bridge*, %struct.fpga_bridge** %6, align 8
  %35 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %34, i32 0, i32 1
  %36 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.fpga_bridge*, %struct.fpga_bridge** %6, align 8
  store %struct.fpga_bridge* %37, %struct.fpga_bridge** %3, align 8
  br label %47

38:                                               ; preds = %32
  %39 = load %struct.fpga_bridge*, %struct.fpga_bridge** %6, align 8
  %40 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %42

42:                                               ; preds = %38, %19
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @put_device(%struct.device* %43)
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.fpga_bridge* @ERR_PTR(i32 %45)
  store %struct.fpga_bridge* %46, %struct.fpga_bridge** %3, align 8
  br label %47

47:                                               ; preds = %42, %33
  %48 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  ret %struct.fpga_bridge* %48
}

declare dso_local %struct.fpga_bridge* @to_fpga_bridge(%struct.device*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local %struct.fpga_bridge* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
