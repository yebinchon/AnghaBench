; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_spi.c_rmi_set_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_spi.c_rmi_set_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_spi_xport = type { i32 }
%struct.rmi_spi_cmd = type { i32, i32 }

@RMI_SPI_WRITE = common dso_local global i32 0, align 4
@RMI_PAGE_SELECT_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_spi_xport*, i32)* @rmi_set_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_set_page(%struct.rmi_spi_xport* %0, i32 %1) #0 {
  %3 = alloca %struct.rmi_spi_xport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmi_spi_cmd, align 4
  %6 = alloca i32, align 4
  store %struct.rmi_spi_xport* %0, %struct.rmi_spi_xport** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @RMI_SPI_WRITE, align 4
  %8 = getelementptr inbounds %struct.rmi_spi_cmd, %struct.rmi_spi_cmd* %5, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @RMI_PAGE_SELECT_REGISTER, align 4
  %10 = getelementptr inbounds %struct.rmi_spi_cmd, %struct.rmi_spi_cmd* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %3, align 8
  %12 = call i32 @rmi_spi_xfer(%struct.rmi_spi_xport* %11, %struct.rmi_spi_cmd* %5, i32* %4, i32 1, i32* null, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %3, align 8
  %18 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %6, align 4
  ret i32 %20
}

declare dso_local i32 @rmi_spi_xfer(%struct.rmi_spi_xport*, %struct.rmi_spi_cmd*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
