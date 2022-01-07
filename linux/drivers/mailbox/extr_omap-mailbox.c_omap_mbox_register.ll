; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox_device = type { i32, i32, i32, %struct.omap_mbox** }
%struct.omap_mbox = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@omap_mbox_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@omap_mbox_devices_lock = common dso_local global i32 0, align 4
@omap_mbox_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mbox_device*)* @omap_mbox_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mbox_register(%struct.omap_mbox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_mbox_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_mbox**, align 8
  %7 = alloca %struct.omap_mbox*, align 8
  store %struct.omap_mbox_device* %0, %struct.omap_mbox_device** %3, align 8
  %8 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %3, align 8
  %9 = icmp ne %struct.omap_mbox_device* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %3, align 8
  %12 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %11, i32 0, i32 3
  %13 = load %struct.omap_mbox**, %struct.omap_mbox*** %12, align 8
  %14 = icmp ne %struct.omap_mbox** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %91

18:                                               ; preds = %10
  %19 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %3, align 8
  %20 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %19, i32 0, i32 3
  %21 = load %struct.omap_mbox**, %struct.omap_mbox*** %20, align 8
  store %struct.omap_mbox** %21, %struct.omap_mbox*** %6, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %56, %18
  %23 = load %struct.omap_mbox**, %struct.omap_mbox*** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.omap_mbox*, %struct.omap_mbox** %23, i64 %25
  %27 = load %struct.omap_mbox*, %struct.omap_mbox** %26, align 8
  %28 = icmp ne %struct.omap_mbox* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %22
  %30 = load %struct.omap_mbox**, %struct.omap_mbox*** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.omap_mbox*, %struct.omap_mbox** %30, i64 %32
  %34 = load %struct.omap_mbox*, %struct.omap_mbox** %33, align 8
  store %struct.omap_mbox* %34, %struct.omap_mbox** %7, align 8
  %35 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %3, align 8
  %36 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.omap_mbox*, %struct.omap_mbox** %7, align 8
  %39 = load %struct.omap_mbox*, %struct.omap_mbox** %7, align 8
  %40 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_create(i32* @omap_mbox_class, i32 %37, i32 0, %struct.omap_mbox* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.omap_mbox*, %struct.omap_mbox** %7, align 8
  %44 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.omap_mbox*, %struct.omap_mbox** %7, align 8
  %46 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %29
  %51 = load %struct.omap_mbox*, %struct.omap_mbox** %7, align 8
  %52 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %71

55:                                               ; preds = %29
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %22

59:                                               ; preds = %22
  %60 = call i32 @mutex_lock(i32* @omap_mbox_devices_lock)
  %61 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %3, align 8
  %62 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %61, i32 0, i32 2
  %63 = call i32 @list_add(i32* %62, i32* @omap_mbox_devices)
  %64 = call i32 @mutex_unlock(i32* @omap_mbox_devices_lock)
  %65 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %3, align 8
  %66 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %3, align 8
  %69 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %68, i32 0, i32 0
  %70 = call i32 @devm_mbox_controller_register(i32 %67, i32* %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %59, %50
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %79, %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %5, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load %struct.omap_mbox**, %struct.omap_mbox*** %6, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.omap_mbox*, %struct.omap_mbox** %80, i64 %82
  %84 = load %struct.omap_mbox*, %struct.omap_mbox** %83, align 8
  %85 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @device_unregister(i32 %86)
  br label %75

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %71
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %15
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @device_create(i32*, i32, i32, %struct.omap_mbox*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @devm_mbox_controller_register(i32, i32*) #1

declare dso_local i32 @device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
