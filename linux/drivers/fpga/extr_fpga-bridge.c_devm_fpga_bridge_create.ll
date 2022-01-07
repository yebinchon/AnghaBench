; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c_devm_fpga_bridge_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c_devm_fpga_bridge_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_bridge = type { i32 }
%struct.device = type { i32 }
%struct.fpga_bridge_ops = type { i32 }

@devm_fpga_bridge_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpga_bridge* @devm_fpga_bridge_create(%struct.device* %0, i8* %1, %struct.fpga_bridge_ops* %2, i8* %3) #0 {
  %5 = alloca %struct.fpga_bridge*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fpga_bridge_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fpga_bridge**, align 8
  %11 = alloca %struct.fpga_bridge*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.fpga_bridge_ops* %2, %struct.fpga_bridge_ops** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @devm_fpga_bridge_release, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.fpga_bridge** @devres_alloc(i32 %12, i32 8, i32 %13)
  store %struct.fpga_bridge** %14, %struct.fpga_bridge*** %10, align 8
  %15 = load %struct.fpga_bridge**, %struct.fpga_bridge*** %10, align 8
  %16 = icmp ne %struct.fpga_bridge** %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.fpga_bridge* null, %struct.fpga_bridge** %5, align 8
  br label %37

18:                                               ; preds = %4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call %struct.fpga_bridge* @fpga_bridge_create(%struct.device* %19, i8* %20, %struct.fpga_bridge_ops* %21, i8* %22)
  store %struct.fpga_bridge* %23, %struct.fpga_bridge** %11, align 8
  %24 = load %struct.fpga_bridge*, %struct.fpga_bridge** %11, align 8
  %25 = icmp ne %struct.fpga_bridge* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load %struct.fpga_bridge**, %struct.fpga_bridge*** %10, align 8
  %28 = call i32 @devres_free(%struct.fpga_bridge** %27)
  br label %35

29:                                               ; preds = %18
  %30 = load %struct.fpga_bridge*, %struct.fpga_bridge** %11, align 8
  %31 = load %struct.fpga_bridge**, %struct.fpga_bridge*** %10, align 8
  store %struct.fpga_bridge* %30, %struct.fpga_bridge** %31, align 8
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.fpga_bridge**, %struct.fpga_bridge*** %10, align 8
  %34 = call i32 @devres_add(%struct.device* %32, %struct.fpga_bridge** %33)
  br label %35

35:                                               ; preds = %29, %26
  %36 = load %struct.fpga_bridge*, %struct.fpga_bridge** %11, align 8
  store %struct.fpga_bridge* %36, %struct.fpga_bridge** %5, align 8
  br label %37

37:                                               ; preds = %35, %17
  %38 = load %struct.fpga_bridge*, %struct.fpga_bridge** %5, align 8
  ret %struct.fpga_bridge* %38
}

declare dso_local %struct.fpga_bridge** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.fpga_bridge* @fpga_bridge_create(%struct.device*, i8*, %struct.fpga_bridge_ops*, i8*) #1

declare dso_local i32 @devres_free(%struct.fpga_bridge**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.fpga_bridge**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
