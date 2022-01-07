; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_integrity_add_rdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_integrity_add_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mddev = type { i32 }
%struct.blk_integrity = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: incompatible integrity profile for %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_integrity_add_rdev(%struct.md_rdev* %0, %struct.mddev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca %struct.blk_integrity*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %4, align 8
  store %struct.mddev* %1, %struct.mddev** %5, align 8
  %10 = load i32, i32* @BDEVNAME_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.mddev*, %struct.mddev** %5, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.mddev*, %struct.mddev** %5, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.blk_integrity* @blk_get_integrity(i32 %22)
  store %struct.blk_integrity* %23, %struct.blk_integrity** %6, align 8
  %24 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %25 = icmp ne %struct.blk_integrity* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %49

27:                                               ; preds = %19
  %28 = load %struct.mddev*, %struct.mddev** %5, align 8
  %29 = getelementptr inbounds %struct.mddev, %struct.mddev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @blk_integrity_compare(i32 %30, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = load %struct.mddev*, %struct.mddev** %5, align 8
  %40 = call i32 @mdname(%struct.mddev* %39)
  %41 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %42 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @bdevname(%struct.TYPE_2__* %43, i8* %13)
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %49

48:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %38, %26, %18
  %50 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.blk_integrity* @blk_get_integrity(i32) #2

declare dso_local i64 @blk_integrity_compare(i32, i32) #2

declare dso_local i32 @pr_err(i8*, i32, i32) #2

declare dso_local i32 @mdname(%struct.mddev*) #2

declare dso_local i32 @bdevname(%struct.TYPE_2__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
