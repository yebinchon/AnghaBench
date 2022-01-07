; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_mddev_create_wb_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_mddev_create_wb_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.md_rdev = type { i32 }

@WriteMostly = common dso_local global i32 0, align 4
@NR_WB_INFOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"can't alloc memory pool for writemostly\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mddev_create_wb_pool(%struct.mddev* %0, %struct.md_rdev* %1, i32 %2) #0 {
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mddev*, %struct.mddev** %4, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %57

14:                                               ; preds = %3
  %15 = load i32, i32* @WriteMostly, align 4
  %16 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %17 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %22 = call i32 @rdev_init_wb(%struct.md_rdev* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %14
  br label %57

25:                                               ; preds = %20
  %26 = load %struct.mddev*, %struct.mddev** %4, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %57

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.mddev*, %struct.mddev** %4, align 8
  %35 = call i32 @mddev_suspend(%struct.mddev* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = call i32 (...) @memalloc_noio_save()
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @NR_WB_INFOS, align 4
  %39 = call i32* @mempool_create_kmalloc_pool(i32 %38, i32 4)
  %40 = load %struct.mddev*, %struct.mddev** %4, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @memalloc_noio_restore(i32 %42)
  %44 = load %struct.mddev*, %struct.mddev** %4, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %36
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %36
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.mddev*, %struct.mddev** %4, align 8
  %55 = call i32 @mddev_resume(%struct.mddev* %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %13, %24, %56, %25
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rdev_init_wb(%struct.md_rdev*) #1

declare dso_local i32 @mddev_suspend(%struct.mddev*) #1

declare dso_local i32 @memalloc_noio_save(...) #1

declare dso_local i32* @mempool_create_kmalloc_pool(i32, i32) #1

declare dso_local i32 @memalloc_noio_restore(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mddev_resume(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
