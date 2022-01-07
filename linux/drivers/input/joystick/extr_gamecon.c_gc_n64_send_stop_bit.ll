; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_n64_send_stop_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_n64_send_stop_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.parport* }
%struct.parport = type { i32 }

@GC_N64_STOP_LENGTH = common dso_local global i32 0, align 4
@GC_N64_STOP_BIT = common dso_local global i32 0, align 4
@GC_N64_POWER_W = common dso_local global i8 0, align 1
@GC_N64_DWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc*, i8)* @gc_n64_send_stop_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_n64_send_stop_bit(%struct.gc* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.gc*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.parport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.gc* %0, %struct.gc** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.gc*, %struct.gc** %3, align 8
  %9 = getelementptr inbounds %struct.gc, %struct.gc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.parport*, %struct.parport** %11, align 8
  store %struct.parport* %12, %struct.parport** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %40, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @GC_N64_STOP_LENGTH, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i32, i32* @GC_N64_STOP_BIT, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %18, %19
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  br label %27

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 0, %26 ]
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %7, align 1
  %30 = load %struct.parport*, %struct.parport** %5, align 8
  %31 = load i8, i8* @GC_N64_POWER_W, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %7, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %32, %34
  %36 = trunc i32 %35 to i8
  %37 = call i32 @parport_write_data(%struct.parport* %30, i8 zeroext %36)
  %38 = load i32, i32* @GC_N64_DWS, align 4
  %39 = call i32 @udelay(i32 %38)
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %13

43:                                               ; preds = %13
  ret void
}

declare dso_local i32 @parport_write_data(%struct.parport*, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
