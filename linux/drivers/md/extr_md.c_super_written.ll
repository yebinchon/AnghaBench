; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_super_written.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_super_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64, %struct.md_rdev* }
%struct.md_rdev = type { i32, %struct.mddev* }
%struct.mddev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"md: super_written gets error=%d\0A\00", align 1
@Faulty = common dso_local global i32 0, align 4
@MD_FAILFAST = common dso_local global i32 0, align 4
@MD_SB_NEED_REWRITE = common dso_local global i32 0, align 4
@LastDev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @super_written to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @super_written(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.md_rdev*, align 8
  %4 = alloca %struct.mddev*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 2
  %7 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  store %struct.md_rdev* %7, %struct.md_rdev** %3, align 8
  %8 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %9 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %8, i32 0, i32 1
  %10 = load %struct.mddev*, %struct.mddev** %9, align 8
  store %struct.mddev* %10, %struct.mddev** %4, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %1
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.mddev*, %struct.mddev** %4, align 8
  %21 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %22 = call i32 @md_error(%struct.mddev* %20, %struct.md_rdev* %21)
  %23 = load i32, i32* @Faulty, align 4
  %24 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %25 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %24, i32 0, i32 0
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %15
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MD_FAILFAST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load i32, i32* @MD_SB_NEED_REWRITE, align 4
  %37 = load %struct.mddev*, %struct.mddev** %4, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 2
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  %40 = load i32, i32* @LastDev, align 4
  %41 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %42 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %35, %28, %15
  br label %50

45:                                               ; preds = %1
  %46 = load i32, i32* @LastDev, align 4
  %47 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %48 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %47, i32 0, i32 0
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %45, %44
  %51 = load %struct.mddev*, %struct.mddev** %4, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 1
  %53 = call i64 @atomic_dec_and_test(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.mddev*, %struct.mddev** %4, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 0
  %58 = call i32 @wake_up(i32* %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %61 = load %struct.mddev*, %struct.mddev** %4, align 8
  %62 = call i32 @rdev_dec_pending(%struct.md_rdev* %60, %struct.mddev* %61)
  %63 = load %struct.bio*, %struct.bio** %2, align 8
  %64 = call i32 @bio_put(%struct.bio* %63)
  ret void
}

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
