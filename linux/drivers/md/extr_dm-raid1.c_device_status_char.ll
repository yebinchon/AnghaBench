; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_device_status_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_device_status_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror = type { i32, i32 }

@DM_RAID1_FLUSH_ERROR = common dso_local global i32 0, align 4
@DM_RAID1_WRITE_ERROR = common dso_local global i32 0, align 4
@DM_RAID1_SYNC_ERROR = common dso_local global i32 0, align 4
@DM_RAID1_READ_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.mirror*)* @device_status_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @device_status_char(%struct.mirror* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.mirror*, align 8
  store %struct.mirror* %0, %struct.mirror** %3, align 8
  %4 = load %struct.mirror*, %struct.mirror** %3, align 8
  %5 = getelementptr inbounds %struct.mirror, %struct.mirror* %4, i32 0, i32 1
  %6 = call i32 @atomic_read(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8 65, i8* %2, align 1
  br label %45

9:                                                ; preds = %1
  %10 = load i32, i32* @DM_RAID1_FLUSH_ERROR, align 4
  %11 = load %struct.mirror*, %struct.mirror** %3, align 8
  %12 = getelementptr inbounds %struct.mirror, %struct.mirror* %11, i32 0, i32 0
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %42

16:                                               ; preds = %9
  %17 = load i32, i32* @DM_RAID1_WRITE_ERROR, align 4
  %18 = load %struct.mirror*, %struct.mirror** %3, align 8
  %19 = getelementptr inbounds %struct.mirror, %struct.mirror* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %40

23:                                               ; preds = %16
  %24 = load i32, i32* @DM_RAID1_SYNC_ERROR, align 4
  %25 = load %struct.mirror*, %struct.mirror** %3, align 8
  %26 = getelementptr inbounds %struct.mirror, %struct.mirror* %25, i32 0, i32 0
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %38

30:                                               ; preds = %23
  %31 = load i32, i32* @DM_RAID1_READ_ERROR, align 4
  %32 = load %struct.mirror*, %struct.mirror** %3, align 8
  %33 = getelementptr inbounds %struct.mirror, %struct.mirror* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 82, i32 85
  br label %38

38:                                               ; preds = %30, %29
  %39 = phi i32 [ 83, %29 ], [ %37, %30 ]
  br label %40

40:                                               ; preds = %38, %22
  %41 = phi i32 [ 68, %22 ], [ %39, %38 ]
  br label %42

42:                                               ; preds = %40, %15
  %43 = phi i32 [ 70, %15 ], [ %41, %40 ]
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %2, align 1
  br label %45

45:                                               ; preds = %42, %8
  %46 = load i8, i8* %2, align 1
  ret i8 %46
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
