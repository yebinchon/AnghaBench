; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_std_types_dm.c_uverbs_free_dm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_std_types_dm.c_uverbs_free_dm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { %struct.ib_dm* }
%struct.ib_dm = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ib_dm*, %struct.uverbs_attr_bundle*)* }
%struct.uverbs_attr_bundle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_uobject*, i32, %struct.uverbs_attr_bundle*)* @uverbs_free_dm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uverbs_free_dm(%struct.ib_uobject* %0, i32 %1, %struct.uverbs_attr_bundle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_uobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uverbs_attr_bundle*, align 8
  %8 = alloca %struct.ib_dm*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_uobject* %0, %struct.ib_uobject** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uverbs_attr_bundle* %2, %struct.uverbs_attr_bundle** %7, align 8
  %10 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %11 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %10, i32 0, i32 0
  %12 = load %struct.ib_dm*, %struct.ib_dm** %11, align 8
  store %struct.ib_dm* %12, %struct.ib_dm** %8, align 8
  %13 = load %struct.ib_dm*, %struct.ib_dm** %8, align 8
  %14 = getelementptr inbounds %struct.ib_dm, %struct.ib_dm* %13, i32 0, i32 1
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
  br label %32

22:                                               ; preds = %3
  %23 = load %struct.ib_dm*, %struct.ib_dm** %8, align 8
  %24 = getelementptr inbounds %struct.ib_dm, %struct.ib_dm* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.ib_dm*, %struct.uverbs_attr_bundle*)*, i32 (%struct.ib_dm*, %struct.uverbs_attr_bundle*)** %27, align 8
  %29 = load %struct.ib_dm*, %struct.ib_dm** %8, align 8
  %30 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %7, align 8
  %31 = call i32 %28(%struct.ib_dm* %29, %struct.uverbs_attr_bundle* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %22, %20
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @ib_destroy_usecnt(i32*, i32, %struct.ib_uobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
