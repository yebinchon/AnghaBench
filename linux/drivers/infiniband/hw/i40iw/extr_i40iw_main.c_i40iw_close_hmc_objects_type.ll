; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_close_hmc_objects_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_close_hmc_objects_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_del_obj_info*, i32)* }
%struct.i40iw_hmc_del_obj_info = type { i32, i32, i32, %struct.i40iw_hmc_info* }
%struct.i40iw_hmc_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"del obj of type %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_sc_dev*, i32, %struct.i40iw_hmc_info*, i32, i32)* @i40iw_close_hmc_objects_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_close_hmc_objects_type(%struct.i40iw_sc_dev* %0, i32 %1, %struct.i40iw_hmc_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.i40iw_sc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40iw_hmc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40iw_hmc_del_obj_info, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.i40iw_hmc_info* %2, %struct.i40iw_hmc_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i32 @memset(%struct.i40iw_hmc_del_obj_info* %11, i32 0, i32 24)
  %13 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %8, align 8
  %14 = getelementptr inbounds %struct.i40iw_hmc_del_obj_info, %struct.i40iw_hmc_del_obj_info* %11, i32 0, i32 3
  store %struct.i40iw_hmc_info* %13, %struct.i40iw_hmc_info** %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.i40iw_hmc_del_obj_info, %struct.i40iw_hmc_del_obj_info* %11, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %8, align 8
  %18 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.i40iw_hmc_del_obj_info, %struct.i40iw_hmc_del_obj_info* %11, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.i40iw_hmc_del_obj_info, %struct.i40iw_hmc_del_obj_info* %11, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %29 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_del_obj_info*, i32)*, i64 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_del_obj_info*, i32)** %31, align 8
  %33 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i64 %32(%struct.i40iw_sc_dev* %33, %struct.i40iw_hmc_del_obj_info* %11, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %5
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %5
  ret void
}

declare dso_local i32 @memset(%struct.i40iw_hmc_del_obj_info*, i32, i32) #1

declare dso_local i32 @i40iw_pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
