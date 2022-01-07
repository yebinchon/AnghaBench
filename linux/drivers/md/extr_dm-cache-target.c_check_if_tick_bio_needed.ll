; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_check_if_tick_bio_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_check_if_tick_bio_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i32 }
%struct.bio = type { i32 }
%struct.per_bio_data = type { i32 }

@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, %struct.bio*)* @check_if_tick_bio_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_if_tick_bio_needed(%struct.cache* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.per_bio_data*, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.cache*, %struct.cache** %3, align 8
  %8 = getelementptr inbounds %struct.cache, %struct.cache* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.cache*, %struct.cache** %3, align 8
  %12 = getelementptr inbounds %struct.cache, %struct.cache* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @op_is_flush(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = call i64 @bio_op(%struct.bio* %22)
  %24 = load i64, i64* @REQ_OP_DISCARD, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  %28 = call %struct.per_bio_data* @get_per_bio_data(%struct.bio* %27)
  store %struct.per_bio_data* %28, %struct.per_bio_data** %6, align 8
  %29 = load %struct.per_bio_data*, %struct.per_bio_data** %6, align 8
  %30 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.cache*, %struct.cache** %3, align 8
  %32 = getelementptr inbounds %struct.cache, %struct.cache* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %21, %15, %2
  %34 = load %struct.cache*, %struct.cache** %3, align 8
  %35 = getelementptr inbounds %struct.cache, %struct.cache* %34, i32 0, i32 1
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @op_is_flush(i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local %struct.per_bio_data* @get_per_bio_data(%struct.bio*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
