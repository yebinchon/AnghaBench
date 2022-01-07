; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_chtls_get_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_chtls_get_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_dev*)* @chtls_get_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_get_skb(%struct.chtls_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.chtls_dev*, align 8
  store %struct.chtls_dev* %0, %struct.chtls_dev** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.TYPE_4__* @alloc_skb(i32 4, i32 %4)
  %6 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %7 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %6, i32 0, i32 0
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %7, align 8
  %8 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %9 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %17 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @skb_put(%struct.TYPE_4__* %18, i32 4)
  %20 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %21 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @skb_reset_transport_header(%struct.TYPE_4__* %22)
  %24 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %25 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %30 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memset(i32 %28, i32 0, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %15, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_4__* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.TYPE_4__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
