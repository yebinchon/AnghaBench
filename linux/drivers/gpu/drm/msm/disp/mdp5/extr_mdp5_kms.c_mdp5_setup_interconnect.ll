; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_setup_interconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_setup_interconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.icc_path = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"mdp0-mem\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"mdp1-mem\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rotator-mem\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"No interconnect support may cause display underflows!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mdp5_setup_interconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_setup_interconnect(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.icc_path*, align 8
  %5 = alloca %struct.icc_path*, align 8
  %6 = alloca %struct.icc_path*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.icc_path* @of_icc_get(i32* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.icc_path* %9, %struct.icc_path** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.icc_path* @of_icc_get(i32* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.icc_path* %12, %struct.icc_path** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.icc_path* @of_icc_get(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store %struct.icc_path* %15, %struct.icc_path** %6, align 8
  %16 = load %struct.icc_path*, %struct.icc_path** %4, align 8
  %17 = call i64 @IS_ERR(%struct.icc_path* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.icc_path*, %struct.icc_path** %4, align 8
  %21 = call i32 @PTR_ERR(%struct.icc_path* %20)
  store i32 %21, i32* %2, align 4
  br label %49

22:                                               ; preds = %1
  %23 = load %struct.icc_path*, %struct.icc_path** %4, align 8
  %24 = icmp ne %struct.icc_path* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %49

29:                                               ; preds = %22
  %30 = load %struct.icc_path*, %struct.icc_path** %4, align 8
  %31 = call i32 @MBps_to_icc(i32 6400)
  %32 = call i32 @icc_set_bw(%struct.icc_path* %30, i32 0, i32 %31)
  %33 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %34 = call i32 @IS_ERR_OR_NULL(%struct.icc_path* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %38 = call i32 @MBps_to_icc(i32 6400)
  %39 = call i32 @icc_set_bw(%struct.icc_path* %37, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.icc_path*, %struct.icc_path** %6, align 8
  %42 = call i32 @IS_ERR_OR_NULL(%struct.icc_path* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load %struct.icc_path*, %struct.icc_path** %6, align 8
  %46 = call i32 @MBps_to_icc(i32 6400)
  %47 = call i32 @icc_set_bw(%struct.icc_path* %45, i32 0, i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %25, %19
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.icc_path* @of_icc_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.icc_path*) #1

declare dso_local i32 @PTR_ERR(%struct.icc_path*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @icc_set_bw(%struct.icc_path*, i32, i32) #1

declare dso_local i32 @MBps_to_icc(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.icc_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
