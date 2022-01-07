; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_sock_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_sock = type { %struct.TYPE_2__, i32, i32*, i32*, i32, %struct.chtls_dev*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.chtls_dev = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TXDATA_SKB_LEN = common dso_local global i32 0, align 4
@MAX_MSS = common dso_local global i32 0, align 4
@TLS_MFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.chtls_sock* (%struct.chtls_dev*)* @chtls_sock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.chtls_sock* @chtls_sock_create(%struct.chtls_dev* %0) #0 {
  %2 = alloca %struct.chtls_sock*, align 8
  %3 = alloca %struct.chtls_dev*, align 8
  %4 = alloca %struct.chtls_sock*, align 8
  store %struct.chtls_dev* %0, %struct.chtls_dev** %3, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.chtls_sock* @kzalloc(i32 64, i32 %5)
  store %struct.chtls_sock* %6, %struct.chtls_sock** %4, align 8
  %7 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %8 = icmp ne %struct.chtls_sock* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.chtls_sock* null, %struct.chtls_sock** %2, align 8
  br label %58

10:                                               ; preds = %1
  %11 = load i32, i32* @TXDATA_SKB_LEN, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call i32 @alloc_skb(i32 %11, i32 %12)
  %14 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %15 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %17 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %22 = call i32 @kfree(%struct.chtls_sock* %21)
  store %struct.chtls_sock* null, %struct.chtls_sock** %2, align 8
  br label %58

23:                                               ; preds = %10
  %24 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %25 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %24, i32 0, i32 6
  %26 = call i32 @kref_init(i32* %25)
  %27 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %28 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %29 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %28, i32 0, i32 5
  store %struct.chtls_dev* %27, %struct.chtls_dev** %29, align 8
  %30 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %31 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %30, i32 0, i32 4
  %32 = call i32 @skb_queue_head_init(i32* %31)
  %33 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %34 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %36 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* @MAX_MSS, align 4
  %38 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %39 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %41 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %44 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 -1, i32* %45, align 4
  %46 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %47 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 -1, i32* %48, align 8
  %49 = load i32, i32* @TLS_MFS, align 4
  %50 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %51 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 8
  %53 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %54 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = call i32 @skb_queue_head_init(i32* %55)
  %57 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  store %struct.chtls_sock* %57, %struct.chtls_sock** %2, align 8
  br label %58

58:                                               ; preds = %23, %20, %9
  %59 = load %struct.chtls_sock*, %struct.chtls_sock** %2, align 8
  ret %struct.chtls_sock* %59
}

declare dso_local %struct.chtls_sock* @kzalloc(i32, i32) #1

declare dso_local i32 @alloc_skb(i32, i32) #1

declare dso_local i32 @kfree(%struct.chtls_sock*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
