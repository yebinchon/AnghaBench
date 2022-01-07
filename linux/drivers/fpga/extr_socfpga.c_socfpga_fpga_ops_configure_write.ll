; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_ops_configure_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_ops_configure_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.socfpga_fpga_priv* }
%struct.socfpga_fpga_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, i8*, i64)* @socfpga_fpga_ops_configure_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_fpga_ops_configure_write(%struct.fpga_manager* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpga_manager*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.socfpga_fpga_priv*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %12 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %11, i32 0, i32 0
  %13 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %12, align 8
  store %struct.socfpga_fpga_priv* %13, %struct.socfpga_fpga_priv** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ule i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %69

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %25, %21
  %23 = load i64, i64* %7, align 8
  %24 = icmp uge i64 %23, 4
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %10, align 8
  %30 = getelementptr inbounds i32, i32* %27, i64 %28
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @socfpga_fpga_data_writel(%struct.socfpga_fpga_priv* %26, i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %33, 4
  store i64 %34, i64* %7, align 8
  br label %22

35:                                               ; preds = %22
  %36 = load i64, i64* %7, align 8
  switch i64 %36, label %65 [
    i64 3, label %37
    i64 2, label %46
    i64 1, label %55
    i64 0, label %64
  ]

37:                                               ; preds = %35
  %38 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %10, align 8
  %42 = getelementptr inbounds i32, i32* %39, i64 %40
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 16777215
  %45 = call i32 @socfpga_fpga_data_writel(%struct.socfpga_fpga_priv* %38, i32 %44)
  br label %68

46:                                               ; preds = %35
  %47 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %10, align 8
  %51 = getelementptr inbounds i32, i32* %48, i64 %49
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 65535
  %54 = call i32 @socfpga_fpga_data_writel(%struct.socfpga_fpga_priv* %47, i32 %53)
  br label %68

55:                                               ; preds = %35
  %56 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  %60 = getelementptr inbounds i32, i32* %57, i64 %58
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 255
  %63 = call i32 @socfpga_fpga_data_writel(%struct.socfpga_fpga_priv* %56, i32 %62)
  br label %68

64:                                               ; preds = %35
  br label %68

65:                                               ; preds = %35
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %64, %55, %46, %37
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %65, %18
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @socfpga_fpga_data_writel(%struct.socfpga_fpga_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
