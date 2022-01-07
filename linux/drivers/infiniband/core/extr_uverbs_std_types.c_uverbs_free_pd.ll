; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_std_types.c_uverbs_free_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_std_types.c_uverbs_free_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { %struct.ib_pd* }
%struct.ib_pd = type { i32 }
%struct.uverbs_attr_bundle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_uobject*, i32, %struct.uverbs_attr_bundle*)* @uverbs_free_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uverbs_free_pd(%struct.ib_uobject* %0, i32 %1, %struct.uverbs_attr_bundle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_uobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uverbs_attr_bundle*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_uobject* %0, %struct.ib_uobject** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uverbs_attr_bundle* %2, %struct.uverbs_attr_bundle** %7, align 8
  %10 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %11 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %10, i32 0, i32 0
  %12 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  store %struct.ib_pd* %12, %struct.ib_pd** %8, align 8
  %13 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 0
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %17 = call i32 @ib_destroy_usecnt(i32* %14, i32 %15, %struct.ib_uobject* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %24 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %7, align 8
  %25 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %24, i32 0, i32 0
  %26 = call i32 @ib_dealloc_pd_user(%struct.ib_pd* %23, i32* %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %20
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @ib_destroy_usecnt(i32*, i32, %struct.ib_uobject*) #1

declare dso_local i32 @ib_dealloc_pd_user(%struct.ib_pd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
