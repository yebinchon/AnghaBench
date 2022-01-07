; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_kcopy_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_kcopy_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_reclaim = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@DMZ_RECLAIM_KCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*)* @dmz_reclaim_kcopy_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_reclaim_kcopy_end(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dmz_reclaim*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.dmz_reclaim*
  store %struct.dmz_reclaim* %9, %struct.dmz_reclaim** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  %18 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %7, align 8
  %19 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %23

20:                                               ; preds = %12
  %21 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %7, align 8
  %22 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* @DMZ_RECLAIM_KCOPY, align 4
  %25 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %7, align 8
  %26 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %25, i32 0, i32 0
  %27 = call i32 @clear_bit_unlock(i32 %24, i32* %26)
  %28 = call i32 (...) @smp_mb__after_atomic()
  %29 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %7, align 8
  %30 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %29, i32 0, i32 0
  %31 = load i32, i32* @DMZ_RECLAIM_KCOPY, align 4
  %32 = call i32 @wake_up_bit(i32* %30, i32 %31)
  ret void
}

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
