; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_debugfs.c__driver_stats_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_debugfs.c__driver_stats_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@hfi1_stats = common dso_local global i32 0, align 4
@SEQ_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @_driver_stats_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_driver_stats_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %6, align 8
  store i32* @hfi1_stats, i32** %8, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = call i64 @seq_get_buf(%struct.seq_file* %12, i8** %7)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @SEQ_SKIP, align 4
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = call i32 (...) @hfi1_sps_ints()
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 4
  br label %34

26:                                               ; preds = %18
  %27 = load i32*, i32** %8, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %22
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = call i32 @seq_commit(%struct.seq_file* %35, i32 4)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @seq_get_buf(%struct.seq_file*, i8**) #1

declare dso_local i32 @hfi1_sps_ints(...) #1

declare dso_local i32 @seq_commit(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
