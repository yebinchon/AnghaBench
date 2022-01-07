; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_set_discard_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_set_discard_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pool_c* }
%struct.pool_c = type { i32 }

@process_discard_cell_passdown = common dso_local global i32 0, align 4
@process_prepared_discard_passdown_pt1 = common dso_local global i32 0, align 4
@process_prepared_discard_passdown_pt2 = common dso_local global i32 0, align 4
@process_discard_cell_no_passdown = common dso_local global i32 0, align 4
@process_prepared_discard_no_passdown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*)* @set_discard_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_discard_callbacks(%struct.pool* %0) #0 {
  %2 = alloca %struct.pool*, align 8
  %3 = alloca %struct.pool_c*, align 8
  store %struct.pool* %0, %struct.pool** %2, align 8
  %4 = load %struct.pool*, %struct.pool** %2, align 8
  %5 = getelementptr inbounds %struct.pool, %struct.pool* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.pool_c*, %struct.pool_c** %7, align 8
  store %struct.pool_c* %8, %struct.pool_c** %3, align 8
  %9 = load %struct.pool_c*, %struct.pool_c** %3, align 8
  %10 = call i64 @passdown_enabled(%struct.pool_c* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @process_discard_cell_passdown, align 4
  %14 = load %struct.pool*, %struct.pool** %2, align 8
  %15 = getelementptr inbounds %struct.pool, %struct.pool* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @process_prepared_discard_passdown_pt1, align 4
  %17 = load %struct.pool*, %struct.pool** %2, align 8
  %18 = getelementptr inbounds %struct.pool, %struct.pool* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @process_prepared_discard_passdown_pt2, align 4
  %20 = load %struct.pool*, %struct.pool** %2, align 8
  %21 = getelementptr inbounds %struct.pool, %struct.pool* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @process_discard_cell_no_passdown, align 4
  %24 = load %struct.pool*, %struct.pool** %2, align 8
  %25 = getelementptr inbounds %struct.pool, %struct.pool* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @process_prepared_discard_no_passdown, align 4
  %27 = load %struct.pool*, %struct.pool** %2, align 8
  %28 = getelementptr inbounds %struct.pool, %struct.pool* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %22, %12
  ret void
}

declare dso_local i64 @passdown_enabled(%struct.pool_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
