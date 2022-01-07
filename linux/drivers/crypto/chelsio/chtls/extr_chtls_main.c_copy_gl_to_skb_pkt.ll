; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_copy_gl_to_skb_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_copy_gl_to_skb_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.pkt_gl = type { i64, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.pkt_gl*, i32*, i64)* @copy_gl_to_skb_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @copy_gl_to_skb_pkt(%struct.pkt_gl* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.pkt_gl*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.pkt_gl* %0, %struct.pkt_gl** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %10 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, 4
  %13 = load i64, i64* %7, align 8
  %14 = sub i64 %12, %13
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @alloc_skb(i64 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %49

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %27 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 4
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %29, %30
  %32 = call i32 @__skb_put(%struct.sk_buff* %25, i64 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %33, i32* %34, i32 4)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %38 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %43 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %36, i32 4, i64 %41, i64 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %48, %struct.sk_buff** %4, align 8
  br label %49

49:                                               ; preds = %24, %23
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %50
}

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
