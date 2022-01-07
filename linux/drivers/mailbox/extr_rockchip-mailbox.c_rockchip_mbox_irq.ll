; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_rockchip-mailbox.c_rockchip_mbox_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_rockchip-mailbox.c_rockchip_mbox_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_mbox = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MAILBOX_B2A_STATUS = common dso_local global i64 0, align 8
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rockchip_mbox_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_mbox_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rockchip_mbox*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.rockchip_mbox*
  store %struct.rockchip_mbox* %10, %struct.rockchip_mbox** %7, align 8
  %11 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %7, align 8
  %12 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAILBOX_B2A_STATUS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %52, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %7, align 8
  %20 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %7, align 8
  %33 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %31, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %7, align 8
  %45 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MAILBOX_B2A_STATUS, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel_relaxed(i32 %43, i64 %48)
  %50 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %30, %24
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %17

55:                                               ; preds = %17
  %56 = load i32, i32* @IRQ_NONE, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %41
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
