; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_lock_rdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_lock_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { %struct.block_device* }
%struct.block_device = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"md: could not open %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, i32, i32)* @lock_rdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_rdev(%struct.md_rdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.block_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @BDEVNAME_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @FMODE_READ, align 4
  %19 = load i32, i32* @FMODE_WRITE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FMODE_EXCL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %28

26:                                               ; preds = %3
  %27 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi %struct.md_rdev* [ bitcast (i32 (%struct.md_rdev*, i32, i32)* @lock_rdev to %struct.md_rdev*), %25 ], [ %27, %26 ]
  %30 = call %struct.block_device* @blkdev_get_by_dev(i32 %17, i32 %22, %struct.md_rdev* %29)
  store %struct.block_device* %30, %struct.block_device** %9, align 8
  %31 = load %struct.block_device*, %struct.block_device** %9, align 8
  %32 = call i64 @IS_ERR(%struct.block_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @__bdevname(i32 %35, i8* %16)
  %37 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.block_device*, %struct.block_device** %9, align 8
  %39 = call i32 @PTR_ERR(%struct.block_device* %38)
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %45

40:                                               ; preds = %28
  %41 = load %struct.block_device*, %struct.block_device** %9, align 8
  %42 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 0
  store %struct.block_device* %41, %struct.block_device** %43, align 8
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.block_device* @blkdev_get_by_dev(i32, i32, %struct.md_rdev*) #2

declare dso_local i64 @IS_ERR(%struct.block_device*) #2

declare dso_local i32 @pr_warn(i8*, i32) #2

declare dso_local i32 @__bdevname(i32, i8*) #2

declare dso_local i32 @PTR_ERR(%struct.block_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
