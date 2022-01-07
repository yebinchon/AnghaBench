; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_scx200_acb.c_scx200_acb_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_scx200_acb.c_scx200_acb_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scx200_acb_iface = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@POLL_TIMEOUT = common dso_local global i64 0, align 8
@ACBST = common dso_local global i32 0, align 4
@ACBST_SDAST = common dso_local global i32 0, align 4
@ACBST_BER = common dso_local global i32 0, align 4
@ACBST_NEGACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"timeout in state %s\0A\00", align 1
@scx200_acb_state_name = common dso_local global i32* null, align 8
@state_idle = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scx200_acb_iface*)* @scx200_acb_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scx200_acb_poll(%struct.scx200_acb_iface* %0) #0 {
  %2 = alloca %struct.scx200_acb_iface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.scx200_acb_iface* %0, %struct.scx200_acb_iface** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i64, i64* @POLL_TIMEOUT, align 8
  %7 = add i64 %5, %6
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %1, %31
  %9 = load i32, i32* @ACBST, align 4
  %10 = call i32 @inb(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @ACBST, align 4
  %12 = call i32 @outb(i32 0, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ACBST_SDAST, align 4
  %15 = load i32, i32* @ACBST_BER, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ACBST_NEGACK, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %13, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %8
  %22 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @scx200_acb_machine(%struct.scx200_acb_iface* %22, i32 %23)
  br label %54

25:                                               ; preds = %8
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @time_after(i64 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %34

31:                                               ; preds = %25
  %32 = call i32 (...) @cpu_relax()
  %33 = call i32 (...) @cond_resched()
  br label %8

34:                                               ; preds = %30
  %35 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %2, align 8
  %36 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** @scx200_acb_state_name, align 8
  %39 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %2, align 8
  %40 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* @state_idle, align 8
  %46 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %2, align 8
  %47 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  %50 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %2, align 8
  %51 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %2, align 8
  %53 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %34, %21
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @scx200_acb_machine(%struct.scx200_acb_iface*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
