; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_find_commit_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_find_commit_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32 }

@N_COMMIT_IDS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [18 x i8] c"journal commit id\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_integrity_c*, i32, i32, i64)* @find_commit_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_commit_seq(%struct.dm_integrity_c* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_integrity_c*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8 0, i8* %10, align 1
  br label %11

11:                                               ; preds = %29, %4
  %12 = load i8, i8* %10, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @N_COMMIT_IDS, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i8, i8* %10, align 1
  %22 = call i64 @dm_integrity_commit_id(%struct.dm_integrity_c* %18, i32 %19, i32 %20, i8 zeroext %21)
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i8, i8* %10, align 1
  %27 = zext i8 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %39

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i8, i8* %10, align 1
  %31 = add i8 %30, 1
  store i8 %31, i8* %10, align 1
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @dm_integrity_io_error(%struct.dm_integrity_c* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @dm_integrity_commit_id(%struct.dm_integrity_c*, i32, i32, i8 zeroext) #1

declare dso_local i32 @dm_integrity_io_error(%struct.dm_integrity_c*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
