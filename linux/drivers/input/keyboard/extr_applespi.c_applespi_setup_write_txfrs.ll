; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_setup_write_txfrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_setup_write_txfrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { i32, i32, %struct.TYPE_2__, %struct.spi_transfer, %struct.spi_transfer, %struct.spi_transfer, %struct.spi_transfer, %struct.spi_message }
%struct.TYPE_2__ = type { i8* }
%struct.spi_transfer = type { i32, i32, i32, i8*, i32 }
%struct.spi_message = type { i32 }

@SPI_RW_CHG_DELAY_US = common dso_local global i8* null, align 8
@APPLESPI_PACKET_SIZE = common dso_local global i32 0, align 4
@APPLESPI_STATUS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.applespi_data*)* @applespi_setup_write_txfrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applespi_setup_write_txfrs(%struct.applespi_data* %0) #0 {
  %2 = alloca %struct.applespi_data*, align 8
  %3 = alloca %struct.spi_message*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  store %struct.applespi_data* %0, %struct.applespi_data** %2, align 8
  %8 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %9 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %8, i32 0, i32 7
  store %struct.spi_message* %9, %struct.spi_message** %3, align 8
  %10 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %11 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %10, i32 0, i32 6
  store %struct.spi_transfer* %11, %struct.spi_transfer** %4, align 8
  %12 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %13 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %12, i32 0, i32 5
  store %struct.spi_transfer* %13, %struct.spi_transfer** %5, align 8
  %14 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %15 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %14, i32 0, i32 4
  store %struct.spi_transfer* %15, %struct.spi_transfer** %6, align 8
  %16 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %17 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %16, i32 0, i32 3
  store %struct.spi_transfer* %17, %struct.spi_transfer** %7, align 8
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %19 = call i32 @memset(%struct.spi_transfer* %18, i32 0, i32 32)
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %21 = call i32 @memset(%struct.spi_transfer* %20, i32 0, i32 32)
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %23 = call i32 @memset(%struct.spi_transfer* %22, i32 0, i32 32)
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %25 = call i32 @memset(%struct.spi_transfer* %24, i32 0, i32 32)
  %26 = load i8*, i8** @SPI_RW_CHG_DELAY_US, align 8
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %32 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %38 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @APPLESPI_PACKET_SIZE, align 4
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** @SPI_RW_CHG_DELAY_US, align 8
  %46 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %49 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %52 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @APPLESPI_STATUS_SIZE, align 4
  %54 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %55 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %57 = call i32 @spi_message_init(%struct.spi_message* %56)
  %58 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %59 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %60 = call i32 @spi_message_add_tail(%struct.spi_transfer* %58, %struct.spi_message* %59)
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %62 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %63 = call i32 @spi_message_add_tail(%struct.spi_transfer* %61, %struct.spi_message* %62)
  %64 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %65 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %66 = call i32 @spi_message_add_tail(%struct.spi_transfer* %64, %struct.spi_message* %65)
  %67 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %68 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %69 = call i32 @spi_message_add_tail(%struct.spi_transfer* %67, %struct.spi_message* %68)
  ret void
}

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
