; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_setup_read_txfrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_setup_read_txfrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { i32, %struct.TYPE_2__, %struct.spi_transfer, %struct.spi_transfer, %struct.spi_message }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.spi_message = type { i32 }

@APPLESPI_PACKET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.applespi_data*)* @applespi_setup_read_txfrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applespi_setup_read_txfrs(%struct.applespi_data* %0) #0 {
  %2 = alloca %struct.applespi_data*, align 8
  %3 = alloca %struct.spi_message*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  store %struct.applespi_data* %0, %struct.applespi_data** %2, align 8
  %6 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %7 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %6, i32 0, i32 4
  store %struct.spi_message* %7, %struct.spi_message** %3, align 8
  %8 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %9 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %8, i32 0, i32 3
  store %struct.spi_transfer* %9, %struct.spi_transfer** %4, align 8
  %10 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %11 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %10, i32 0, i32 2
  store %struct.spi_transfer* %11, %struct.spi_transfer** %5, align 8
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %13 = call i32 @memset(%struct.spi_transfer* %12, i32 0, i32 12)
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %15 = call i32 @memset(%struct.spi_transfer* %14, i32 0, i32 12)
  %16 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %17 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %23 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @APPLESPI_PACKET_SIZE, align 4
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %31 = call i32 @spi_message_init(%struct.spi_message* %30)
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %33 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %34 = call i32 @spi_message_add_tail(%struct.spi_transfer* %32, %struct.spi_message* %33)
  %35 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %36 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %37 = call i32 @spi_message_add_tail(%struct.spi_transfer* %35, %struct.spi_message* %36)
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
