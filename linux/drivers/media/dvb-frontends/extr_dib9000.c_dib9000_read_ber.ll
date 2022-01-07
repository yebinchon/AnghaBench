; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib9000_state* }
%struct.dib9000_state = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@FE_SYNC_CHANNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FE_MM_R_FE_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @dib9000_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_read_ber(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dib9000_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dib9000_state*, %struct.dib9000_state** %10, align 8
  store %struct.dib9000_state* %11, %struct.dib9000_state** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %13 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %12, i32 0, i32 0
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINTR, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %74

20:                                               ; preds = %2
  %21 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %22 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i64 @mutex_lock_interruptible(i32* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINTR, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %69

31:                                               ; preds = %20
  %32 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %33 = load i32, i32* @FE_SYNC_CHANNEL, align 4
  %34 = call i64 @dib9000_fw_memmbx_sync(%struct.dib9000_state* %32, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %38 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %69

44:                                               ; preds = %31
  %45 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %46 = load i32, i32* @FE_MM_R_FE_MONITOR, align 4
  %47 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %48 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dib9000_risc_mem_read(%struct.dib9000_state* %45, i32 %46, i64 %49, i32 32)
  %51 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %52 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %57 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 10
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 16
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 11
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %44, %36, %27
  %70 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %71 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @dib9000_fw_memmbx_sync(%struct.dib9000_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dib9000_risc_mem_read(%struct.dib9000_state*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
