; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_lock_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_lock_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@WRITE_LOCK_LEVEL = common dso_local global i32 0, align 4
@READ_WRITE_LOCK_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*)* @lock_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_level(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %3 = load %struct.bio*, %struct.bio** %2, align 8
  %4 = call i64 @bio_data_dir(%struct.bio* %3)
  %5 = load i64, i64* @WRITE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @WRITE_LOCK_LEVEL, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @READ_WRITE_LOCK_LEVEL, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
