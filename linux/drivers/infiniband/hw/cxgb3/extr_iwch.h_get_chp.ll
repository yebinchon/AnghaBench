; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch.h_get_chp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch.h_get_chp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwch_cq = type { i32 }
%struct.iwch_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwch_cq* (%struct.iwch_dev*, i32)* @get_chp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwch_cq* @get_chp(%struct.iwch_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.iwch_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.iwch_dev* %0, %struct.iwch_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.iwch_dev*, %struct.iwch_dev** %3, align 8
  %6 = getelementptr inbounds %struct.iwch_dev, %struct.iwch_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.iwch_cq* @xa_load(i32* %6, i32 %7)
  ret %struct.iwch_cq* %8
}

declare dso_local %struct.iwch_cq* @xa_load(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
