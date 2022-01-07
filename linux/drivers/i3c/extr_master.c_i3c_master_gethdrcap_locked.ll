; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_gethdrcap_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_gethdrcap_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { i32 }
%struct.i3c_device_info = type { i32, i32 }
%struct.i3c_ccc_gethdrcap = type { i32 }
%struct.i3c_ccc_cmd_dest = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i3c_ccc_cmd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I3C_CCC_GETHDRCAP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*, %struct.i3c_device_info*)* @i3c_master_gethdrcap_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_master_gethdrcap_locked(%struct.i3c_master_controller* %0, %struct.i3c_device_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca %struct.i3c_device_info*, align 8
  %6 = alloca %struct.i3c_ccc_gethdrcap*, align 8
  %7 = alloca %struct.i3c_ccc_cmd_dest, align 4
  %8 = alloca %struct.i3c_ccc_cmd, align 4
  %9 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %4, align 8
  store %struct.i3c_device_info* %1, %struct.i3c_device_info** %5, align 8
  %10 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %11 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.i3c_ccc_gethdrcap* @i3c_ccc_cmd_dest_init(%struct.i3c_ccc_cmd_dest* %7, i32 %12, i32 4)
  store %struct.i3c_ccc_gethdrcap* %13, %struct.i3c_ccc_gethdrcap** %6, align 8
  %14 = load %struct.i3c_ccc_gethdrcap*, %struct.i3c_ccc_gethdrcap** %6, align 8
  %15 = icmp ne %struct.i3c_ccc_gethdrcap* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load i32, i32* @I3C_CCC_GETHDRCAP, align 4
  %21 = call i32 @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd* %8, i32 1, i32 %20, %struct.i3c_ccc_cmd_dest* %7, i32 1)
  %22 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %23 = call i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller* %22, %struct.i3c_ccc_cmd* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %41

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.i3c_ccc_cmd_dest, %struct.i3c_ccc_cmd_dest* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %41

35:                                               ; preds = %27
  %36 = load %struct.i3c_ccc_gethdrcap*, %struct.i3c_ccc_gethdrcap** %6, align 8
  %37 = getelementptr inbounds %struct.i3c_ccc_gethdrcap, %struct.i3c_ccc_gethdrcap* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %40 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %32, %26
  %42 = call i32 @i3c_ccc_cmd_dest_cleanup(%struct.i3c_ccc_cmd_dest* %7)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.i3c_ccc_gethdrcap* @i3c_ccc_cmd_dest_init(%struct.i3c_ccc_cmd_dest*, i32, i32) #1

declare dso_local i32 @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd*, i32, i32, %struct.i3c_ccc_cmd_dest*, i32) #1

declare dso_local i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*) #1

declare dso_local i32 @i3c_ccc_cmd_dest_cleanup(%struct.i3c_ccc_cmd_dest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
