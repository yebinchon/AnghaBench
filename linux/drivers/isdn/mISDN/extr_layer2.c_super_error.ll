; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_super_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_super_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i32 }
%struct.sk_buff = type { i64 }

@FLG_MOD128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.layer2*, %struct.sk_buff*)* @super_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_error(%struct.layer2* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.layer2*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.layer2* %0, %struct.layer2** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.layer2*, %struct.layer2** %4, align 8
  %10 = call i64 @l2addrsize(%struct.layer2* %9)
  %11 = load i32, i32* @FLG_MOD128, align 4
  %12 = load %struct.layer2*, %struct.layer2** %4, align 8
  %13 = getelementptr inbounds %struct.layer2, %struct.layer2* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 1
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %10, %18
  %20 = icmp ne i64 %8, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 78, i32* %3, align 4
  br label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @l2addrsize(%struct.layer2*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
