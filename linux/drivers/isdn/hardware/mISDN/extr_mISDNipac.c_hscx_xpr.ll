; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_xpr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_xpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hscx_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@FLG_TX_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hscx_hw*)* @hscx_xpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hscx_xpr(%struct.hscx_hw* %0) #0 {
  %2 = alloca %struct.hscx_hw*, align 8
  store %struct.hscx_hw* %0, %struct.hscx_hw** %2, align 8
  %3 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %4 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %10 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %14 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %12, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  %21 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %22 = call i32 @hscx_fill_fifo(%struct.hscx_hw* %21)
  br label %53

23:                                               ; preds = %8, %1
  %24 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %25 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %27)
  %29 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %30 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %29, i32 0, i32 0
  %31 = call i64 @get_next_bframe(%struct.TYPE_3__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %35 = call i32 @hscx_fill_fifo(%struct.hscx_hw* %34)
  %36 = load i32, i32* @FLG_TX_EMPTY, align 4
  %37 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %38 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = call i32 @test_and_clear_bit(i32 %36, i32* %39)
  br label %52

41:                                               ; preds = %23
  %42 = load i32, i32* @FLG_TX_EMPTY, align 4
  %43 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %44 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i64 @test_bit(i32 %42, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %50 = call i32 @hscx_fill_fifo(%struct.hscx_hw* %49)
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %20
  ret void
}

declare dso_local i32 @hscx_fill_fifo(%struct.hscx_hw*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

declare dso_local i64 @get_next_bframe(%struct.TYPE_3__*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
