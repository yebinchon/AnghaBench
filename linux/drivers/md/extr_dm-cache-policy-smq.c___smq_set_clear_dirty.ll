; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___smq_set_clear_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___smq_set_clear_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { i32 }
%struct.entry = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*, i32, i32)* @__smq_set_clear_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__smq_set_clear_dirty(%struct.smq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.entry*, align 8
  store %struct.smq_policy* %0, %struct.smq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %9 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %8, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @from_cblock(i32 %10)
  %12 = call %struct.entry* @get_entry(i32* %9, i32 %11)
  store %struct.entry* %12, %struct.entry** %7, align 8
  %13 = load %struct.entry*, %struct.entry** %7, align 8
  %14 = getelementptr inbounds %struct.entry, %struct.entry* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.entry*, %struct.entry** %7, align 8
  %20 = getelementptr inbounds %struct.entry, %struct.entry* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %31

21:                                               ; preds = %3
  %22 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %23 = load %struct.entry*, %struct.entry** %7, align 8
  %24 = call i32 @del_queue(%struct.smq_policy* %22, %struct.entry* %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.entry*, %struct.entry** %7, align 8
  %27 = getelementptr inbounds %struct.entry, %struct.entry* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %29 = load %struct.entry*, %struct.entry** %7, align 8
  %30 = call i32 @push_queue(%struct.smq_policy* %28, %struct.entry* %29)
  br label %31

31:                                               ; preds = %21, %17
  ret void
}

declare dso_local %struct.entry* @get_entry(i32*, i32) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @del_queue(%struct.smq_policy*, %struct.entry*) #1

declare dso_local i32 @push_queue(%struct.smq_policy*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
