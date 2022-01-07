; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_requeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { i32, i32, i32, i32, i32 }
%struct.entry = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*, %struct.entry*)* @requeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @requeue(%struct.smq_policy* %0, %struct.entry* %1) #0 {
  %3 = alloca %struct.smq_policy*, align 8
  %4 = alloca %struct.entry*, align 8
  store %struct.smq_policy* %0, %struct.smq_policy** %3, align 8
  store %struct.entry* %1, %struct.entry** %4, align 8
  %5 = load %struct.entry*, %struct.entry** %4, align 8
  %6 = getelementptr inbounds %struct.entry, %struct.entry* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %56

10:                                               ; preds = %2
  %11 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %12 = load %struct.entry*, %struct.entry** %4, align 8
  %13 = call i32 @infer_cblock(%struct.smq_policy* %11, %struct.entry* %12)
  %14 = call i32 @from_cblock(i32 %13)
  %15 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %16 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @test_and_set_bit(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %10
  %21 = load %struct.entry*, %struct.entry** %4, align 8
  %22 = getelementptr inbounds %struct.entry, %struct.entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %27 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %26, i32 0, i32 3
  %28 = load %struct.entry*, %struct.entry** %4, align 8
  %29 = call i32 @q_requeue(i32* %27, %struct.entry* %28, i32 1, i32* null, i32* null)
  br label %56

30:                                               ; preds = %20
  %31 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %32 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %31, i32 0, i32 2
  %33 = load %struct.entry*, %struct.entry** %4, align 8
  %34 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %35 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %34, i32 0, i32 1
  %36 = load %struct.entry*, %struct.entry** %4, align 8
  %37 = getelementptr inbounds %struct.entry, %struct.entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %40 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32* @get_sentinel(i32* %35, i32 %38, i32 %44)
  %46 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %47 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %46, i32 0, i32 1
  %48 = load %struct.entry*, %struct.entry** %4, align 8
  %49 = getelementptr inbounds %struct.entry, %struct.entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %52 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @get_sentinel(i32* %47, i32 %50, i32 %53)
  %55 = call i32 @q_requeue(i32* %32, %struct.entry* %33, i32 1, i32* %45, i32* %54)
  br label %56

56:                                               ; preds = %9, %25, %30, %10
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @infer_cblock(%struct.smq_policy*, %struct.entry*) #1

declare dso_local i32 @q_requeue(i32*, %struct.entry*, i32, i32*, i32*) #1

declare dso_local i32* @get_sentinel(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
