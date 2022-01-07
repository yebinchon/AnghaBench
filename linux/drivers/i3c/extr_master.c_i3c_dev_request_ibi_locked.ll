; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_dev_request_ibi_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_dev_request_ibi_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { %struct.i3c_device_ibi_info* }
%struct.i3c_device_ibi_info = type { i32, i32, i32, i32, i32 }
%struct.i3c_ibi_setup = type { i32, i32, i32 }
%struct.i3c_master_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i3c_dev_desc*, %struct.i3c_ibi_setup*)* }

@ENOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i3c_dev_request_ibi_locked(%struct.i3c_dev_desc* %0, %struct.i3c_ibi_setup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i3c_dev_desc*, align 8
  %5 = alloca %struct.i3c_ibi_setup*, align 8
  %6 = alloca %struct.i3c_master_controller*, align 8
  %7 = alloca %struct.i3c_device_ibi_info*, align 8
  %8 = alloca i32, align 4
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %4, align 8
  store %struct.i3c_ibi_setup* %1, %struct.i3c_ibi_setup** %5, align 8
  %9 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %4, align 8
  %10 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %9)
  store %struct.i3c_master_controller* %10, %struct.i3c_master_controller** %6, align 8
  %11 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %6, align 8
  %12 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.i3c_dev_desc*, %struct.i3c_ibi_setup*)*, i32 (%struct.i3c_dev_desc*, %struct.i3c_ibi_setup*)** %14, align 8
  %16 = icmp ne i32 (%struct.i3c_dev_desc*, %struct.i3c_ibi_setup*)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %4, align 8
  %22 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %21, i32 0, i32 0
  %23 = load %struct.i3c_device_ibi_info*, %struct.i3c_device_ibi_info** %22, align 8
  %24 = icmp ne %struct.i3c_device_ibi_info* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %78

28:                                               ; preds = %20
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.i3c_device_ibi_info* @kzalloc(i32 20, i32 %29)
  store %struct.i3c_device_ibi_info* %30, %struct.i3c_device_ibi_info** %7, align 8
  %31 = load %struct.i3c_device_ibi_info*, %struct.i3c_device_ibi_info** %7, align 8
  %32 = icmp ne %struct.i3c_device_ibi_info* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %78

36:                                               ; preds = %28
  %37 = load %struct.i3c_device_ibi_info*, %struct.i3c_device_ibi_info** %7, align 8
  %38 = getelementptr inbounds %struct.i3c_device_ibi_info, %struct.i3c_device_ibi_info* %37, i32 0, i32 4
  %39 = call i32 @atomic_set(i32* %38, i32 0)
  %40 = load %struct.i3c_device_ibi_info*, %struct.i3c_device_ibi_info** %7, align 8
  %41 = getelementptr inbounds %struct.i3c_device_ibi_info, %struct.i3c_device_ibi_info* %40, i32 0, i32 3
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %44 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.i3c_device_ibi_info*, %struct.i3c_device_ibi_info** %7, align 8
  %47 = getelementptr inbounds %struct.i3c_device_ibi_info, %struct.i3c_device_ibi_info* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %49 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.i3c_device_ibi_info*, %struct.i3c_device_ibi_info** %7, align 8
  %52 = getelementptr inbounds %struct.i3c_device_ibi_info, %struct.i3c_device_ibi_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %54 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i3c_device_ibi_info*, %struct.i3c_device_ibi_info** %7, align 8
  %57 = getelementptr inbounds %struct.i3c_device_ibi_info, %struct.i3c_device_ibi_info* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.i3c_device_ibi_info*, %struct.i3c_device_ibi_info** %7, align 8
  %59 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %4, align 8
  %60 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %59, i32 0, i32 0
  store %struct.i3c_device_ibi_info* %58, %struct.i3c_device_ibi_info** %60, align 8
  %61 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %6, align 8
  %62 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.i3c_dev_desc*, %struct.i3c_ibi_setup*)*, i32 (%struct.i3c_dev_desc*, %struct.i3c_ibi_setup*)** %64, align 8
  %66 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %4, align 8
  %67 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %68 = call i32 %65(%struct.i3c_dev_desc* %66, %struct.i3c_ibi_setup* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %36
  %72 = load %struct.i3c_device_ibi_info*, %struct.i3c_device_ibi_info** %7, align 8
  %73 = call i32 @kfree(%struct.i3c_device_ibi_info* %72)
  %74 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %4, align 8
  %75 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %74, i32 0, i32 0
  store %struct.i3c_device_ibi_info* null, %struct.i3c_device_ibi_info** %75, align 8
  br label %76

76:                                               ; preds = %71, %36
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %33, %25, %17
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

declare dso_local %struct.i3c_device_ibi_info* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kfree(%struct.i3c_device_ibi_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
