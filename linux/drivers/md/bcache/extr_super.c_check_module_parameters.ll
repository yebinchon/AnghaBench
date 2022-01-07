; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_check_module_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_check_module_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bch_cutoff_writeback_sync = common dso_local global i64 0, align 8
@CUTOFF_WRITEBACK_SYNC = common dso_local global i64 0, align 8
@CUTOFF_WRITEBACK_SYNC_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"set bch_cutoff_writeback_sync (%u) to max value %u\00", align 1
@bch_cutoff_writeback = common dso_local global i64 0, align 8
@CUTOFF_WRITEBACK = common dso_local global i64 0, align 8
@CUTOFF_WRITEBACK_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"set bch_cutoff_writeback (%u) to max value %u\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"set bch_cutoff_writeback (%u) to %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_module_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_module_parameters() #0 {
  %1 = load i64, i64* @bch_cutoff_writeback_sync, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i64, i64* @CUTOFF_WRITEBACK_SYNC, align 8
  store i64 %4, i64* @bch_cutoff_writeback_sync, align 8
  br label %15

5:                                                ; preds = %0
  %6 = load i64, i64* @bch_cutoff_writeback_sync, align 8
  %7 = load i64, i64* @CUTOFF_WRITEBACK_SYNC_MAX, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i64, i64* @bch_cutoff_writeback_sync, align 8
  %11 = load i64, i64* @CUTOFF_WRITEBACK_SYNC_MAX, align 8
  %12 = call i32 @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %11)
  %13 = load i64, i64* @CUTOFF_WRITEBACK_SYNC_MAX, align 8
  store i64 %13, i64* @bch_cutoff_writeback_sync, align 8
  br label %14

14:                                               ; preds = %9, %5
  br label %15

15:                                               ; preds = %14, %3
  %16 = load i64, i64* @bch_cutoff_writeback, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i64, i64* @CUTOFF_WRITEBACK, align 8
  store i64 %19, i64* @bch_cutoff_writeback, align 8
  br label %30

20:                                               ; preds = %15
  %21 = load i64, i64* @bch_cutoff_writeback, align 8
  %22 = load i64, i64* @CUTOFF_WRITEBACK_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i64, i64* @bch_cutoff_writeback, align 8
  %26 = load i64, i64* @CUTOFF_WRITEBACK_MAX, align 8
  %27 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %25, i64 %26)
  %28 = load i64, i64* @CUTOFF_WRITEBACK_MAX, align 8
  store i64 %28, i64* @bch_cutoff_writeback, align 8
  br label %29

29:                                               ; preds = %24, %20
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i64, i64* @bch_cutoff_writeback, align 8
  %32 = load i64, i64* @bch_cutoff_writeback_sync, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i64, i64* @bch_cutoff_writeback, align 8
  %36 = load i64, i64* @bch_cutoff_writeback_sync, align 8
  %37 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %35, i64 %36)
  %38 = load i64, i64* @bch_cutoff_writeback_sync, align 8
  store i64 %38, i64* @bch_cutoff_writeback, align 8
  br label %39

39:                                               ; preds = %34, %30
  ret void
}

declare dso_local i32 @pr_warn(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
