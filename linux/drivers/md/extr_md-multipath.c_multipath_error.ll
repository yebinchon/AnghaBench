; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, %struct.mpconf* }
%struct.mpconf = type { i32, i32 }
%struct.md_rdev = type { i32, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"multipath: only one IO path left and IO error.\0A\00", align 1
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [97 x i8] c"multipath: IO failure on %s, disabling IO path.\0Amultipath: Operation continuing on %d IO paths.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.md_rdev*)* @multipath_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multipath_error(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca %struct.mpconf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %4, align 8
  %10 = load %struct.mddev*, %struct.mddev** %3, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 2
  %12 = load %struct.mpconf*, %struct.mpconf** %11, align 8
  store %struct.mpconf* %12, %struct.mpconf** %5, align 8
  %13 = load i32, i32* @BDEVNAME_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %18 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mddev*, %struct.mddev** %3, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %19, %22
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %67

27:                                               ; preds = %2
  %28 = load i32, i32* @In_sync, align 4
  %29 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %30 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %29, i32 0, i32 1
  %31 = call i64 @test_and_clear_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %35 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %34, i32 0, i32 1
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.mddev*, %struct.mddev** %3, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %43 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %42, i32 0, i32 1
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %33, %27
  %47 = load i32, i32* @Faulty, align 4
  %48 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %49 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %48, i32 0, i32 1
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  %51 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %52 = load %struct.mddev*, %struct.mddev** %3, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 1
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %56 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bdevname(i32 %57, i8* %16)
  %59 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %60 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mddev*, %struct.mddev** %3, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %61, %64
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %65)
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %46, %25
  %68 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %8, align 4
  switch i32 %69, label %71 [
    i32 0, label %70
    i32 1, label %70
  ]

70:                                               ; preds = %67, %67
  ret void

71:                                               ; preds = %67
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_warn(i8*) #2

declare dso_local i64 @test_and_clear_bit(i32, i32*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @pr_err(i8*, i32, i32) #2

declare dso_local i32 @bdevname(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
