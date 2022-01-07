; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_dbusy_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_dbusy_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.isac_hw = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.timer_list = type { i32 }

@dch = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@FLG_BUSY_TIMER = common dso_local global i32 0, align 4
@ISAC_RBCH = common dso_local global i32 0, align 4
@ISAC_STAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: D-Channel Busy RBCH %02x STAR %02x\0A\00", align 1
@ISAC_RBCH_XAC = common dso_local global i32 0, align 4
@FLG_L1_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: ISAC D-Channel Busy no tx_idx\0A\00", align 1
@ISAC_CMDR = common dso_local global i32 0, align 4
@isac = common dso_local global %struct.isac_hw* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dbusy_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbusy_timer_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.isac_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %8 = ptrtoint %struct.isac_hw* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dch, i32 0, i32 0), align 4
  %11 = call %struct.isac_hw* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.isac_hw* %11, %struct.isac_hw** %3, align 8
  %12 = load i32, i32* @FLG_BUSY_TIMER, align 4
  %13 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %14 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %1
  %19 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %20 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @spin_lock_irqsave(i32 %21, i32 %22)
  %24 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %25 = load i32, i32* @ISAC_RBCH, align 4
  %26 = call i32 @ReadISAC(%struct.isac_hw* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %28 = load i32, i32* @ISAC_STAR, align 4
  %29 = call i32 @ReadISAC(%struct.isac_hw* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %31 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ISAC_RBCH_XAC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %18
  %41 = load i32, i32* @FLG_L1_BUSY, align 4
  %42 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %43 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = call i32 @test_and_set_bit(i32 %41, i32* %44)
  br label %70

46:                                               ; preds = %18
  %47 = load i32, i32* @FLG_BUSY_TIMER, align 4
  %48 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %49 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = call i32 @test_and_clear_bit(i32 %47, i32* %50)
  %52 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %53 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %59 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %66

61:                                               ; preds = %46
  %62 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %63 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %68 = load i32, i32* @ISAC_CMDR, align 4
  %69 = call i32 @WriteISAC(%struct.isac_hw* %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %66, %40
  %71 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %72 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @spin_unlock_irqrestore(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %1
  ret void
}

declare dso_local %struct.isac_hw* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i32) #1

declare dso_local i32 @ReadISAC(%struct.isac_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @WriteISAC(%struct.isac_hw*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
