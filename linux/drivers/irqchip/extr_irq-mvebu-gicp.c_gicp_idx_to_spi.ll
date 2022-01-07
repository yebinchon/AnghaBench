; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-gicp.c_gicp_idx_to_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-gicp.c_gicp_idx_to_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_gicp = type { i32, %struct.mvebu_gicp_spi_range* }
%struct.mvebu_gicp_spi_range = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_gicp*, i32)* @gicp_idx_to_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gicp_idx_to_spi(%struct.mvebu_gicp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvebu_gicp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvebu_gicp_spi_range*, align 8
  store %struct.mvebu_gicp* %0, %struct.mvebu_gicp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %38, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %11 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  %15 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %4, align 8
  %16 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %15, i32 0, i32 1
  %17 = load %struct.mvebu_gicp_spi_range*, %struct.mvebu_gicp_spi_range** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mvebu_gicp_spi_range, %struct.mvebu_gicp_spi_range* %17, i64 %19
  store %struct.mvebu_gicp_spi_range* %20, %struct.mvebu_gicp_spi_range** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mvebu_gicp_spi_range*, %struct.mvebu_gicp_spi_range** %7, align 8
  %23 = getelementptr inbounds %struct.mvebu_gicp_spi_range, %struct.mvebu_gicp_spi_range* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %14
  %27 = load %struct.mvebu_gicp_spi_range*, %struct.mvebu_gicp_spi_range** %7, align 8
  %28 = getelementptr inbounds %struct.mvebu_gicp_spi_range, %struct.mvebu_gicp_spi_range* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %14
  %33 = load %struct.mvebu_gicp_spi_range*, %struct.mvebu_gicp_spi_range** %7, align 8
  %34 = getelementptr inbounds %struct.mvebu_gicp_spi_range, %struct.mvebu_gicp_spi_range* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %8

41:                                               ; preds = %8
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %26
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
