; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_StartOC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_StartOC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32, i32 }

@EC_OC_REG_COMM_EXEC__A = common dso_local global i32 0, align 4
@EC_OC_REG_COMM_EXEC_CTL_HOLD = common dso_local global i32 0, align 4
@EC_OC_REG_SNC_ISC_LVL__A = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_LOP__A = common dso_local global i32 0, align 4
@EC_OC_REG_OCR_MPG_UOS__A = common dso_local global i32 0, align 4
@EC_OC_REG_OCR_MPG_UOS_INIT = common dso_local global i32 0, align 4
@EC_OC_REG_COMM_EXEC_CTL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*)* @StartOC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StartOC(%struct.drxd_state* %0) #0 {
  %2 = alloca %struct.drxd_state*, align 8
  %3 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %1
  %5 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %6 = load i32, i32* @EC_OC_REG_COMM_EXEC__A, align 4
  %7 = load i32, i32* @EC_OC_REG_COMM_EXEC_CTL_HOLD, align 4
  %8 = call i32 @Write16(%struct.drxd_state* %5, i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %49

12:                                               ; preds = %4
  %13 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %14 = load i32, i32* @EC_OC_REG_SNC_ISC_LVL__A, align 4
  %15 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %16 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @Write16(%struct.drxd_state* %13, i32 %14, i32 %17, i32 0)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %49

22:                                               ; preds = %12
  %23 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %24 = load i32, i32* @EC_OC_REG_OC_MODE_LOP__A, align 4
  %25 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %26 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Write16(%struct.drxd_state* %23, i32 %24, i32 %27, i32 0)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %49

32:                                               ; preds = %22
  %33 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %34 = load i32, i32* @EC_OC_REG_OCR_MPG_UOS__A, align 4
  %35 = load i32, i32* @EC_OC_REG_OCR_MPG_UOS_INIT, align 4
  %36 = call i32 @Write16(%struct.drxd_state* %33, i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %49

40:                                               ; preds = %32
  %41 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %42 = load i32, i32* @EC_OC_REG_COMM_EXEC__A, align 4
  %43 = load i32, i32* @EC_OC_REG_COMM_EXEC_CTL_ACTIVE, align 4
  %44 = call i32 @Write16(%struct.drxd_state* %41, i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %47, %39, %31, %21, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
