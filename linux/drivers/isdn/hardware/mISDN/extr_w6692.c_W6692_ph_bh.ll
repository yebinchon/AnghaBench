; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_ph_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_ph_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dchannel = type { i32, i32, %struct.w6692_hw* }
%struct.w6692_hw = type { i32, i32 }

@HW_RESET_IND = common dso_local global i32 0, align 4
@HW_DEACT_CNF = common dso_local global i32 0, align 4
@HW_DEACT_IND = common dso_local global i32 0, align 4
@HW_POWERUP_IND = common dso_local global i32 0, align 4
@ANYSIGNAL = common dso_local global i32 0, align 4
@LOSTFRAMING = common dso_local global i32 0, align 4
@INFO2 = common dso_local global i32 0, align 4
@INFO4_P8 = common dso_local global i32 0, align 4
@INFO4_P10 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: TE unknown state %02x dch state %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: TE newstate %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dchannel*)* @W6692_ph_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692_ph_bh(%struct.dchannel* %0) #0 {
  %2 = alloca %struct.dchannel*, align 8
  %3 = alloca %struct.w6692_hw*, align 8
  store %struct.dchannel* %0, %struct.dchannel** %2, align 8
  %4 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %5 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %4, i32 0, i32 2
  %6 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  store %struct.w6692_hw* %6, %struct.w6692_hw** %3, align 8
  %7 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %8 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %88 [
    i32 135, label %10
    i32 131, label %18
    i32 129, label %26
    i32 130, label %34
    i32 128, label %42
    i32 132, label %64
    i32 133, label %72
    i32 134, label %80
  ]

10:                                               ; preds = %1
  %11 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %12 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %14 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HW_RESET_IND, align 4
  %17 = call i32 @l1_event(i32 %15, i32 %16)
  br label %99

18:                                               ; preds = %1
  %19 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %20 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %19, i32 0, i32 0
  store i32 3, i32* %20, align 8
  %21 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %22 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HW_DEACT_CNF, align 4
  %25 = call i32 @l1_event(i32 %23, i32 %24)
  br label %99

26:                                               ; preds = %1
  %27 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %28 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %27, i32 0, i32 0
  store i32 3, i32* %28, align 8
  %29 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %30 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HW_DEACT_IND, align 4
  %33 = call i32 @l1_event(i32 %31, i32 %32)
  br label %99

34:                                               ; preds = %1
  %35 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %36 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %35, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %38 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HW_POWERUP_IND, align 4
  %41 = call i32 @l1_event(i32 %39, i32 %40)
  br label %99

42:                                               ; preds = %1
  %43 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %44 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sle i32 %45, 5
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %49 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %48, i32 0, i32 0
  store i32 5, i32* %49, align 8
  %50 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %51 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ANYSIGNAL, align 4
  %54 = call i32 @l1_event(i32 %52, i32 %53)
  br label %63

55:                                               ; preds = %42
  %56 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %57 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %56, i32 0, i32 0
  store i32 8, i32* %57, align 8
  %58 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %59 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LOSTFRAMING, align 4
  %62 = call i32 @l1_event(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %47
  br label %99

64:                                               ; preds = %1
  %65 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %66 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %65, i32 0, i32 0
  store i32 6, i32* %66, align 8
  %67 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %68 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @INFO2, align 4
  %71 = call i32 @l1_event(i32 %69, i32 %70)
  br label %99

72:                                               ; preds = %1
  %73 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %74 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %73, i32 0, i32 0
  store i32 7, i32* %74, align 8
  %75 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %76 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @INFO4_P8, align 4
  %79 = call i32 @l1_event(i32 %77, i32 %78)
  br label %99

80:                                               ; preds = %1
  %81 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %82 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %81, i32 0, i32 0
  store i32 7, i32* %82, align 8
  %83 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %84 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @INFO4_P10, align 4
  %87 = call i32 @l1_event(i32 %85, i32 %86)
  br label %99

88:                                               ; preds = %1
  %89 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %90 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %93 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %96 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %88, %80, %72, %64, %63, %34, %26, %18, %10
  %100 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %101 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %104 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %105)
  ret void
}

declare dso_local i32 @l1_event(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
