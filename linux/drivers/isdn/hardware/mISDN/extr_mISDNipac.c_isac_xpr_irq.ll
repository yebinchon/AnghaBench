; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_xpr_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_xpr_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@FLG_BUSY_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac_hw*)* @isac_xpr_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isac_xpr_irq(%struct.isac_hw* %0) #0 {
  %2 = alloca %struct.isac_hw*, align 8
  store %struct.isac_hw* %0, %struct.isac_hw** %2, align 8
  %3 = load i32, i32* @FLG_BUSY_TIMER, align 4
  %4 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %5 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %7 = call i64 @test_and_clear_bit(i32 %3, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %11 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = call i32 @del_timer(i32* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %16 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %22 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %26 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %24, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %34 = call i32 @isac_fill_fifo(%struct.isac_hw* %33)
  br label %49

35:                                               ; preds = %20, %14
  %36 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %37 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %39)
  %41 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %42 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %41, i32 0, i32 0
  %43 = call i64 @get_next_dframe(%struct.TYPE_3__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %47 = call i32 @isac_fill_fifo(%struct.isac_hw* %46)
  br label %48

48:                                               ; preds = %45, %35
  br label %49

49:                                               ; preds = %48, %32
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @isac_fill_fifo(%struct.isac_hw*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

declare dso_local i64 @get_next_dframe(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
