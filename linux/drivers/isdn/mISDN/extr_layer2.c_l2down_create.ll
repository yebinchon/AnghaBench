; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2down_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2down_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mISDNhead = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.layer2*, i8*, i8*, i32, i8*)* @l2down_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2down_create(%struct.layer2* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.layer2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mISDNhead*, align 8
  store %struct.layer2* %0, %struct.layer2** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.sk_buff* @mI_alloc_skb(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %12, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %50

23:                                               ; preds = %5
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = call %struct.mISDNhead* @mISDN_HEAD_P(%struct.sk_buff* %24)
  store %struct.mISDNhead* %25, %struct.mISDNhead** %14, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.mISDNhead*, %struct.mISDNhead** %14, align 8
  %28 = getelementptr inbounds %struct.mISDNhead, %struct.mISDNhead* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.mISDNhead*, %struct.mISDNhead** %14, align 8
  %31 = getelementptr inbounds %struct.mISDNhead, %struct.mISDNhead* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @skb_put_data(%struct.sk_buff* %35, i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %23
  %40 = load %struct.layer2*, %struct.layer2** %7, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %42 = call i32 @l2down_raw(%struct.layer2* %40, %struct.sk_buff* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %47 = call i32 @dev_kfree_skb(%struct.sk_buff* %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %20
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.sk_buff* @mI_alloc_skb(i32, i32) #1

declare dso_local %struct.mISDNhead* @mISDN_HEAD_P(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @l2down_raw(%struct.layer2*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
