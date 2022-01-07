; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-cpu-debug.c_debug_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-cpu-debug.c_debug_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_drvdata = type { i32, i64, i32, i64, i32, i64, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c" EDPRSR:  %08x (Power:%s DLK:%s)\0A\00", align 1
@EDPRSR_PU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@EDPRSR_DLK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Unlock\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"No permission to access debug registers!\0A\00", align 1
@EDPCSR_PROHIBITED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [51 x i8] c"CPU is in Debug state or profiling is prohibited!\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" EDPCSR:  %pS\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c" EDCIDSR: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c" EDVIDSR: %08x (State:%s Mode:%s Width:%dbits VMID:%x)\0A\00", align 1
@EDVIDSR_NS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"Non-secure\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Secure\00", align 1
@EDVIDSR_E3 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"EL3\00", align 1
@EDVIDSR_E2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"EL2\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"EL1/0\00", align 1
@EDVIDSR_HV = common dso_local global i32 0, align 4
@EDVIDSR_VMID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.debug_drvdata*)* @debug_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_dump_regs(%struct.debug_drvdata* %0) #0 {
  %2 = alloca %struct.debug_drvdata*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  store %struct.debug_drvdata* %0, %struct.debug_drvdata** %2, align 8
  %5 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %6 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %5, i32 0, i32 6
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %10 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %13 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @EDPRSR_PU, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %20 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %21 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @EDPRSR_DLK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %28 = call i32 (%struct.device*, i8*, ...) @dev_emerg(%struct.device* %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %19, i8* %27)
  %29 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %30 = call i32 @debug_access_permitted(%struct.debug_drvdata* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_emerg(%struct.device* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %112

35:                                               ; preds = %1
  %36 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %37 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EDPCSR_PROHIBITED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_emerg(%struct.device* %42, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %112

44:                                               ; preds = %35
  %45 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %46 = call i64 @debug_adjust_pc(%struct.debug_drvdata* %45)
  store i64 %46, i64* %4, align 8
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 (%struct.device*, i8*, ...) @dev_emerg(%struct.device* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %49)
  %51 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %52 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %58 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_emerg(%struct.device* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %44
  %62 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %63 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %112

66:                                               ; preds = %61
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %69 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %72 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @EDVIDSR_NS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)
  %79 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %80 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @EDVIDSR_E3, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %66
  br label %95

86:                                               ; preds = %66
  %87 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %88 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @EDVIDSR_E2, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)
  br label %95

95:                                               ; preds = %86, %85
  %96 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), %85 ], [ %94, %86 ]
  %97 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %98 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @EDVIDSR_HV, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 64, i32 32
  %105 = load %struct.debug_drvdata*, %struct.debug_drvdata** %2, align 8
  %106 = getelementptr inbounds %struct.debug_drvdata, %struct.debug_drvdata* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* @EDVIDSR_VMID, align 8
  %109 = trunc i64 %108 to i32
  %110 = and i32 %107, %109
  %111 = call i32 (%struct.device*, i8*, ...) @dev_emerg(%struct.device* %67, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 %70, i8* %78, i8* %96, i32 %104, i32 %110)
  br label %112

112:                                              ; preds = %32, %41, %95, %61
  ret void
}

declare dso_local i32 @dev_emerg(%struct.device*, i8*, ...) #1

declare dso_local i32 @debug_access_permitted(%struct.debug_drvdata*) #1

declare dso_local i64 @debug_adjust_pc(%struct.debug_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
