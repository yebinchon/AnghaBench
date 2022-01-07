; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_setva.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_setva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i32, i64, i32, i32, i32**, i32 }
%struct.sk_buff = type { i32 }

@FLG_MOD128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.layer2*, i32)* @setva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setva(%struct.layer2* %0, i32 %1) #0 {
  %3 = alloca %struct.layer2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.layer2* %0, %struct.layer2** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %70, %2
  %7 = load %struct.layer2*, %struct.layer2** %3, align 8
  %8 = getelementptr inbounds %struct.layer2, %struct.layer2* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %82

12:                                               ; preds = %6
  %13 = load %struct.layer2*, %struct.layer2** %3, align 8
  %14 = getelementptr inbounds %struct.layer2, %struct.layer2* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* @FLG_MOD128, align 4
  %18 = load %struct.layer2*, %struct.layer2** %3, align 8
  %19 = getelementptr inbounds %struct.layer2, %struct.layer2* %18, i32 0, i32 5
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.layer2*, %struct.layer2** %3, align 8
  %24 = getelementptr inbounds %struct.layer2, %struct.layer2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = urem i32 %25, 128
  store i32 %26, i32* %24, align 8
  br label %32

27:                                               ; preds = %12
  %28 = load %struct.layer2*, %struct.layer2** %3, align 8
  %29 = getelementptr inbounds %struct.layer2, %struct.layer2* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = urem i32 %30, 8
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.layer2*, %struct.layer2** %3, align 8
  %34 = getelementptr inbounds %struct.layer2, %struct.layer2* %33, i32 0, i32 4
  %35 = load i32**, i32*** %34, align 8
  %36 = load %struct.layer2*, %struct.layer2** %3, align 8
  %37 = getelementptr inbounds %struct.layer2, %struct.layer2* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32*, i32** %35, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %70

42:                                               ; preds = %32
  %43 = load %struct.layer2*, %struct.layer2** %3, align 8
  %44 = getelementptr inbounds %struct.layer2, %struct.layer2* %43, i32 0, i32 4
  %45 = load i32**, i32*** %44, align 8
  %46 = load %struct.layer2*, %struct.layer2** %3, align 8
  %47 = getelementptr inbounds %struct.layer2, %struct.layer2* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @skb_trim(i32* %50, i32 0)
  %52 = load %struct.layer2*, %struct.layer2** %3, align 8
  %53 = getelementptr inbounds %struct.layer2, %struct.layer2* %52, i32 0, i32 3
  %54 = load %struct.layer2*, %struct.layer2** %3, align 8
  %55 = getelementptr inbounds %struct.layer2, %struct.layer2* %54, i32 0, i32 4
  %56 = load i32**, i32*** %55, align 8
  %57 = load %struct.layer2*, %struct.layer2** %3, align 8
  %58 = getelementptr inbounds %struct.layer2, %struct.layer2* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32*, i32** %56, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @skb_queue_tail(i32* %53, i32* %61)
  %63 = load %struct.layer2*, %struct.layer2** %3, align 8
  %64 = getelementptr inbounds %struct.layer2, %struct.layer2* %63, i32 0, i32 4
  %65 = load i32**, i32*** %64, align 8
  %66 = load %struct.layer2*, %struct.layer2** %3, align 8
  %67 = getelementptr inbounds %struct.layer2, %struct.layer2* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32*, i32** %65, i64 %68
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %42, %32
  %71 = load %struct.layer2*, %struct.layer2** %3, align 8
  %72 = getelementptr inbounds %struct.layer2, %struct.layer2* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  %75 = load %struct.layer2*, %struct.layer2** %3, align 8
  %76 = getelementptr inbounds %struct.layer2, %struct.layer2* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = urem i64 %74, %78
  %80 = load %struct.layer2*, %struct.layer2** %3, align 8
  %81 = getelementptr inbounds %struct.layer2, %struct.layer2* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  br label %6

82:                                               ; preds = %6
  %83 = load %struct.layer2*, %struct.layer2** %3, align 8
  %84 = getelementptr inbounds %struct.layer2, %struct.layer2* %83, i32 0, i32 3
  %85 = call %struct.sk_buff* @skb_dequeue(i32* %84)
  store %struct.sk_buff* %85, %struct.sk_buff** %5, align 8
  br label %86

86:                                               ; preds = %89, %82
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = icmp ne %struct.sk_buff* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @dev_kfree_skb(%struct.sk_buff* %90)
  %92 = load %struct.layer2*, %struct.layer2** %3, align 8
  %93 = getelementptr inbounds %struct.layer2, %struct.layer2* %92, i32 0, i32 3
  %94 = call %struct.sk_buff* @skb_dequeue(i32* %93)
  store %struct.sk_buff* %94, %struct.sk_buff** %5, align 8
  br label %86

95:                                               ; preds = %86
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_trim(i32*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
