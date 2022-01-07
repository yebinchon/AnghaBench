; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_zynqmp-fpga.c_zynqmp_fpga_ops_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_zynqmp-fpga.c_zynqmp_fpga_ops_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.zynqmp_fpga_priv* }
%struct.zynqmp_fpga_priv = type { i32, i32 }
%struct.zynqmp_eemi_ops = type { i32 (i32, i64, i32)* }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FPGA_MGR_PARTIAL_RECONFIG = common dso_local global i32 0, align 4
@XILINX_ZYNQMP_PM_FPGA_PARTIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, i8*, i64)* @zynqmp_fpga_ops_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_fpga_ops_write(%struct.fpga_manager* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpga_manager*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.zynqmp_eemi_ops*, align 8
  %9 = alloca %struct.zynqmp_fpga_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = call %struct.zynqmp_eemi_ops* (...) @zynqmp_pm_get_eemi_ops()
  store %struct.zynqmp_eemi_ops* %14, %struct.zynqmp_eemi_ops** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.zynqmp_eemi_ops*, %struct.zynqmp_eemi_ops** %8, align 8
  %16 = call i64 @IS_ERR_OR_NULL(%struct.zynqmp_eemi_ops* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.zynqmp_eemi_ops*, %struct.zynqmp_eemi_ops** %8, align 8
  %20 = getelementptr inbounds %struct.zynqmp_eemi_ops, %struct.zynqmp_eemi_ops* %19, i32 0, i32 0
  %21 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %20, align 8
  %22 = icmp ne i32 (i32, i64, i32)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %3
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %73

26:                                               ; preds = %18
  %27 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %28 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %27, i32 0, i32 0
  %29 = load %struct.zynqmp_fpga_priv*, %struct.zynqmp_fpga_priv** %28, align 8
  store %struct.zynqmp_fpga_priv* %29, %struct.zynqmp_fpga_priv** %9, align 8
  %30 = load %struct.zynqmp_fpga_priv*, %struct.zynqmp_fpga_priv** %9, align 8
  %31 = getelementptr inbounds %struct.zynqmp_fpga_priv, %struct.zynqmp_fpga_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @dma_alloc_coherent(i32 %32, i64 %33, i32* %10, i32 %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %73

41:                                               ; preds = %26
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @memcpy(i8* %42, i8* %43, i64 %44)
  %46 = call i32 (...) @wmb()
  %47 = load %struct.zynqmp_fpga_priv*, %struct.zynqmp_fpga_priv** %9, align 8
  %48 = getelementptr inbounds %struct.zynqmp_fpga_priv, %struct.zynqmp_fpga_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FPGA_MGR_PARTIAL_RECONFIG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load i32, i32* @XILINX_ZYNQMP_PM_FPGA_PARTIAL, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %53, %41
  %58 = load %struct.zynqmp_eemi_ops*, %struct.zynqmp_eemi_ops** %8, align 8
  %59 = getelementptr inbounds %struct.zynqmp_eemi_ops, %struct.zynqmp_eemi_ops* %58, i32 0, i32 0
  %60 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 %60(i32 %61, i64 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.zynqmp_fpga_priv*, %struct.zynqmp_fpga_priv** %9, align 8
  %66 = getelementptr inbounds %struct.zynqmp_fpga_priv, %struct.zynqmp_fpga_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %7, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @dma_free_coherent(i32 %67, i64 %68, i8* %69, i32 %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %57, %38, %23
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.zynqmp_eemi_ops* @zynqmp_pm_get_eemi_ops(...) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.zynqmp_eemi_ops*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
