; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_resync_ibepb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_resync_ibepb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@IBSD_RESYNC_TRIES = common dso_local global i32 0, align 4
@IB_7220_SERDES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed read in resync\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unexpected pattern in resync\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed write in resync\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed re-read in resync\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed compare1 in resync\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed CMUDONE rd in resync\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Bad CMUDONE value %02X, chn %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_resync_ibepb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_resync_ibepb(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %97, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IBSD_RESYNC_TRIES, align 4
  %11 = mul nsw i32 4, %10
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %100

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @IB_PGUDP(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = load i32, i32* @IB_7220_SERDES, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %16, i32 %17, i32 %18, i32 0, i32 0)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %24 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %97

25:                                               ; preds = %13
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 240
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 85
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %36 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31, %28, %25
  %38 = load i32, i32* %3, align 4
  %39 = xor i32 %38, 165
  store i32 %39, i32* %4, align 4
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %41 = load i32, i32* @IB_7220_SERDES, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %40, i32 %41, i32 %42, i32 %43, i32 255)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %49 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %97

50:                                               ; preds = %37
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %52 = load i32, i32* @IB_7220_SERDES, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %51, i32 %52, i32 %53, i32 0, i32 0)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %59 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %97

60:                                               ; preds = %50
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %66 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %97

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @IB_CMUDONE(i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %71 = load i32, i32* @IB_7220_SERDES, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %70, i32 %71, i32 %72, i32 0, i32 0)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %78 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %97

79:                                               ; preds = %67
  %80 = load i32, i32* %3, align 4
  %81 = and i32 %80, 112
  %82 = load i32, i32* %6, align 4
  %83 = shl i32 %82, 4
  %84 = or i32 %83, 64
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %88, i32 %89)
  br label %97

91:                                               ; preds = %79
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %100

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %86, %76, %64, %57, %47, %22
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %8

100:                                              ; preds = %95, %8
  %101 = load i32, i32* %3, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = phi i32 [ 0, %103 ], [ %105, %104 ]
  ret i32 %107
}

declare dso_local i32 @IB_PGUDP(i32) #1

declare dso_local i32 @qib_sd7220_reg_mod(%struct.qib_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @IB_CMUDONE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
