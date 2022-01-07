; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_desc_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_desc_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_desc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_desc**, %struct.at_desc**, %struct.at_desc*)* @atc_desc_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atc_desc_chain(%struct.at_desc** %0, %struct.at_desc** %1, %struct.at_desc* %2) #0 {
  %4 = alloca %struct.at_desc**, align 8
  %5 = alloca %struct.at_desc**, align 8
  %6 = alloca %struct.at_desc*, align 8
  store %struct.at_desc** %0, %struct.at_desc*** %4, align 8
  store %struct.at_desc** %1, %struct.at_desc*** %5, align 8
  store %struct.at_desc* %2, %struct.at_desc** %6, align 8
  %7 = load %struct.at_desc**, %struct.at_desc*** %4, align 8
  %8 = load %struct.at_desc*, %struct.at_desc** %7, align 8
  %9 = icmp ne %struct.at_desc* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.at_desc*, %struct.at_desc** %6, align 8
  %12 = load %struct.at_desc**, %struct.at_desc*** %4, align 8
  store %struct.at_desc* %11, %struct.at_desc** %12, align 8
  br label %28

13:                                               ; preds = %3
  %14 = load %struct.at_desc*, %struct.at_desc** %6, align 8
  %15 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.at_desc**, %struct.at_desc*** %5, align 8
  %19 = load %struct.at_desc*, %struct.at_desc** %18, align 8
  %20 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.at_desc*, %struct.at_desc** %6, align 8
  %23 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %22, i32 0, i32 1
  %24 = load %struct.at_desc**, %struct.at_desc*** %4, align 8
  %25 = load %struct.at_desc*, %struct.at_desc** %24, align 8
  %26 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %25, i32 0, i32 0
  %27 = call i32 @list_add_tail(i32* %23, i32* %26)
  br label %28

28:                                               ; preds = %13, %10
  %29 = load %struct.at_desc*, %struct.at_desc** %6, align 8
  %30 = load %struct.at_desc**, %struct.at_desc*** %5, align 8
  store %struct.at_desc* %29, %struct.at_desc** %30, align 8
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
