; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.h_rdev_dec_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.h_rdev_dec_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, i32 }
%struct.mddev = type { i32, i32 }

@Faulty = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md_rdev*, %struct.mddev*)* @rdev_dec_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdev_dec_pending(%struct.md_rdev* %0, %struct.mddev* %1) #0 {
  %3 = alloca %struct.md_rdev*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %3, align 8
  store %struct.mddev* %1, %struct.mddev** %4, align 8
  %6 = load i32, i32* @Faulty, align 4
  %7 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %8 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %7, i32 0, i32 1
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %11 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %10, i32 0, i32 0
  %12 = call i64 @atomic_dec_and_test(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %19 = load %struct.mddev*, %struct.mddev** %4, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load %struct.mddev*, %struct.mddev** %4, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @md_wakeup_thread(i32 %24)
  br label %26

26:                                               ; preds = %17, %14, %2
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
