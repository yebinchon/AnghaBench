; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_bc_next_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_bc_next_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_ch = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@FLG_TX_EMPTY = common dso_local global i32 0, align 4
@FLG_FILLEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tiger_ch*)* @bc_next_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bc_next_frame(%struct.tiger_ch* %0) #0 {
  %2 = alloca %struct.tiger_ch*, align 8
  %3 = alloca i32, align 4
  store %struct.tiger_ch* %0, %struct.tiger_ch** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.tiger_ch*, %struct.tiger_ch** %2, align 8
  %5 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.tiger_ch*, %struct.tiger_ch** %2, align 8
  %11 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tiger_ch*, %struct.tiger_ch** %2, align 8
  %15 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %13, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %9
  %22 = load %struct.tiger_ch*, %struct.tiger_ch** %2, align 8
  %23 = call i32 @fill_dma(%struct.tiger_ch* %22)
  br label %69

24:                                               ; preds = %9, %1
  %25 = load %struct.tiger_ch*, %struct.tiger_ch** %2, align 8
  %26 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %28)
  %30 = load %struct.tiger_ch*, %struct.tiger_ch** %2, align 8
  %31 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %30, i32 0, i32 0
  %32 = call i64 @get_next_bframe(%struct.TYPE_3__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load %struct.tiger_ch*, %struct.tiger_ch** %2, align 8
  %36 = call i32 @fill_dma(%struct.tiger_ch* %35)
  %37 = load i32, i32* @FLG_TX_EMPTY, align 4
  %38 = load %struct.tiger_ch*, %struct.tiger_ch** %2, align 8
  %39 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = call i32 @test_and_clear_bit(i32 %37, i32* %40)
  br label %68

42:                                               ; preds = %24
  %43 = load i32, i32* @FLG_TX_EMPTY, align 4
  %44 = load %struct.tiger_ch*, %struct.tiger_ch** %2, align 8
  %45 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = call i64 @test_bit(i32 %43, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.tiger_ch*, %struct.tiger_ch** %2, align 8
  %51 = call i32 @fill_dma(%struct.tiger_ch* %50)
  br label %67

52:                                               ; preds = %42
  %53 = load i32, i32* @FLG_FILLEMPTY, align 4
  %54 = load %struct.tiger_ch*, %struct.tiger_ch** %2, align 8
  %55 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = call i64 @test_bit(i32 %53, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* @FLG_TX_EMPTY, align 4
  %61 = load %struct.tiger_ch*, %struct.tiger_ch** %2, align 8
  %62 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = call i32 @test_and_set_bit(i32 %60, i32* %63)
  store i32 0, i32* %3, align 4
  br label %66

65:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %59
  br label %67

67:                                               ; preds = %66, %49
  br label %68

68:                                               ; preds = %67, %34
  br label %69

69:                                               ; preds = %68, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @fill_dma(%struct.tiger_ch*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

declare dso_local i64 @get_next_bframe(%struct.TYPE_3__*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
