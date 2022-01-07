; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_cntr_val_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_cntr_val_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etm_drvdata = type { i32, i32, i32, %struct.etm_config }
%struct.etm_config = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"counter %d: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @cntr_val_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cntr_val_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.etm_drvdata*, align 8
  %12 = alloca %struct.etm_config*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.etm_drvdata* @dev_get_drvdata(i32 %15)
  store %struct.etm_drvdata* %16, %struct.etm_drvdata** %11, align 8
  %17 = load %struct.etm_drvdata*, %struct.etm_drvdata** %11, align 8
  %18 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %17, i32 0, i32 3
  store %struct.etm_config* %18, %struct.etm_config** %12, align 8
  %19 = load %struct.etm_drvdata*, %struct.etm_drvdata** %11, align 8
  %20 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %19, i32 0, i32 2
  %21 = call i32 @local_read(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %3
  %24 = load %struct.etm_drvdata*, %struct.etm_drvdata** %11, align 8
  %25 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %48, %23
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.etm_drvdata*, %struct.etm_drvdata** %11, align 8
  %30 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.etm_config*, %struct.etm_config** %12, align 8
  %37 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @sprintf(i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load %struct.etm_drvdata*, %struct.etm_drvdata** %11, align 8
  %53 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %81

56:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %76, %56
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.etm_drvdata*, %struct.etm_drvdata** %11, align 8
  %60 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.etm_drvdata*, %struct.etm_drvdata** %11, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ETMCNTVRn(i32 %65)
  %67 = call i32 @etm_readl(%struct.etm_drvdata* %64, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @sprintf(i8* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %51
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.etm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @local_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @etm_readl(%struct.etm_drvdata*, i32) #1

declare dso_local i32 @ETMCNTVRn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
