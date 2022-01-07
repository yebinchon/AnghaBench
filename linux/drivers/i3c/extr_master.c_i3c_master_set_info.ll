; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_set_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { %struct.i3c_dev_desc*, %struct.TYPE_2__, i64 }
%struct.i3c_dev_desc = type { i32 }
%struct.TYPE_2__ = type { %struct.i3c_dev_desc* }
%struct.i3c_device_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@I3C_BCR_I3C_MASTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i3c_master_set_info(%struct.i3c_master_controller* %0, %struct.i3c_device_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca %struct.i3c_device_info*, align 8
  %6 = alloca %struct.i3c_dev_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %4, align 8
  store %struct.i3c_device_info* %1, %struct.i3c_device_info** %5, align 8
  %8 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %9 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %8, i32 0, i32 1
  %10 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %11 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @i3c_bus_dev_addr_is_avail(%struct.TYPE_2__* %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %72

18:                                               ; preds = %2
  %19 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %20 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @I3C_BCR_DEVICE_ROLE(i32 %21)
  %23 = load i64, i64* @I3C_BCR_I3C_MASTER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %27 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %72

33:                                               ; preds = %25, %18
  %34 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %35 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %34, i32 0, i32 0
  %36 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %35, align 8
  %37 = icmp ne %struct.i3c_dev_desc* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %72

41:                                               ; preds = %33
  %42 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %43 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %44 = call %struct.i3c_dev_desc* @i3c_master_alloc_i3c_dev(%struct.i3c_master_controller* %42, %struct.i3c_device_info* %43)
  store %struct.i3c_dev_desc* %44, %struct.i3c_dev_desc** %6, align 8
  %45 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %6, align 8
  %46 = call i64 @IS_ERR(%struct.i3c_dev_desc* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %6, align 8
  %50 = call i32 @PTR_ERR(%struct.i3c_dev_desc* %49)
  store i32 %50, i32* %3, align 4
  br label %72

51:                                               ; preds = %41
  %52 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %6, align 8
  %53 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %54 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %53, i32 0, i32 0
  store %struct.i3c_dev_desc* %52, %struct.i3c_dev_desc** %54, align 8
  %55 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %56 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %55, i32 0, i32 0
  %57 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %56, align 8
  %58 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %59 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.i3c_dev_desc* %57, %struct.i3c_dev_desc** %60, align 8
  %61 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %62 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %6, align 8
  %63 = call i32 @i3c_master_attach_i3c_dev(%struct.i3c_master_controller* %61, %struct.i3c_dev_desc* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %68

67:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %72

68:                                               ; preds = %66
  %69 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %6, align 8
  %70 = call i32 @i3c_master_free_i3c_dev(%struct.i3c_dev_desc* %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %67, %48, %38, %30, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @i3c_bus_dev_addr_is_avail(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @I3C_BCR_DEVICE_ROLE(i32) #1

declare dso_local %struct.i3c_dev_desc* @i3c_master_alloc_i3c_dev(%struct.i3c_master_controller*, %struct.i3c_device_info*) #1

declare dso_local i64 @IS_ERR(%struct.i3c_dev_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.i3c_dev_desc*) #1

declare dso_local i32 @i3c_master_attach_i3c_dev(%struct.i3c_master_controller*, %struct.i3c_dev_desc*) #1

declare dso_local i32 @i3c_master_free_i3c_dev(%struct.i3c_dev_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
