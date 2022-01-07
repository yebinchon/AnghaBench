; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_sparcspkr.c_bbc_beep_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_sparcspkr.c_bbc_beep_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32*, i32 }
%struct.sparcspkr_state = type { i8*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.bbc_beep_info }
%struct.bbc_beep_info = type { i32, i32 }
%struct.device_node = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Sparc BBC Speaker\00", align 1
@bbc_spkr_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"bbc beep\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bbc_beep_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbc_beep_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sparcspkr_state*, align 8
  %5 = alloca %struct.bbc_beep_info*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sparcspkr_state* @kzalloc(i32 24, i32 %10)
  store %struct.sparcspkr_state* %11, %struct.sparcspkr_state** %4, align 8
  %12 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %13 = icmp ne %struct.sparcspkr_state* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %17 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @bbc_spkr_event, align 4
  %19 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %20 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %22 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %21, i32 0, i32 2
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %24, %struct.device_node** %6, align 8
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  br label %76

30:                                               ; preds = %15
  %31 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %32 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.bbc_beep_info* %33, %struct.bbc_beep_info** %5, align 8
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call i32 @of_getintprop_default(%struct.device_node* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %36 = load %struct.bbc_beep_info*, %struct.bbc_beep_info** %5, align 8
  %37 = getelementptr inbounds %struct.bbc_beep_info, %struct.bbc_beep_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bbc_beep_info*, %struct.bbc_beep_info** %5, align 8
  %39 = getelementptr inbounds %struct.bbc_beep_info, %struct.bbc_beep_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  br label %76

43:                                               ; preds = %30
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call i32 @of_ioremap(i32* %47, i32 0, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.bbc_beep_info*, %struct.bbc_beep_info** %5, align 8
  %50 = getelementptr inbounds %struct.bbc_beep_info, %struct.bbc_beep_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.bbc_beep_info*, %struct.bbc_beep_info** %5, align 8
  %52 = getelementptr inbounds %struct.bbc_beep_info, %struct.bbc_beep_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %43
  br label %76

56:                                               ; preds = %43
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %59 = call i32 @platform_set_drvdata(%struct.platform_device* %57, %struct.sparcspkr_state* %58)
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 1
  %62 = call i32 @sparcspkr_probe(i32* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %67

66:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %81

67:                                               ; preds = %65
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load %struct.bbc_beep_info*, %struct.bbc_beep_info** %5, align 8
  %73 = getelementptr inbounds %struct.bbc_beep_info, %struct.bbc_beep_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @of_iounmap(i32* %71, i32 %74, i32 6)
  br label %76

76:                                               ; preds = %67, %55, %42, %29
  %77 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %78 = call i32 @kfree(%struct.sparcspkr_state* %77)
  br label %79

79:                                               ; preds = %76, %14
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %66
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.sparcspkr_state* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @of_getintprop_default(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_ioremap(i32*, i32, i32, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sparcspkr_state*) #1

declare dso_local i32 @sparcspkr_probe(i32*) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.sparcspkr_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
