; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_chtls_free_uld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_chtls_free_uld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32, %struct.chtls_dev*, i32*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@RSPQ_HASH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chtls_dev*)* @chtls_free_uld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_free_uld(%struct.chtls_dev* %0) #0 {
  %2 = alloca %struct.chtls_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.chtls_dev* %0, %struct.chtls_dev** %2, align 8
  %4 = load %struct.chtls_dev*, %struct.chtls_dev** %2, align 8
  %5 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %4, i32 0, i32 5
  %6 = call i32 @tls_unregister_device(i32* %5)
  %7 = load %struct.chtls_dev*, %struct.chtls_dev** %2, align 8
  %8 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @kvfree(i32 %10)
  %12 = load %struct.chtls_dev*, %struct.chtls_dev** %2, align 8
  %13 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %12, i32 0, i32 3
  %14 = call i32 @idr_destroy(i32* %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @RSPQ_HASH_BITS, align 4
  %18 = shl i32 1, %17
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.chtls_dev*, %struct.chtls_dev** %2, align 8
  %22 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree_skb(i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load %struct.chtls_dev*, %struct.chtls_dev** %2, align 8
  %34 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %33, i32 0, i32 1
  %35 = load %struct.chtls_dev*, %struct.chtls_dev** %34, align 8
  %36 = call i32 @kfree(%struct.chtls_dev* %35)
  %37 = load %struct.chtls_dev*, %struct.chtls_dev** %2, align 8
  %38 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @kfree_skb(i32 %39)
  %41 = load %struct.chtls_dev*, %struct.chtls_dev** %2, align 8
  %42 = call i32 @kfree(%struct.chtls_dev* %41)
  ret void
}

declare dso_local i32 @tls_unregister_device(i32*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @kfree(%struct.chtls_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
