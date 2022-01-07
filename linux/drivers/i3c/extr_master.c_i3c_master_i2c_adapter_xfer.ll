; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_i2c_adapter_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_i2c_adapter_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i64 }
%struct.i3c_master_controller = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i2c_dev_desc*, %struct.i2c_msg*, i32)* }
%struct.i2c_dev_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i3c_master_i2c_adapter_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_master_i2c_adapter_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i3c_master_controller*, align 8
  %9 = alloca %struct.i2c_dev_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = call %struct.i3c_master_controller* @i2c_adapter_to_i3c_master(%struct.i2c_adapter* %13)
  store %struct.i3c_master_controller* %14, %struct.i3c_master_controller** %8, align 8
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %16 = icmp ne %struct.i2c_msg* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %8, align 8
  %19 = icmp ne %struct.i3c_master_controller* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %17, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %95

26:                                               ; preds = %20
  %27 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %8, align 8
  %28 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.i2c_dev_desc*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_dev_desc*, %struct.i2c_msg*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.i2c_dev_desc*, %struct.i2c_msg*, i32)* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %95

36:                                               ; preds = %26
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  store i32 1, i32* %10, align 4
  br label %41

41:                                               ; preds = %58, %36
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i64 %49
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %46, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %95

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %41

61:                                               ; preds = %41
  %62 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %8, align 8
  %63 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %62, i32 0, i32 0
  %64 = call i32 @i3c_bus_normaluse_lock(i32* %63)
  %65 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %8, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call %struct.i2c_dev_desc* @i3c_master_find_i2c_dev_by_addr(%struct.i3c_master_controller* %65, i64 %66)
  store %struct.i2c_dev_desc* %67, %struct.i2c_dev_desc** %9, align 8
  %68 = load %struct.i2c_dev_desc*, %struct.i2c_dev_desc** %9, align 8
  %69 = icmp ne %struct.i2c_dev_desc* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  br label %83

73:                                               ; preds = %61
  %74 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %8, align 8
  %75 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32 (%struct.i2c_dev_desc*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_dev_desc*, %struct.i2c_msg*, i32)** %77, align 8
  %79 = load %struct.i2c_dev_desc*, %struct.i2c_dev_desc** %9, align 8
  %80 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 %78(%struct.i2c_dev_desc* %79, %struct.i2c_msg* %80, i32 %81)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %73, %70
  %84 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %8, align 8
  %85 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %84, i32 0, i32 0
  %86 = call i32 @i3c_bus_normaluse_unlock(i32* %85)
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  br label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %7, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %54, %33, %23
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.i3c_master_controller* @i2c_adapter_to_i3c_master(%struct.i2c_adapter*) #1

declare dso_local i32 @i3c_bus_normaluse_lock(i32*) #1

declare dso_local %struct.i2c_dev_desc* @i3c_master_find_i2c_dev_by_addr(%struct.i3c_master_controller*, i64) #1

declare dso_local i32 @i3c_bus_normaluse_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
