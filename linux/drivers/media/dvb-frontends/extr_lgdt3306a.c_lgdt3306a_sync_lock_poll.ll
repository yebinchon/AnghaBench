; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_sync_lock_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_sync_lock_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }

@LG3306_UNLOCK = common dso_local global i32 0, align 4
@LG3306_SYNC_LOCK = common dso_local global i32 0, align 4
@LG3306_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"locked(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"not locked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*)* @lgdt3306a_sync_lock_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_sync_lock_poll(%struct.lgdt3306a_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lgdt3306a_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %3, align 8
  %6 = load i32, i32* @LG3306_UNLOCK, align 4
  store i32 %6, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = call i32 @msleep(i32 30)
  %12 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %13 = load i32, i32* @LG3306_SYNC_LOCK, align 4
  %14 = call i32 @lgdt3306a_check_lock_status(%struct.lgdt3306a_state* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @LG3306_LOCK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, ...) @dbg_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @LG3306_LOCK, align 4
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %7

26:                                               ; preds = %7
  %27 = call i32 (i8*, ...) @dbg_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @LG3306_UNLOCK, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lgdt3306a_check_lock_status(%struct.lgdt3306a_state*, i32) #1

declare dso_local i32 @dbg_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
