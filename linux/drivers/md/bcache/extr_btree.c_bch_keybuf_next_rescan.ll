; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_keybuf_next_rescan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_keybuf_next_rescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keybuf_key = type { i32 }
%struct.cache_set = type { i32 }
%struct.keybuf = type { i32 }
%struct.bkey = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"scan finished\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.keybuf_key* @bch_keybuf_next_rescan(%struct.cache_set* %0, %struct.keybuf* %1, %struct.bkey* %2, i32* %3) #0 {
  %5 = alloca %struct.cache_set*, align 8
  %6 = alloca %struct.keybuf*, align 8
  %7 = alloca %struct.bkey*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.keybuf_key*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %5, align 8
  store %struct.keybuf* %1, %struct.keybuf** %6, align 8
  store %struct.bkey* %2, %struct.bkey** %7, align 8
  store i32* %3, i32** %8, align 8
  br label %10

10:                                               ; preds = %4, %24
  %11 = load %struct.keybuf*, %struct.keybuf** %6, align 8
  %12 = call %struct.keybuf_key* @bch_keybuf_next(%struct.keybuf* %11)
  store %struct.keybuf_key* %12, %struct.keybuf_key** %9, align 8
  %13 = load %struct.keybuf_key*, %struct.keybuf_key** %9, align 8
  %14 = icmp ne %struct.keybuf_key* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %30

16:                                               ; preds = %10
  %17 = load %struct.keybuf*, %struct.keybuf** %6, align 8
  %18 = getelementptr inbounds %struct.keybuf, %struct.keybuf* %17, i32 0, i32 0
  %19 = load %struct.bkey*, %struct.bkey** %7, align 8
  %20 = call i64 @bkey_cmp(i32* %18, %struct.bkey* %19)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %30

24:                                               ; preds = %16
  %25 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %26 = load %struct.keybuf*, %struct.keybuf** %6, align 8
  %27 = load %struct.bkey*, %struct.bkey** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @bch_refill_keybuf(%struct.cache_set* %25, %struct.keybuf* %26, %struct.bkey* %27, i32* %28)
  br label %10

30:                                               ; preds = %22, %15
  %31 = load %struct.keybuf_key*, %struct.keybuf_key** %9, align 8
  ret %struct.keybuf_key* %31
}

declare dso_local %struct.keybuf_key* @bch_keybuf_next(%struct.keybuf*) #1

declare dso_local i64 @bkey_cmp(i32*, %struct.bkey*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @bch_refill_keybuf(%struct.cache_set*, %struct.keybuf*, %struct.bkey*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
