; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvbdev.c_dvb_generic_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvbdev.c_dvb_generic_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.dvb_device* }
%struct.dvb_device = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_generic_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dvb_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  store %struct.dvb_device* %9, %struct.dvb_device** %6, align 8
  %10 = load %struct.dvb_device*, %struct.dvb_device** %6, align 8
  %11 = icmp ne %struct.dvb_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @O_ACCMODE, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.dvb_device*, %struct.dvb_device** %6, align 8
  %25 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %33

28:                                               ; preds = %15
  %29 = load %struct.dvb_device*, %struct.dvb_device** %6, align 8
  %30 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.dvb_device*, %struct.dvb_device** %6, align 8
  %35 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
