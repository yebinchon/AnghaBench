; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_getmxds_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_getmxds_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { i32 }
%struct.i3c_device_info = type { i32, i32, i32, i32 }
%struct.i3c_ccc_getmxds = type { i32*, i32, i32 }
%struct.i3c_ccc_cmd_dest = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i3c_ccc_cmd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I3C_CCC_GETMXDS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*, %struct.i3c_device_info*)* @i3c_master_getmxds_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_master_getmxds_locked(%struct.i3c_master_controller* %0, %struct.i3c_device_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca %struct.i3c_device_info*, align 8
  %6 = alloca %struct.i3c_ccc_getmxds*, align 8
  %7 = alloca %struct.i3c_ccc_cmd_dest, align 4
  %8 = alloca %struct.i3c_ccc_cmd, align 4
  %9 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %4, align 8
  store %struct.i3c_device_info* %1, %struct.i3c_device_info** %5, align 8
  %10 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %11 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.i3c_ccc_getmxds* @i3c_ccc_cmd_dest_init(%struct.i3c_ccc_cmd_dest* %7, i32 %12, i32 16)
  store %struct.i3c_ccc_getmxds* %13, %struct.i3c_ccc_getmxds** %6, align 8
  %14 = load %struct.i3c_ccc_getmxds*, %struct.i3c_ccc_getmxds** %6, align 8
  %15 = icmp ne %struct.i3c_ccc_getmxds* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %81

19:                                               ; preds = %2
  %20 = load i32, i32* @I3C_CCC_GETMXDS, align 4
  %21 = call i32 @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd* %8, i32 1, i32 %20, %struct.i3c_ccc_cmd_dest* %7, i32 1)
  %22 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %23 = call i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller* %22, %struct.i3c_ccc_cmd* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %78

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.i3c_ccc_cmd_dest, %struct.i3c_ccc_cmd_dest* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.i3c_ccc_cmd_dest, %struct.i3c_ccc_cmd_dest* %7, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 5
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %78

40:                                               ; preds = %32, %27
  %41 = load %struct.i3c_ccc_getmxds*, %struct.i3c_ccc_getmxds** %6, align 8
  %42 = getelementptr inbounds %struct.i3c_ccc_getmxds, %struct.i3c_ccc_getmxds* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %45 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.i3c_ccc_getmxds*, %struct.i3c_ccc_getmxds** %6, align 8
  %47 = getelementptr inbounds %struct.i3c_ccc_getmxds, %struct.i3c_ccc_getmxds* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %50 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.i3c_ccc_cmd_dest, %struct.i3c_ccc_cmd_dest* %7, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 5
  br i1 %54, label %55, label %77

55:                                               ; preds = %40
  %56 = load %struct.i3c_ccc_getmxds*, %struct.i3c_ccc_getmxds** %6, align 8
  %57 = getelementptr inbounds %struct.i3c_ccc_getmxds, %struct.i3c_ccc_getmxds* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.i3c_ccc_getmxds*, %struct.i3c_ccc_getmxds** %6, align 8
  %62 = getelementptr inbounds %struct.i3c_ccc_getmxds, %struct.i3c_ccc_getmxds* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %60, %66
  %68 = load %struct.i3c_ccc_getmxds*, %struct.i3c_ccc_getmxds** %6, align 8
  %69 = getelementptr inbounds %struct.i3c_ccc_getmxds, %struct.i3c_ccc_getmxds* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 16
  %74 = or i32 %67, %73
  %75 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %76 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %55, %40
  br label %78

78:                                               ; preds = %77, %37, %26
  %79 = call i32 @i3c_ccc_cmd_dest_cleanup(%struct.i3c_ccc_cmd_dest* %7)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.i3c_ccc_getmxds* @i3c_ccc_cmd_dest_init(%struct.i3c_ccc_cmd_dest*, i32, i32) #1

declare dso_local i32 @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd*, i32, i32, %struct.i3c_ccc_cmd_dest*, i32) #1

declare dso_local i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*) #1

declare dso_local i32 @i3c_ccc_cmd_dest_cleanup(%struct.i3c_ccc_cmd_dest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
