; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_mbx.c_nitrox_mbox_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_mbx.c_nitrox_mbox_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.nitrox_vfdev*, i32 }
%struct.nitrox_vfdev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"nitrox_pf2vf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nitrox_mbox_init(%struct.nitrox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca %struct.nitrox_vfdev*, align 8
  %5 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  %6 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %7 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nitrox_vfdev* @kcalloc(i32 %9, i32 4, i32 %10)
  %12 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %13 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.nitrox_vfdev* %11, %struct.nitrox_vfdev** %14, align 8
  %15 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %16 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %17, align 8
  %19 = icmp ne %struct.nitrox_vfdev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %66

23:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %42, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %27 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %33 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %35, i64 %37
  store %struct.nitrox_vfdev* %38, %struct.nitrox_vfdev** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %4, align 8
  %41 = getelementptr inbounds %struct.nitrox_vfdev, %struct.nitrox_vfdev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %24

45:                                               ; preds = %24
  %46 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %47 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %48 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %51 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %45
  %56 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %57 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load %struct.nitrox_vfdev*, %struct.nitrox_vfdev** %58, align 8
  %60 = call i32 @kfree(%struct.nitrox_vfdev* %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %66

63:                                               ; preds = %45
  %64 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %65 = call i32 @enable_pf2vf_mbox_interrupts(%struct.nitrox_device* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %55, %20
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.nitrox_vfdev* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.nitrox_vfdev*) #1

declare dso_local i32 @enable_pf2vf_mbox_interrupts(%struct.nitrox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
