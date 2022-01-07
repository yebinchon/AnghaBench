; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_context_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_context_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i32, %struct.fw_ohci* }
%struct.fw_ohci = type { i32 }

@CONTEXT_RUN = common dso_local global i32 0, align 4
@CONTEXT_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DMA context still active (0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @context_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_stop(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca %struct.fw_ohci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %6 = load %struct.context*, %struct.context** %2, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 2
  %8 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  store %struct.fw_ohci* %8, %struct.fw_ohci** %3, align 8
  %9 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %10 = load %struct.context*, %struct.context** %2, align 8
  %11 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CONTROL_CLEAR(i32 %12)
  %14 = load i32, i32* @CONTEXT_RUN, align 4
  %15 = call i32 @reg_write(%struct.fw_ohci* %9, i32 %13, i32 %14)
  %16 = load %struct.context*, %struct.context** %2, align 8
  %17 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %39, %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 1000
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %23 = load %struct.context*, %struct.context** %2, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CONTROL_SET(i32 %25)
  %27 = call i32 @reg_read(%struct.fw_ohci* %22, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @CONTEXT_ACTIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %46

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @udelay(i32 10)
  br label %38

38:                                               ; preds = %36, %33
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ohci_err(%struct.fw_ohci* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %32
  ret void
}

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @CONTROL_CLEAR(i32) #1

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @CONTROL_SET(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ohci_err(%struct.fw_ohci*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
