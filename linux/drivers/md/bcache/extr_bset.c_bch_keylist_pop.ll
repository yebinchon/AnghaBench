; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_keylist_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_keylist_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bkey = type { i32 }
%struct.keylist = type { %struct.bkey*, %struct.bkey* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bkey* @bch_keylist_pop(%struct.keylist* %0) #0 {
  %2 = alloca %struct.bkey*, align 8
  %3 = alloca %struct.keylist*, align 8
  %4 = alloca %struct.bkey*, align 8
  store %struct.keylist* %0, %struct.keylist** %3, align 8
  %5 = load %struct.keylist*, %struct.keylist** %3, align 8
  %6 = getelementptr inbounds %struct.keylist, %struct.keylist* %5, i32 0, i32 1
  %7 = load %struct.bkey*, %struct.bkey** %6, align 8
  store %struct.bkey* %7, %struct.bkey** %4, align 8
  %8 = load %struct.bkey*, %struct.bkey** %4, align 8
  %9 = load %struct.keylist*, %struct.keylist** %3, align 8
  %10 = getelementptr inbounds %struct.keylist, %struct.keylist* %9, i32 0, i32 0
  %11 = load %struct.bkey*, %struct.bkey** %10, align 8
  %12 = icmp eq %struct.bkey* %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.bkey* null, %struct.bkey** %2, align 8
  br label %29

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %22, %14
  %16 = load %struct.bkey*, %struct.bkey** %4, align 8
  %17 = call %struct.bkey* @bkey_next(%struct.bkey* %16)
  %18 = load %struct.keylist*, %struct.keylist** %3, align 8
  %19 = getelementptr inbounds %struct.keylist, %struct.keylist* %18, i32 0, i32 0
  %20 = load %struct.bkey*, %struct.bkey** %19, align 8
  %21 = icmp ne %struct.bkey* %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.bkey*, %struct.bkey** %4, align 8
  %24 = call %struct.bkey* @bkey_next(%struct.bkey* %23)
  store %struct.bkey* %24, %struct.bkey** %4, align 8
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.bkey*, %struct.bkey** %4, align 8
  %27 = load %struct.keylist*, %struct.keylist** %3, align 8
  %28 = getelementptr inbounds %struct.keylist, %struct.keylist* %27, i32 0, i32 0
  store %struct.bkey* %26, %struct.bkey** %28, align 8
  store %struct.bkey* %26, %struct.bkey** %2, align 8
  br label %29

29:                                               ; preds = %25, %13
  %30 = load %struct.bkey*, %struct.bkey** %2, align 8
  ret %struct.bkey* %30
}

declare dso_local %struct.bkey* @bkey_next(%struct.bkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
