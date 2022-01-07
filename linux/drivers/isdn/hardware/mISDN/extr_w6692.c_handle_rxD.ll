; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_handle_rxD.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_handle_rxD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@W_D_RSTA = common dso_local global i32 0, align 4
@W_D_RSTA_RDOV = common dso_local global i32 0, align 4
@W_D_RSTA_CRCE = common dso_local global i32 0, align 4
@W_D_RSTA_RMB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: D-channel RDOV\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: D-channel CRC error\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: D-channel ABORT\0A\00", align 1
@W_D_CMDR = common dso_local global i32 0, align 4
@W_D_CMDR_RACK = common dso_local global i32 0, align 4
@W_D_CMDR_RRST = common dso_local global i32 0, align 4
@W_D_RBCL = common dso_local global i32 0, align 4
@W_D_FIFO_THRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_hw*)* @handle_rxD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rxD(%struct.w6692_hw* %0) #0 {
  %2 = alloca %struct.w6692_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.w6692_hw* %0, %struct.w6692_hw** %2, align 8
  %5 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %6 = load i32, i32* @W_D_RSTA, align 4
  %7 = call i32 @ReadW6692(%struct.w6692_hw* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @W_D_RSTA_RDOV, align 4
  %10 = load i32, i32* @W_D_RSTA_CRCE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @W_D_RSTA_RMB, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %8, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %61

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @W_D_RSTA_RDOV, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %23 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @W_D_RSTA_CRCE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %33 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @W_D_RSTA_RMB, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %43 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %48 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @dev_kfree_skb(i32* %50)
  %52 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %53 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %56 = load i32, i32* @W_D_CMDR, align 4
  %57 = load i32, i32* @W_D_CMDR_RACK, align 4
  %58 = load i32, i32* @W_D_CMDR_RRST, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @WriteW6692(%struct.w6692_hw* %55, i32 %56, i32 %59)
  br label %79

61:                                               ; preds = %1
  %62 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %63 = load i32, i32* @W_D_RBCL, align 4
  %64 = call i32 @ReadW6692(%struct.w6692_hw* %62, i32 %63)
  %65 = load i32, i32* @W_D_FIFO_THRESH, align 4
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %64, %66
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @W_D_FIFO_THRESH, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %61
  %73 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @W6692_empty_Dfifo(%struct.w6692_hw* %73, i32 %74)
  %76 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %77 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %76, i32 0, i32 0
  %78 = call i32 @recv_Dchannel(%struct.TYPE_2__* %77)
  br label %79

79:                                               ; preds = %72, %46
  ret void
}

declare dso_local i32 @ReadW6692(%struct.w6692_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @WriteW6692(%struct.w6692_hw*, i32, i32) #1

declare dso_local i32 @W6692_empty_Dfifo(%struct.w6692_hw*, i32) #1

declare dso_local i32 @recv_Dchannel(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
