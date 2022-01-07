; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_InitFE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_InitFE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32, i32, i32, i64, i64, i32 }

@FE_AG_REG_AG_PGA_MODE__A = common dso_local global i32 0, align 4
@FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN = common dso_local global i32 0, align 4
@B_FE_AG_REG_AG_PGA_MODE__A = common dso_local global i32 0, align 4
@B_FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN = common dso_local global i32 0, align 4
@FE_AG_REG_AG_AGC_SIO__A = common dso_local global i32 0, align 4
@FE_AG_REG_AG_PWD__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*)* @InitFE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitFE(%struct.drxd_state* %0) #0 {
  %2 = alloca %struct.drxd_state*, align 8
  %3 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %2, align 8
  br label %4

4:                                                ; preds = %1
  %5 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %6 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %7 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @WriteTable(%struct.drxd_state* %5, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %71

13:                                               ; preds = %4
  %14 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %15 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %20 = load i32, i32* @FE_AG_REG_AG_PGA_MODE__A, align 4
  %21 = load i32, i32* @FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN, align 4
  %22 = call i32 @Write16(%struct.drxd_state* %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %3, align 4
  br label %37

23:                                               ; preds = %13
  %24 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %25 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %30 = call i32 @SetCfgPga(%struct.drxd_state* %29, i32 0)
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %23
  %32 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %33 = load i32, i32* @B_FE_AG_REG_AG_PGA_MODE__A, align 4
  %34 = load i32, i32* @B_FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN, align 4
  %35 = call i32 @Write16(%struct.drxd_state* %32, i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %28
  br label %37

37:                                               ; preds = %36, %18
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %71

41:                                               ; preds = %37
  %42 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %43 = load i32, i32* @FE_AG_REG_AG_AGC_SIO__A, align 4
  %44 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %45 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @Write16(%struct.drxd_state* %42, i32 %43, i32 %46, i32 0)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %71

51:                                               ; preds = %41
  %52 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %53 = load i32, i32* @FE_AG_REG_AG_PWD__A, align 4
  %54 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %55 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @Write16(%struct.drxd_state* %52, i32 %53, i32 %56, i32 0)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %71

61:                                               ; preds = %51
  %62 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %63 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %64 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @WriteTable(%struct.drxd_state* %62, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %71

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %69, %60, %50, %40, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @WriteTable(%struct.drxd_state*, i32) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

declare dso_local i32 @SetCfgPga(%struct.drxd_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
