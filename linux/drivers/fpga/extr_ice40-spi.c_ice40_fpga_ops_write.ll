; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_ice40-spi.c_ice40_fpga_ops_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_ice40-spi.c_ice40_fpga_ops_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.ice40_fpga_priv* }
%struct.ice40_fpga_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, i8*, i64)* @ice40_fpga_ops_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice40_fpga_ops_write(%struct.fpga_manager* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.fpga_manager*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ice40_fpga_priv*, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %9 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %8, i32 0, i32 0
  %10 = load %struct.ice40_fpga_priv*, %struct.ice40_fpga_priv** %9, align 8
  store %struct.ice40_fpga_priv* %10, %struct.ice40_fpga_priv** %7, align 8
  %11 = load %struct.ice40_fpga_priv*, %struct.ice40_fpga_priv** %7, align 8
  %12 = getelementptr inbounds %struct.ice40_fpga_priv, %struct.ice40_fpga_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spi_write(i32 %13, i8* %14, i64 %15)
  ret i32 %16
}

declare dso_local i32 @spi_write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
