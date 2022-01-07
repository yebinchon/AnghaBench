; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_n64_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_n64_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.parport* }
%struct.parport = type { i32 }

@GC_N64_LENGTH = common dso_local global i32 0, align 4
@GC_N64_POWER_W = common dso_local global i8 0, align 1
@GC_N64_DWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc*, i64, i8)* @gc_n64_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_n64_send_command(%struct.gc* %0, i64 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.gc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.parport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.gc* %0, %struct.gc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %10 = load %struct.gc*, %struct.gc** %4, align 8
  %11 = getelementptr inbounds %struct.gc, %struct.gc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.parport*, %struct.parport** %13, align 8
  store %struct.parport* %14, %struct.parport** %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %43, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @GC_N64_LENGTH, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = lshr i64 %20, %22
  %24 = and i64 %23, 1
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 0, %29 ]
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %9, align 1
  %33 = load %struct.parport*, %struct.parport** %7, align 8
  %34 = load i8, i8* @GC_N64_POWER_W, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %9, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = trunc i32 %38 to i8
  %40 = call i32 @parport_write_data(%struct.parport* %33, i8 zeroext %39)
  %41 = load i32, i32* @GC_N64_DWS, align 4
  %42 = call i32 @udelay(i32 %41)
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %15

46:                                               ; preds = %15
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
