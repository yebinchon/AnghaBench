; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_getmrl_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_getmrl_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { i32 }
%struct.i3c_device_info = type { i32, i32, i32, i32 }
%struct.i3c_ccc_cmd_dest = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i3c_ccc_mrl = type { i32, i32 }
%struct.i3c_ccc_cmd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I3C_BCR_IBI_PAYLOAD = common dso_local global i32 0, align 4
@I3C_CCC_GETMRL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*, %struct.i3c_device_info*)* @i3c_master_getmrl_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_master_getmrl_locked(%struct.i3c_master_controller* %0, %struct.i3c_device_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca %struct.i3c_device_info*, align 8
  %6 = alloca %struct.i3c_ccc_cmd_dest, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i3c_ccc_mrl*, align 8
  %9 = alloca %struct.i3c_ccc_cmd, align 4
  %10 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %4, align 8
  store %struct.i3c_device_info* %1, %struct.i3c_device_info** %5, align 8
  %11 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %12 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.i3c_ccc_mrl* @i3c_ccc_cmd_dest_init(%struct.i3c_ccc_cmd_dest* %6, i32 %13, i32 8)
  store %struct.i3c_ccc_mrl* %14, %struct.i3c_ccc_mrl** %8, align 8
  %15 = load %struct.i3c_ccc_mrl*, %struct.i3c_ccc_mrl** %8, align 8
  %16 = icmp ne %struct.i3c_ccc_mrl* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %22 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I3C_BCR_IBI_PAYLOAD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.i3c_ccc_cmd_dest, %struct.i3c_ccc_cmd_dest* %6, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %20
  %33 = getelementptr inbounds %struct.i3c_ccc_cmd_dest, %struct.i3c_ccc_cmd_dest* %6, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @I3C_CCC_GETMRL, align 4
  %37 = call i32 @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd* %9, i32 1, i32 %36, %struct.i3c_ccc_cmd_dest* %6, i32 1)
  %38 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %39 = call i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller* %38, %struct.i3c_ccc_cmd* %9)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %72

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.i3c_ccc_cmd_dest, %struct.i3c_ccc_cmd_dest* %6, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %72

52:                                               ; preds = %43
  %53 = load %struct.i3c_ccc_mrl*, %struct.i3c_ccc_mrl** %8, align 8
  %54 = getelementptr inbounds %struct.i3c_ccc_mrl, %struct.i3c_ccc_mrl* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be16_to_cpu(i32 %55)
  %57 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %58 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %60 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @I3C_BCR_IBI_PAYLOAD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = load %struct.i3c_ccc_mrl*, %struct.i3c_ccc_mrl** %8, align 8
  %67 = getelementptr inbounds %struct.i3c_ccc_mrl, %struct.i3c_ccc_mrl* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %70 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %52
  br label %72

72:                                               ; preds = %71, %49, %42
  %73 = call i32 @i3c_ccc_cmd_dest_cleanup(%struct.i3c_ccc_cmd_dest* %6)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.i3c_ccc_mrl* @i3c_ccc_cmd_dest_init(%struct.i3c_ccc_cmd_dest*, i32, i32) #1

declare dso_local i32 @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd*, i32, i32, %struct.i3c_ccc_cmd_dest*, i32) #1

declare dso_local i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @i3c_ccc_cmd_dest_cleanup(%struct.i3c_ccc_cmd_dest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
