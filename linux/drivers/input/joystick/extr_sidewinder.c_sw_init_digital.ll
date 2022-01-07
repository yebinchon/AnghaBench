; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_sidewinder.c_sw_init_digital.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_sidewinder.c_sw_init_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@sw_init_digital.seq = internal constant [4 x i32] [i32 140, i32 865, i32 440, i32 0], align 16
@SW_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @sw_init_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_init_digital(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %34, %1
  %9 = load %struct.gameport*, %struct.gameport** %2, align 8
  %10 = call i32 @gameport_trigger(%struct.gameport* %9)
  %11 = load %struct.gameport*, %struct.gameport** %2, align 8
  %12 = load i32, i32* @SW_TIMEOUT, align 4
  %13 = mul nsw i32 %12, 1000
  %14 = call i32 @gameport_time(%struct.gameport* %11, i32 %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %25, %8
  %16 = load %struct.gameport*, %struct.gameport** %2, align 8
  %17 = call i32 @gameport_read(%struct.gameport* %16)
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i1 [ false, %15 ], [ %22, %20 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %5, align 4
  br label %15

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* @sw_init_digital.seq, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @udelay(i32 %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* @sw_init_digital.seq, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %8, label %41

41:                                               ; preds = %34
  %42 = load %struct.gameport*, %struct.gameport** %2, align 8
  %43 = call i32 @gameport_trigger(%struct.gameport* %42)
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @local_irq_restore(i64 %44)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gameport_trigger(%struct.gameport*) #1

declare dso_local i32 @gameport_time(%struct.gameport*, i32) #1

declare dso_local i32 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
