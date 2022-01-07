; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_td043mtea1_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_td043mtea1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.td043mtea1_panel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to write to LCD reg (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.td043mtea1_panel*, i32, i32)* @td043mtea1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @td043mtea1_write(%struct.td043mtea1_panel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.td043mtea1_panel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.td043mtea1_panel* %0, %struct.td043mtea1_panel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = call i32 @spi_message_init(%struct.spi_message* %7)
  %12 = call i32 @memset(%struct.spi_transfer* %8, i32 0, i32 16)
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 10
  %15 = or i32 %14, 256
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  store i32* %9, i32** %18, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  store i32 16, i32* %19, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  store i32 2, i32* %20, align 4
  %21 = call i32 @spi_message_add_tail(%struct.spi_transfer* %8, %struct.spi_message* %7)
  %22 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %23 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @spi_sync(%struct.TYPE_2__* %24, %struct.spi_message* %7)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %30 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %28, %3
  %36 = load i32, i32* %10, align 4
  ret i32 %36
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
