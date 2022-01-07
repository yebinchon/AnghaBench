; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_keylist_pop_front.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_keylist_pop_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keylist = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_keylist_pop_front(%struct.keylist* %0) #0 {
  %2 = alloca %struct.keylist*, align 8
  store %struct.keylist* %0, %struct.keylist** %2, align 8
  %3 = load %struct.keylist*, %struct.keylist** %2, align 8
  %4 = getelementptr inbounds %struct.keylist, %struct.keylist* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @bkey_u64s(i32 %5)
  %7 = load %struct.keylist*, %struct.keylist** %2, align 8
  %8 = getelementptr inbounds %struct.keylist, %struct.keylist* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 %10, %6
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load %struct.keylist*, %struct.keylist** %2, align 8
  %14 = getelementptr inbounds %struct.keylist, %struct.keylist* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.keylist*, %struct.keylist** %2, align 8
  %17 = getelementptr inbounds %struct.keylist, %struct.keylist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bkey_next(i32 %18)
  %20 = load %struct.keylist*, %struct.keylist** %2, align 8
  %21 = call i32 @bch_keylist_bytes(%struct.keylist* %20)
  %22 = call i32 @memmove(i32 %15, i32 %19, i32 %21)
  ret void
}

declare dso_local i64 @bkey_u64s(i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @bkey_next(i32) #1

declare dso_local i32 @bch_keylist_bytes(%struct.keylist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
