; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_ResetECOD.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_ResetECOD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32, i64 }

@EC_OD_REG_SYNC__A = common dso_local global i32 0, align 4
@B_EC_OD_REG_SYNC__A = common dso_local global i32 0, align 4
@EC_OD_REG_COMM_EXEC__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*)* @ResetECOD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ResetECOD(%struct.drxd_state* %0) #0 {
  %2 = alloca %struct.drxd_state*, align 8
  %3 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %5 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %10 = load i32, i32* @EC_OD_REG_SYNC__A, align 4
  %11 = call i32 @Write16(%struct.drxd_state* %9, i32 %10, i32 1636, i32 0)
  store i32 %11, i32* %3, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %14 = load i32, i32* @B_EC_OD_REG_SYNC__A, align 4
  %15 = call i32 @Write16(%struct.drxd_state* %13, i32 %14, i32 1636, i32 0)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %21 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %22 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @WriteTable(%struct.drxd_state* %20, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %30 = load i32, i32* @EC_OD_REG_COMM_EXEC__A, align 4
  %31 = call i32 @Write16(%struct.drxd_state* %29, i32 %30, i32 1, i32 0)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

declare dso_local i32 @WriteTable(%struct.drxd_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
