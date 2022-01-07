; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_rockchip-mailbox.c_rockchip_mbox_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_rockchip-mailbox.c_rockchip_mbox_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_mbox_msg = type { i32 }
%struct.rockchip_mbox = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i32, %struct.rockchip_mbox_msg* }

@.str = private unnamed_addr constant [31 x i8] c"Chan[%d]: B2A message is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Chan[%d]: B2A message, cmd 0x%08x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rockchip_mbox_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_mbox_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rockchip_mbox_msg*, align 8
  %7 = alloca %struct.rockchip_mbox*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.rockchip_mbox_msg* null, %struct.rockchip_mbox_msg** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rockchip_mbox*
  store %struct.rockchip_mbox* %9, %struct.rockchip_mbox** %7, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %73, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %7, align 8
  %13 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %76

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %7, align 8
  %20 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %18, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %73

29:                                               ; preds = %17
  %30 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %7, align 8
  %31 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.rockchip_mbox_msg*, %struct.rockchip_mbox_msg** %36, align 8
  store %struct.rockchip_mbox_msg* %37, %struct.rockchip_mbox_msg** %6, align 8
  %38 = load %struct.rockchip_mbox_msg*, %struct.rockchip_mbox_msg** %6, align 8
  %39 = icmp ne %struct.rockchip_mbox_msg* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %29
  %41 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %7, align 8
  %42 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %76

47:                                               ; preds = %29
  %48 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %7, align 8
  %49 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load %struct.rockchip_mbox_msg*, %struct.rockchip_mbox_msg** %6, align 8
  %56 = call i32 @mbox_chan_received_data(i32* %54, %struct.rockchip_mbox_msg* %55)
  %57 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %7, align 8
  %58 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store %struct.rockchip_mbox_msg* null, %struct.rockchip_mbox_msg** %63, align 8
  %64 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %7, align 8
  %65 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.rockchip_mbox_msg*, %struct.rockchip_mbox_msg** %6, align 8
  %70 = getelementptr inbounds %struct.rockchip_mbox_msg, %struct.rockchip_mbox_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %71)
  br label %76

73:                                               ; preds = %28
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %10

76:                                               ; preds = %47, %40, %10
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %77
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mbox_chan_received_data(i32*, %struct.rockchip_mbox_msg*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
