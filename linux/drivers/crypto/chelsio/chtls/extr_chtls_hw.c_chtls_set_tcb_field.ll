; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c_chtls_set_tcb_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c_chtls_set_tcb_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.cpl_set_tcb_field = type { i32 }
%struct.chtls_sock = type { i32, i32, i32, i32 }
%struct.ulptx_idata = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, i32, i32)* @chtls_set_tcb_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_set_tcb_field(%struct.sock* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpl_set_tcb_field*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.chtls_sock*, align 8
  %13 = alloca %struct.ulptx_idata*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = call i32 @roundup(i32 8, i32 16)
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %14, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %76

26:                                               ; preds = %4
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @DIV_ROUND_UP(i32 %27, i32 16)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %29)
  store %struct.chtls_sock* %30, %struct.chtls_sock** %12, align 8
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @__set_tcb_field(%struct.sock* %31, %struct.sk_buff* %32, i32 %33, i32 %34, i32 %35, i32 0, i32 1)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %38 = load %struct.chtls_sock*, %struct.chtls_sock** %12, align 8
  %39 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 1
  %42 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %37, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.chtls_sock*, %struct.chtls_sock** %12, align 8
  %47 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.chtls_sock*, %struct.chtls_sock** %12, align 8
  %52 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.chtls_sock*, %struct.chtls_sock** %12, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %57 = call i32 @enqueue_wr(%struct.chtls_sock* %55, %struct.sk_buff* %56)
  %58 = load %struct.chtls_sock*, %struct.chtls_sock** %12, align 8
  %59 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %62 = call i32 @cxgb4_ofld_send(i32 %60, %struct.sk_buff* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %26
  %66 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %67 = call i32 @kfree_skb(%struct.sk_buff* %66)
  br label %68

68:                                               ; preds = %65, %26
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %16, align 4
  br label %74

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %23
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @__set_tcb_field(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @enqueue_wr(%struct.chtls_sock*, %struct.sk_buff*) #1

declare dso_local i32 @cxgb4_ofld_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
