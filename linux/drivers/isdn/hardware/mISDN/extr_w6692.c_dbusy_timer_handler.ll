; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_dbusy_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_dbusy_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dchannel = type { i64, i32, %struct.w6692_hw* }
%struct.w6692_hw = type { i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@FLG_BUSY_TIMER = common dso_local global i32 0, align 4
@W_D_RBCH = common dso_local global i32 0, align 4
@W_D_STAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: D-Channel Busy RBCH %02x STAR %02x\0A\00", align 1
@W_D_STAR_XBZ = common dso_local global i32 0, align 4
@FLG_L1_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: W6692 D-Channel Busy no tx_idx\0A\00", align 1
@W_D_CMDR = common dso_local global i32 0, align 4
@W_D_CMDR_XRST = common dso_local global i32 0, align 4
@dch = common dso_local global %struct.dchannel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dbusy_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbusy_timer_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.dchannel*, align 8
  %4 = alloca %struct.w6692_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %9 = ptrtoint %struct.dchannel* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @timer, align 4
  %12 = call %struct.dchannel* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.dchannel* %12, %struct.dchannel** %3, align 8
  %13 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %14 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %13, i32 0, i32 2
  %15 = load %struct.w6692_hw*, %struct.w6692_hw** %14, align 8
  store %struct.w6692_hw* %15, %struct.w6692_hw** %4, align 8
  %16 = load i32, i32* @FLG_BUSY_TIMER, align 4
  %17 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %18 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %1
  %22 = load %struct.w6692_hw*, %struct.w6692_hw** %4, align 8
  %23 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @spin_lock_irqsave(i32* %23, i32 %24)
  %26 = load %struct.w6692_hw*, %struct.w6692_hw** %4, align 8
  %27 = load i32, i32* @W_D_RBCH, align 4
  %28 = call i32 @ReadW6692(%struct.w6692_hw* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.w6692_hw*, %struct.w6692_hw** %4, align 8
  %30 = load i32, i32* @W_D_STAR, align 4
  %31 = call i32 @ReadW6692(%struct.w6692_hw* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.w6692_hw*, %struct.w6692_hw** %4, align 8
  %33 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @W_D_STAR_XBZ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %21
  %43 = load i32, i32* @FLG_L1_BUSY, align 4
  %44 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %45 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %44, i32 0, i32 1
  %46 = call i32 @test_and_set_bit(i32 %43, i32* %45)
  br label %69

47:                                               ; preds = %21
  %48 = load i32, i32* @FLG_BUSY_TIMER, align 4
  %49 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %50 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %49, i32 0, i32 1
  %51 = call i32 @test_and_clear_bit(i32 %48, i32* %50)
  %52 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %53 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %58 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %64

59:                                               ; preds = %47
  %60 = load %struct.w6692_hw*, %struct.w6692_hw** %4, align 8
  %61 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.w6692_hw*, %struct.w6692_hw** %4, align 8
  %66 = load i32, i32* @W_D_CMDR, align 4
  %67 = load i32, i32* @W_D_CMDR_XRST, align 4
  %68 = call i32 @WriteW6692(%struct.w6692_hw* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %42
  %70 = load %struct.w6692_hw*, %struct.w6692_hw** %4, align 8
  %71 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %70, i32 0, i32 0
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %1
  ret void
}

declare dso_local %struct.dchannel* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @ReadW6692(%struct.w6692_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @WriteW6692(%struct.w6692_hw*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
