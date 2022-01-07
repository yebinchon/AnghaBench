; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_adi.c_adi_init_digital.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_adi.c_adi_init_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@adi_init_digital.seq = internal constant [10 x i32] [i32 4, i32 -2, i32 -3, i32 10, i32 -6, i32 -11, i32 -7, i32 -9, i32 11, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @adi_init_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adi_init_digital(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %45, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* @adi_init_digital.seq, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %4
  %11 = load %struct.gameport*, %struct.gameport** %2, align 8
  %12 = call i32 @gameport_trigger(%struct.gameport* %11)
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* @adi_init_digital.seq, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* @adi_init_digital.seq, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @msleep(i32 %22)
  br label %24

24:                                               ; preds = %18, %10
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* @adi_init_digital.seq, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* @adi_init_digital.seq, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @mdelay(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* @adi_init_digital.seq, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 0, %40
  %42 = mul nsw i32 %41, 14
  %43 = call i32 @udelay(i32 %42)
  br label %44

44:                                               ; preds = %30, %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %4

48:                                               ; preds = %4
  ret void
}

declare dso_local i32 @gameport_trigger(%struct.gameport*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
