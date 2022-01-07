; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_end_sync_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_end_sync_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.r1bio = type { i32, i32, i32 }

@R1BIO_Uptodate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @end_sync_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_sync_read(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.r1bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = call %struct.r1bio* @get_resync_r1bio(%struct.bio* %4)
  store %struct.r1bio* %5, %struct.r1bio** %3, align 8
  %6 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %7 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %10 = call i32 @update_head_pos(i32 %8, %struct.r1bio* %9)
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @R1BIO_Uptodate, align 4
  %17 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %18 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %17, i32 0, i32 1
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %22 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %21, i32 0, i32 0
  %23 = call i64 @atomic_dec_and_test(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %27 = call i32 @reschedule_retry(%struct.r1bio* %26)
  br label %28

28:                                               ; preds = %25, %20
  ret void
}

declare dso_local %struct.r1bio* @get_resync_r1bio(%struct.bio*) #1

declare dso_local i32 @update_head_pos(i32, %struct.r1bio*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @reschedule_retry(%struct.r1bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
