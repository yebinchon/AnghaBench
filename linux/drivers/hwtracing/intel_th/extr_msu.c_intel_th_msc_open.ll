; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.msc_iter* }
%struct.msc_iter = type { i32 }
%struct.intel_th_device = type { i32 }
%struct.msc = type { i32 }

@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @intel_th_msc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_msc_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.intel_th_device*, align 8
  %7 = alloca %struct.msc*, align 8
  %8 = alloca %struct.msc_iter*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.msc_iter*, %struct.msc_iter** %10, align 8
  %12 = bitcast %struct.msc_iter* %11 to %struct.intel_th_device*
  store %struct.intel_th_device* %12, %struct.intel_th_device** %6, align 8
  %13 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %14 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %13, i32 0, i32 0
  %15 = call %struct.msc* @dev_get_drvdata(i32* %14)
  store %struct.msc* %15, %struct.msc** %7, align 8
  %16 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %17 = call i32 @capable(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load %struct.msc*, %struct.msc** %7, align 8
  %24 = call %struct.msc_iter* @msc_iter_install(%struct.msc* %23)
  store %struct.msc_iter* %24, %struct.msc_iter** %8, align 8
  %25 = load %struct.msc_iter*, %struct.msc_iter** %8, align 8
  %26 = call i64 @IS_ERR(%struct.msc_iter* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.msc_iter*, %struct.msc_iter** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.msc_iter* %29)
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %22
  %32 = load %struct.msc_iter*, %struct.msc_iter** %8, align 8
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  store %struct.msc_iter* %32, %struct.msc_iter** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = call i32 @nonseekable_open(%struct.inode* %35, %struct.file* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %28, %19
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.msc* @dev_get_drvdata(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.msc_iter* @msc_iter_install(%struct.msc*) #1

declare dso_local i64 @IS_ERR(%struct.msc_iter*) #1

declare dso_local i32 @PTR_ERR(%struct.msc_iter*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
