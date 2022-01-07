; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_skb_to_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_skb_to_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hsi_msg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.hsi_msg*)* @ssip_skb_to_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_skb_to_msg(%struct.sk_buff* %0, %struct.hsi_msg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hsi_msg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.hsi_msg* %1, %struct.hsi_msg** %4, align 8
  %8 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %9 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = icmp ne i32 %11, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %21 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  store %struct.scatterlist* %23, %struct.scatterlist** %6, align 8
  %24 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @skb_headlen(%struct.sk_buff* %28)
  %30 = call i32 @sg_set_buf(%struct.scatterlist* %24, i32 %27, i32 %29)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %61, %2
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %31
  %39 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %40 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %39)
  store %struct.scatterlist* %40, %struct.scatterlist** %6, align 8
  %41 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %42 = icmp ne %struct.scatterlist* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %5, align 8
  %53 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @skb_frag_page(i32* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @skb_frag_size(i32* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @skb_frag_off(i32* %58)
  %60 = call i32 @sg_set_page(%struct.scatterlist* %53, i32 %55, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %38
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %31

64:                                               ; preds = %31
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
