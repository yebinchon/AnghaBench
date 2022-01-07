; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bkey_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bkey_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32 }
%struct.bkey = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bkey_put(%struct.cache_set* %0, %struct.bkey* %1) #0 {
  %3 = alloca %struct.cache_set*, align 8
  %4 = alloca %struct.bkey*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_set* %0, %struct.cache_set** %3, align 8
  store %struct.bkey* %1, %struct.bkey** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.bkey*, %struct.bkey** %4, align 8
  %9 = call i32 @KEY_PTRS(%struct.bkey* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %13 = load %struct.bkey*, %struct.bkey** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @ptr_available(%struct.cache_set* %12, %struct.bkey* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %19 = load %struct.bkey*, %struct.bkey** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_2__* @PTR_BUCKET(%struct.cache_set* %18, %struct.bkey* %19, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @atomic_dec_bug(i32* %22)
  br label %24

24:                                               ; preds = %17, %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %6
  ret void
}

declare dso_local i32 @KEY_PTRS(%struct.bkey*) #1

declare dso_local i64 @ptr_available(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local i32 @atomic_dec_bug(i32*) #1

declare dso_local %struct.TYPE_2__* @PTR_BUCKET(%struct.cache_set*, %struct.bkey*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
