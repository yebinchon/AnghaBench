; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_ro_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_ro_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ro_spine = type { i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ro_pop(%struct.ro_spine* %0) #0 {
  %2 = alloca %struct.ro_spine*, align 8
  store %struct.ro_spine* %0, %struct.ro_spine** %2, align 8
  %3 = load %struct.ro_spine*, %struct.ro_spine** %2, align 8
  %4 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.ro_spine*, %struct.ro_spine** %2, align 8
  %11 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.ro_spine*, %struct.ro_spine** %2, align 8
  %15 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ro_spine*, %struct.ro_spine** %2, align 8
  %18 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.ro_spine*, %struct.ro_spine** %2, align 8
  %21 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @unlock_block(i32 %16, i32 %24)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @unlock_block(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
