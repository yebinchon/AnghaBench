; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_core.c_gnss_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_core.c_gnss_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.gnss_device* }
%struct.gnss_device = type { i64, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.gnss_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @gnss_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnss_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.gnss_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.gnss_device*, %struct.gnss_device** %7, align 8
  store %struct.gnss_device* %8, %struct.gnss_device** %5, align 8
  %9 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %10 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %9, i32 0, i32 2
  %11 = call i32 @down_write(i32* %10)
  %12 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %13 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %19 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %25 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.gnss_device*)*, i32 (%struct.gnss_device*)** %27, align 8
  %29 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %30 = call i32 %28(%struct.gnss_device* %29)
  %31 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %32 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %31, i32 0, i32 3
  %33 = call i32 @kfifo_reset(i32* %32)
  br label %34

34:                                               ; preds = %23, %17
  br label %35

35:                                               ; preds = %34, %16
  %36 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %37 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %36, i32 0, i32 2
  %38 = call i32 @up_write(i32* %37)
  %39 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %40 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %39, i32 0, i32 1
  %41 = call i32 @put_device(i32* %40)
  ret i32 0
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @kfifo_reset(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
