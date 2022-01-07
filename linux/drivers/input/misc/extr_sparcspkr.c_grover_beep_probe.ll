; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_sparcspkr.c_grover_beep_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_sparcspkr.c_grover_beep_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32*, i32 }
%struct.sparcspkr_state = type { i8*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.grover_beep_info }
%struct.grover_beep_info = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Sparc Grover Speaker\00", align 1
@grover_spkr_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"grover beep freq\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"grover beep enable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @grover_beep_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grover_beep_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sparcspkr_state*, align 8
  %5 = alloca %struct.grover_beep_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sparcspkr_state* @kzalloc(i32 32, i32 %9)
  store %struct.sparcspkr_state* %10, %struct.sparcspkr_state** %4, align 8
  %11 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %12 = icmp ne %struct.sparcspkr_state* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %83

14:                                               ; preds = %1
  %15 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %16 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* @grover_spkr_event, align 4
  %18 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %19 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %21 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %24 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.grover_beep_info* %25, %struct.grover_beep_info** %5, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = call i8* @of_ioremap(i32* %29, i32 0, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.grover_beep_info*, %struct.grover_beep_info** %5, align 8
  %32 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.grover_beep_info*, %struct.grover_beep_info** %5, align 8
  %34 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %14
  br label %80

38:                                               ; preds = %14
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = call i8* @of_ioremap(i32* %42, i32 0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.grover_beep_info*, %struct.grover_beep_info** %5, align 8
  %45 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.grover_beep_info*, %struct.grover_beep_info** %5, align 8
  %47 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  br label %71

51:                                               ; preds = %38
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %54 = call i32 @platform_set_drvdata(%struct.platform_device* %52, %struct.sparcspkr_state* %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 1
  %57 = call i32 @sparcspkr_probe(i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %62

61:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %85

62:                                               ; preds = %60
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load %struct.grover_beep_info*, %struct.grover_beep_info** %5, align 8
  %68 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @of_iounmap(i32* %66, i8* %69, i32 1)
  br label %71

71:                                               ; preds = %62, %50
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load %struct.grover_beep_info*, %struct.grover_beep_info** %5, align 8
  %77 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @of_iounmap(i32* %75, i8* %78, i32 2)
  br label %80

80:                                               ; preds = %71, %37
  %81 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %4, align 8
  %82 = call i32 @kfree(%struct.sparcspkr_state* %81)
  br label %83

83:                                               ; preds = %80, %13
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %61
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.sparcspkr_state* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @of_ioremap(i32*, i32, i32, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sparcspkr_state*) #1

declare dso_local i32 @sparcspkr_probe(i32*) #1

declare dso_local i32 @of_iounmap(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.sparcspkr_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
