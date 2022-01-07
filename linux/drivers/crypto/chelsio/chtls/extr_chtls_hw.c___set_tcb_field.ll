; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c___set_tcb_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c___set_tcb_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_set_tcb_field = type { i32 }
%struct.chtls_sock = type { i32 }
%struct.ulptx_idata = type { i32 }

@CPL_PRIORITY_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32, i32)* @__set_tcb_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_tcb_field(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cpl_set_tcb_field*, align 8
  %16 = alloca %struct.chtls_sock*, align 8
  %17 = alloca %struct.ulptx_idata*, align 8
  %18 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = call i32 @roundup(i32 8, i32 16)
  store i32 %19, i32* %18, align 4
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %20)
  store %struct.chtls_sock* %21, %struct.chtls_sock** %16, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = load i32, i32* %18, align 4
  %24 = call i64 @__skb_put(%struct.sk_buff* %22, i32 %23)
  %25 = inttoptr i64 %24 to %struct.cpl_set_tcb_field*
  store %struct.cpl_set_tcb_field* %25, %struct.cpl_set_tcb_field** %15, align 8
  %26 = load %struct.chtls_sock*, %struct.chtls_sock** %16, align 8
  %27 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %15, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @__set_tcb_field_direct(%struct.chtls_sock* %26, %struct.cpl_set_tcb_field* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = load i32, i32* @CPL_PRIORITY_CONTROL, align 4
  %36 = load %struct.chtls_sock*, %struct.chtls_sock** %16, align 8
  %37 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @set_wr_txq(%struct.sk_buff* %34, i32 %35, i32 %38)
  ret void
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i64 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @__set_tcb_field_direct(%struct.chtls_sock*, %struct.cpl_set_tcb_field*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
