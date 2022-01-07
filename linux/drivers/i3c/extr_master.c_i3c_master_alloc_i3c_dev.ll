; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_alloc_i3c_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_alloc_i3c_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { i32, %struct.i3c_device_info, %struct.TYPE_2__ }
%struct.i3c_device_info = type { i32 }
%struct.TYPE_2__ = type { %struct.i3c_master_controller* }
%struct.i3c_master_controller = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i3c_dev_desc* (%struct.i3c_master_controller*, %struct.i3c_device_info*)* @i3c_master_alloc_i3c_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i3c_dev_desc* @i3c_master_alloc_i3c_dev(%struct.i3c_master_controller* %0, %struct.i3c_device_info* %1) #0 {
  %3 = alloca %struct.i3c_dev_desc*, align 8
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca %struct.i3c_device_info*, align 8
  %6 = alloca %struct.i3c_dev_desc*, align 8
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %4, align 8
  store %struct.i3c_device_info* %1, %struct.i3c_device_info** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.i3c_dev_desc* @kzalloc(i32 16, i32 %7)
  store %struct.i3c_dev_desc* %8, %struct.i3c_dev_desc** %6, align 8
  %9 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %6, align 8
  %10 = icmp ne %struct.i3c_dev_desc* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.i3c_dev_desc* @ERR_PTR(i32 %13)
  store %struct.i3c_dev_desc* %14, %struct.i3c_dev_desc** %3, align 8
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %17 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %6, align 8
  %18 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.i3c_master_controller* %16, %struct.i3c_master_controller** %19, align 8
  %20 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %6, align 8
  %21 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %20, i32 0, i32 1
  %22 = load %struct.i3c_device_info*, %struct.i3c_device_info** %5, align 8
  %23 = bitcast %struct.i3c_device_info* %21 to i8*
  %24 = bitcast %struct.i3c_device_info* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %6, align 8
  %26 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %25, i32 0, i32 0
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %6, align 8
  store %struct.i3c_dev_desc* %28, %struct.i3c_dev_desc** %3, align 8
  br label %29

29:                                               ; preds = %15, %11
  %30 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  ret %struct.i3c_dev_desc* %30
}

declare dso_local %struct.i3c_dev_desc* @kzalloc(i32, i32) #1

declare dso_local %struct.i3c_dev_desc* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
