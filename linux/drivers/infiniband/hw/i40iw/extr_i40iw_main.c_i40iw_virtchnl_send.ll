; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_virtchnl_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_virtchnl_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_device* }
%struct.i40iw_device = type { %struct.i40e_info* }
%struct.i40e_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i40e_info*, i32*, i32, i32*, i32)* }

@I40IW_ERR_BAD_PTR = common dso_local global i32 0, align 4
@i40iw_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, i32, i32*, i32)* @i40iw_virtchnl_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_virtchnl_send(%struct.i40iw_sc_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40iw_device*, align 8
  %11 = alloca %struct.i40e_info*, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %13 = icmp ne %struct.i40iw_sc_dev* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %16 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %15, i32 0, i32 0
  %17 = load %struct.i40iw_device*, %struct.i40iw_device** %16, align 8
  %18 = icmp ne %struct.i40iw_device* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %4
  %20 = load i32, i32* @I40IW_ERR_BAD_PTR, align 4
  store i32 %20, i32* %5, align 4
  br label %55

21:                                               ; preds = %14
  %22 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %23 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %22, i32 0, i32 0
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %23, align 8
  store %struct.i40iw_device* %24, %struct.i40iw_device** %10, align 8
  %25 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %26 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %25, i32 0, i32 0
  %27 = load %struct.i40e_info*, %struct.i40e_info** %26, align 8
  store %struct.i40e_info* %27, %struct.i40e_info** %11, align 8
  %28 = load %struct.i40e_info*, %struct.i40e_info** %11, align 8
  %29 = icmp ne %struct.i40e_info* %28, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %21
  %31 = load %struct.i40e_info*, %struct.i40e_info** %11, align 8
  %32 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.i40e_info*, %struct.i40e_info** %11, align 8
  %37 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.i40e_info*, i32*, i32, i32*, i32)*, i32 (%struct.i40e_info*, i32*, i32, i32*, i32)** %39, align 8
  %41 = icmp ne i32 (%struct.i40e_info*, i32*, i32, i32*, i32)* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.i40e_info*, %struct.i40e_info** %11, align 8
  %44 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.i40e_info*, i32*, i32, i32*, i32)*, i32 (%struct.i40e_info*, i32*, i32, i32*, i32)** %46, align 8
  %48 = load %struct.i40e_info*, %struct.i40e_info** %11, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 %47(%struct.i40e_info* %48, i32* @i40iw_client, i32 %49, i32* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %55

53:                                               ; preds = %35, %30, %21
  %54 = load i32, i32* @I40IW_ERR_BAD_PTR, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %42, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
