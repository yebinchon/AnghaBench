; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hiddev.c_hiddev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hiddev.c_hiddev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.hiddev_list* }
%struct.hiddev_list = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }

@PM_HINT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hiddev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hiddev_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.hiddev_list*, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.hiddev_list*, %struct.hiddev_list** %9, align 8
  store %struct.hiddev_list* %10, %struct.hiddev_list** %6, align 8
  %11 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %12 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %18 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %21 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %27 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %32 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %72, label %38

38:                                               ; preds = %2
  %39 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %40 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %47 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @hid_hw_close(i32 %50)
  %52 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %53 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PM_HINT_NORMAL, align 4
  %58 = call i32 @hid_hw_power(i32 %56, i32 %57)
  br label %71

59:                                               ; preds = %38
  %60 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %61 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %66 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = call i32 @kfree(%struct.TYPE_2__* %67)
  %69 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %70 = call i32 @vfree(%struct.hiddev_list* %69)
  store i32 0, i32* %3, align 4
  br label %80

71:                                               ; preds = %45
  br label %72

72:                                               ; preds = %71, %2
  %73 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %74 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %79 = call i32 @vfree(%struct.hiddev_list* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %72, %59
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hid_hw_close(i32) #1

declare dso_local i32 @hid_hw_power(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @vfree(%struct.hiddev_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
