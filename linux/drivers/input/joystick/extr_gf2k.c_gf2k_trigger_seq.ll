; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gf2k.c_gf2k_trigger_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gf2k.c_gf2k_trigger_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@GF2K_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*, i16*)* @gf2k_trigger_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf2k_trigger_seq(%struct.gameport* %0, i16* %1) #0 {
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %3, align 8
  store i16* %1, i16** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load %struct.gameport*, %struct.gameport** %3, align 8
  %12 = call i32 @gameport_trigger(%struct.gameport* %11)
  %13 = load %struct.gameport*, %struct.gameport** %3, align 8
  %14 = load i32, i32* @GF2K_TIMEOUT, align 4
  %15 = mul nsw i32 %14, 1000
  %16 = call i32 @gameport_time(%struct.gameport* %13, i32 %15)
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %27, %10
  %18 = load %struct.gameport*, %struct.gameport** %3, align 8
  %19 = call i32 @gameport_read(%struct.gameport* %18)
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i1 [ false, %17 ], [ %24, %22 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  br label %17

30:                                               ; preds = %25
  %31 = load i16*, i16** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = call i32 @udelay(i16 signext %35)
  br label %37

37:                                               ; preds = %30
  %38 = load i16*, i16** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %38, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = icmp ne i16 %43, 0
  br i1 %44, label %10, label %45

45:                                               ; preds = %37
  %46 = load %struct.gameport*, %struct.gameport** %3, align 8
  %47 = call i32 @gameport_trigger(%struct.gameport* %46)
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @local_irq_restore(i64 %48)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gameport_trigger(%struct.gameport*) #1

declare dso_local i32 @gameport_time(%struct.gameport*, i32) #1

declare dso_local i32 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @udelay(i16 signext) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
