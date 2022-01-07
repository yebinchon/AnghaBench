; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_InitCE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_InitCE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32, i64, i32, i64, i32 }

@OM_DVBT_Diversity_Front = common dso_local global i64 0, align 8
@OM_DVBT_Diversity_End = common dso_local global i64 0, align 8
@APPENV_STATIC = common dso_local global i32 0, align 4
@CE_REG_TAPSET__A = common dso_local global i32 0, align 4
@APPENV_PORTABLE = common dso_local global i32 0, align 4
@APPENV_MOBILE = common dso_local global i32 0, align 4
@B_CE_REG_COMM_EXEC__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*)* @InitCE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitCE(%struct.drxd_state* %0) #0 {
  %2 = alloca %struct.drxd_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %2, align 8
  %5 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %6 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %1
  %9 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %10 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %11 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @WriteTable(%struct.drxd_state* %9, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %102

17:                                               ; preds = %8
  %18 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %19 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OM_DVBT_Diversity_Front, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %25 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OM_DVBT_Diversity_End, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %17
  %30 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %31 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @APPENV_STATIC, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %39 = load i32, i32* @CE_REG_TAPSET__A, align 4
  %40 = call i32 @Write16(%struct.drxd_state* %38, i32 %39, i32 0, i32 0)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %102

44:                                               ; preds = %37
  br label %94

45:                                               ; preds = %33
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @APPENV_PORTABLE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %51 = load i32, i32* @CE_REG_TAPSET__A, align 4
  %52 = call i32 @Write16(%struct.drxd_state* %50, i32 %51, i32 1, i32 0)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %102

56:                                               ; preds = %49
  br label %93

57:                                               ; preds = %45
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @APPENV_MOBILE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %63 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %68 = load i32, i32* @CE_REG_TAPSET__A, align 4
  %69 = call i32 @Write16(%struct.drxd_state* %67, i32 %68, i32 2, i32 0)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %102

73:                                               ; preds = %66
  br label %92

74:                                               ; preds = %61, %57
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @APPENV_MOBILE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %80 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %85 = load i32, i32* @CE_REG_TAPSET__A, align 4
  %86 = call i32 @Write16(%struct.drxd_state* %84, i32 %85, i32 6, i32 0)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %102

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %78, %74
  br label %92

92:                                               ; preds = %91, %73
  br label %93

93:                                               ; preds = %92, %56
  br label %94

94:                                               ; preds = %93, %44
  %95 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %96 = load i32, i32* @B_CE_REG_COMM_EXEC__A, align 4
  %97 = call i32 @Write16(%struct.drxd_state* %95, i32 %96, i32 1, i32 0)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %102

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %100, %89, %72, %55, %43, %16
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @WriteTable(%struct.drxd_state*, i32) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
