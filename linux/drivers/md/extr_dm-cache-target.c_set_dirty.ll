; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_set_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_set_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, i32)* @set_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dirty(%struct.cache* %0, i32 %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @from_cblock(i32 %5)
  %7 = load %struct.cache*, %struct.cache** %3, align 8
  %8 = getelementptr inbounds %struct.cache, %struct.cache* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @test_and_set_bit(i32 %6, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load %struct.cache*, %struct.cache** %3, align 8
  %14 = getelementptr inbounds %struct.cache, %struct.cache* %13, i32 0, i32 1
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load %struct.cache*, %struct.cache** %3, align 8
  %17 = getelementptr inbounds %struct.cache, %struct.cache* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @policy_set_dirty(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @policy_set_dirty(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
