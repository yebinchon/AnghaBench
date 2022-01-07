; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_export_rdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_export_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"md: export_rdev(%s)\0A\00", align 1
@AutoDetected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md_rdev*)* @export_rdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_rdev(%struct.md_rdev* %0) #0 {
  %2 = alloca %struct.md_rdev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %2, align 8
  %5 = load i32, i32* @BDEVNAME_SIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %10 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @bdevname(%struct.TYPE_2__* %11, i8* %8)
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %15 = call i32 @md_rdev_clear(%struct.md_rdev* %14)
  %16 = load i32, i32* @AutoDetected, align 4
  %17 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %18 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %17, i32 0, i32 2
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @md_autodetect_dev(i32 %26)
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %30 = call i32 @unlock_rdev(%struct.md_rdev* %29)
  %31 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 0
  %33 = call i32 @kobject_put(i32* %32)
  %34 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %34)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_debug(i8*, i32) #2

declare dso_local i32 @bdevname(%struct.TYPE_2__*, i8*) #2

declare dso_local i32 @md_rdev_clear(%struct.md_rdev*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @md_autodetect_dev(i32) #2

declare dso_local i32 @unlock_rdev(%struct.md_rdev*) #2

declare dso_local i32 @kobject_put(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
