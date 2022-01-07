; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_check_for_data_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_check_for_data_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32 }

@PM_OUT_OF_DATA_SPACE = common dso_local global i64 0, align 8
@PM_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*)* @check_for_data_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_data_space(%struct.pool* %0) #0 {
  %2 = alloca %struct.pool*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.pool* %0, %struct.pool** %2, align 8
  %5 = load %struct.pool*, %struct.pool** %2, align 8
  %6 = call i64 @get_pool_mode(%struct.pool* %5)
  %7 = load i64, i64* @PM_OUT_OF_DATA_SPACE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.pool*, %struct.pool** %2, align 8
  %12 = getelementptr inbounds %struct.pool, %struct.pool* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dm_pool_get_free_block_count(i32 %13, i64* %4)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %27

18:                                               ; preds = %10
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.pool*, %struct.pool** %2, align 8
  %23 = load i32, i32* @PM_WRITE, align 4
  %24 = call i32 @set_pool_mode(%struct.pool* %22, i32 %23)
  %25 = load %struct.pool*, %struct.pool** %2, align 8
  %26 = call i32 @requeue_bios(%struct.pool* %25)
  br label %27

27:                                               ; preds = %9, %17, %21, %18
  ret void
}

declare dso_local i64 @get_pool_mode(%struct.pool*) #1

declare dso_local i32 @dm_pool_get_free_block_count(i32, i64*) #1

declare dso_local i32 @set_pool_mode(%struct.pool*, i32) #1

declare dso_local i32 @requeue_bios(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
