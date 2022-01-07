; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_misc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_misc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.miscdevice }
%struct.miscdevice = type { i32*, i32, i32 }
%struct.psp_device = type { %struct.TYPE_3__*, i32, %struct.device* }
%struct.device = type { i32 }

@misc_dev = common dso_local global %struct.TYPE_3__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@sev_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"registered SEV device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_device*)* @sev_misc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sev_misc_init(%struct.psp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.miscdevice*, align 8
  store %struct.psp_device* %0, %struct.psp_device** %3, align 8
  %7 = load %struct.psp_device*, %struct.psp_device** %3, align 8
  %8 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %7, i32 0, i32 2
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @misc_dev, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.TYPE_3__* @devm_kzalloc(%struct.device* %13, i32 24, i32 %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** @misc_dev, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @misc_dev, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %55

21:                                               ; preds = %12
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @misc_dev, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store %struct.miscdevice* %23, %struct.miscdevice** %6, align 8
  %24 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %25 = load %struct.miscdevice*, %struct.miscdevice** %6, align 8
  %26 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @DEVICE_NAME, align 4
  %28 = load %struct.miscdevice*, %struct.miscdevice** %6, align 8
  %29 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.miscdevice*, %struct.miscdevice** %6, align 8
  %31 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %30, i32 0, i32 0
  store i32* @sev_fops, i32** %31, align 8
  %32 = load %struct.miscdevice*, %struct.miscdevice** %6, align 8
  %33 = call i32 @misc_register(%struct.miscdevice* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %55

38:                                               ; preds = %21
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @misc_dev, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @kref_init(i32* %40)
  br label %46

42:                                               ; preds = %1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @misc_dev, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @kref_get(i32* %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.psp_device*, %struct.psp_device** %3, align 8
  %48 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %47, i32 0, i32 1
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @misc_dev, align 8
  %51 = load %struct.psp_device*, %struct.psp_device** %3, align 8
  %52 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %51, i32 0, i32 0
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %52, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_dbg(%struct.device* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %46, %36, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_3__* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @misc_register(%struct.miscdevice*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
