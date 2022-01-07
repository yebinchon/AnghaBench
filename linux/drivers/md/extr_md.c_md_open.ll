; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mddev* }
%struct.mddev = type { i32, i32, i32, %struct.TYPE_2__* }

@ENODEV = common dso_local global i32 0, align 4
@md_misc_wq = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@MD_CLOSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @md_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.block_device*, %struct.block_device** %4, align 8
  %9 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.mddev* @mddev_find(i32 %10)
  store %struct.mddev* %11, %struct.mddev** %6, align 8
  %12 = load %struct.mddev*, %struct.mddev** %6, align 8
  %13 = icmp ne %struct.mddev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  %18 = load %struct.mddev*, %struct.mddev** %6, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.block_device*, %struct.block_device** %4, align 8
  %22 = getelementptr inbounds %struct.block_device, %struct.block_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.mddev*, %struct.mddev** %6, align 8
  %27 = call i32 @mddev_put(%struct.mddev* %26)
  %28 = load i32, i32* @md_misc_wq, align 4
  %29 = call i32 @flush_workqueue(i32 %28)
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %76

32:                                               ; preds = %17
  %33 = load %struct.mddev*, %struct.mddev** %6, align 8
  %34 = load %struct.block_device*, %struct.block_device** %4, align 8
  %35 = getelementptr inbounds %struct.block_device, %struct.block_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.mddev*, %struct.mddev** %37, align 8
  %39 = icmp ne %struct.mddev* %33, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.mddev*, %struct.mddev** %6, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock_interruptible(i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %68

47:                                               ; preds = %32
  %48 = load i32, i32* @MD_CLOSING, align 4
  %49 = load %struct.mddev*, %struct.mddev** %6, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 2
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.mddev*, %struct.mddev** %6, align 8
  %55 = getelementptr inbounds %struct.mddev, %struct.mddev* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %68

59:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  %60 = load %struct.mddev*, %struct.mddev** %6, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 1
  %62 = call i32 @atomic_inc(i32* %61)
  %63 = load %struct.mddev*, %struct.mddev** %6, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load %struct.block_device*, %struct.block_device** %4, align 8
  %67 = call i32 @check_disk_change(%struct.block_device* %66)
  br label %68

68:                                               ; preds = %59, %53, %46
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.mddev*, %struct.mddev** %6, align 8
  %73 = call i32 @mddev_put(%struct.mddev* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %25, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.mddev* @mddev_find(i32) #1

declare dso_local i32 @mddev_put(%struct.mddev*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @check_disk_change(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
