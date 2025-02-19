; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_maceps2.c_maceps2_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_maceps2.c_maceps2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i64 }
%struct.mace_ps2port = type { i32, i8 }
%struct.maceps2_data = type { %struct.mace_ps2port* }

@MACE_PS2_TIMEOUT = common dso_local global i32 0, align 4
@PS2_STATUS_TX_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @maceps2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maceps2_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.mace_ps2port*, align 8
  %7 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.maceps2_data*
  %12 = getelementptr inbounds %struct.maceps2_data, %struct.maceps2_data* %11, i32 0, i32 0
  %13 = load %struct.mace_ps2port*, %struct.mace_ps2port** %12, align 8
  store %struct.mace_ps2port* %13, %struct.mace_ps2port** %6, align 8
  %14 = load i32, i32* @MACE_PS2_TIMEOUT, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %28, %2
  %16 = load %struct.mace_ps2port*, %struct.mace_ps2port** %6, align 8
  %17 = getelementptr inbounds %struct.mace_ps2port, %struct.mace_ps2port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PS2_STATUS_TX_EMPTY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i8, i8* %5, align 1
  %24 = load %struct.mace_ps2port*, %struct.mace_ps2port** %6, align 8
  %25 = getelementptr inbounds %struct.mace_ps2port, %struct.mace_ps2port* %24, i32 0, i32 1
  store i8 %23, i8* %25, align 4
  store i32 0, i32* %3, align 4
  br label %33

26:                                               ; preds = %15
  %27 = call i32 @udelay(i32 50)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %15, label %32

32:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
