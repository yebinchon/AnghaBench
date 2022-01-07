; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_setup_clone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_setup_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.dm_rq_target_io*, i32 }
%struct.dm_rq_target_io = type { %struct.request*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dm_rq_bio_constructor = common dso_local global i32 0, align 4
@end_clone_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.request*, %struct.dm_rq_target_io*, i32)* @setup_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_clone(%struct.request* %0, %struct.request* %1, %struct.dm_rq_target_io* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.dm_rq_target_io*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store %struct.dm_rq_target_io* %2, %struct.dm_rq_target_io** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.request*, %struct.request** %6, align 8
  %12 = load %struct.request*, %struct.request** %7, align 8
  %13 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %14 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @dm_rq_bio_constructor, align 4
  %19 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %20 = call i32 @blk_rq_prep_clone(%struct.request* %11, %struct.request* %12, i32* %16, i32 %17, i32 %18, %struct.dm_rq_target_io* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %35

25:                                               ; preds = %4
  %26 = load i32, i32* @end_clone_request, align 4
  %27 = load %struct.request*, %struct.request** %6, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %30 = load %struct.request*, %struct.request** %6, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 0
  store %struct.dm_rq_target_io* %29, %struct.dm_rq_target_io** %31, align 8
  %32 = load %struct.request*, %struct.request** %6, align 8
  %33 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %34 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %33, i32 0, i32 0
  store %struct.request* %32, %struct.request** %34, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %23
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @blk_rq_prep_clone(%struct.request*, %struct.request*, i32*, i32, i32, %struct.dm_rq_target_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
