; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_n64_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_n64_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GC_N64_REQUEST_DATA = common dso_local global i32 0, align 4
@GC_N64_OUT = common dso_local global i32 0, align 4
@GC_N64_DELAY = common dso_local global i32 0, align 4
@GC_N64_LENGTH = common dso_local global i32 0, align 4
@GC_N64_POWER_R = common dso_local global i32 0, align 4
@GC_N64_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc*, i8*)* @gc_n64_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_n64_read_packet(%struct.gc* %0, i8* %1) #0 {
  %3 = alloca %struct.gc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.gc* %0, %struct.gc** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load %struct.gc*, %struct.gc** %3, align 8
  %10 = load i32, i32* @GC_N64_REQUEST_DATA, align 4
  %11 = load i32, i32* @GC_N64_OUT, align 4
  %12 = call i32 @gc_n64_send_command(%struct.gc* %9, i32 %10, i32 %11)
  %13 = load %struct.gc*, %struct.gc** %3, align 8
  %14 = load i32, i32* @GC_N64_OUT, align 4
  %15 = call i32 @gc_n64_send_stop_bit(%struct.gc* %13, i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @local_irq_restore(i64 %16)
  %18 = load i32, i32* @GC_N64_DELAY, align 4
  %19 = call i32 @udelay(i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %52, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GC_N64_LENGTH, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load %struct.gc*, %struct.gc** %3, align 8
  %26 = getelementptr inbounds %struct.gc, %struct.gc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GC_N64_POWER_R, align 4
  %31 = call i32 @parport_write_data(i32 %29, i32 %30)
  %32 = call i32 @udelay(i32 2)
  %33 = load %struct.gc*, %struct.gc** %3, align 8
  %34 = getelementptr inbounds %struct.gc, %struct.gc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call zeroext i8 @parport_read_status(i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 %38, i8* %42, align 1
  %43 = load %struct.gc*, %struct.gc** %3, align 8
  %44 = getelementptr inbounds %struct.gc, %struct.gc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GC_N64_POWER_R, align 4
  %49 = load i32, i32* @GC_N64_CLOCK, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @parport_write_data(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %24
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %20

55:                                               ; preds = %20
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gc_n64_send_command(%struct.gc*, i32, i32) #1

declare dso_local i32 @gc_n64_send_stop_bit(%struct.gc*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @parport_write_data(i32, i32) #1

declare dso_local zeroext i8 @parport_read_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
