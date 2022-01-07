; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_check_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_check_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2c = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@check_timer = common dso_local global i32 0, align 4
@SCB_STATUS_REG = common dso_local global i32 0, align 4
@LINESTAT_ABORT_DET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"abort condition detected by check timer\0A\00", align 1
@SCB_INT_MASK_REG = common dso_local global i32 0, align 4
@INT_SLAVE_EVENT = common dso_local global i32 0, align 4
@i2c = common dso_local global %struct.img_i2c* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @img_i2c_check_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_i2c_check_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.img_i2c*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %7 = ptrtoint %struct.img_i2c* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @check_timer, align 4
  %10 = call %struct.img_i2c* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.img_i2c* %10, %struct.img_i2c** %3, align 8
  %11 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %12 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %16 = load i32, i32* @SCB_STATUS_REG, align 4
  %17 = call i32 @img_i2c_readl(%struct.img_i2c* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @LINESTAT_ABORT_DET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %24 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %30 = load i32, i32* @SCB_INT_MASK_REG, align 4
  %31 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %32 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @INT_SLAVE_EVENT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @img_i2c_writel(%struct.img_i2c* %29, i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %22, %1
  %38 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %39 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %38, i32 0, i32 1
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local %struct.img_i2c* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @img_i2c_readl(%struct.img_i2c*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @img_i2c_writel(%struct.img_i2c*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
