; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.h_mixercfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.h_mixercfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDP4_LAYERMIXER_IN_CFG_PIPE0__MASK = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE0_MIXER1 = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE1__MASK = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE1_MIXER1 = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE2__MASK = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE2_MIXER1 = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE3__MASK = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE3_MIXER1 = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE4__MASK = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE4_MIXER1 = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE5__MASK = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE5_MIXER1 = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE6__MASK = common dso_local global i32 0, align 4
@MDP4_LAYERMIXER_IN_CFG_PIPE6_MIXER1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"invalid pipe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @mixercfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixercfg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %129 [
    i32 131, label %10
    i32 130, label %27
    i32 134, label %44
    i32 133, label %61
    i32 132, label %78
    i32 129, label %95
    i32 128, label %112
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE0__MASK, align 4
  %12 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE0_MIXER1, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @MDP4_LAYERMIXER_IN_CFG_PIPE0(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE0_MIXER1, align 4
  %23 = call i32 @COND(i32 %21, i32 %22)
  %24 = or i32 %18, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %131

27:                                               ; preds = %4
  %28 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE1__MASK, align 4
  %29 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE1_MIXER1, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @MDP4_LAYERMIXER_IN_CFG_PIPE1(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE1_MIXER1, align 4
  %40 = call i32 @COND(i32 %38, i32 %39)
  %41 = or i32 %35, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %131

44:                                               ; preds = %4
  %45 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE2__MASK, align 4
  %46 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE2_MIXER1, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @MDP4_LAYERMIXER_IN_CFG_PIPE2(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE2_MIXER1, align 4
  %57 = call i32 @COND(i32 %55, i32 %56)
  %58 = or i32 %52, %57
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %131

61:                                               ; preds = %4
  %62 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE3__MASK, align 4
  %63 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE3_MIXER1, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @MDP4_LAYERMIXER_IN_CFG_PIPE3(i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE3_MIXER1, align 4
  %74 = call i32 @COND(i32 %72, i32 %73)
  %75 = or i32 %69, %74
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %131

78:                                               ; preds = %4
  %79 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE4__MASK, align 4
  %80 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE4_MIXER1, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @MDP4_LAYERMIXER_IN_CFG_PIPE4(i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 1
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE4_MIXER1, align 4
  %91 = call i32 @COND(i32 %89, i32 %90)
  %92 = or i32 %86, %91
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %131

95:                                               ; preds = %4
  %96 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE5__MASK, align 4
  %97 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE5_MIXER1, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @MDP4_LAYERMIXER_IN_CFG_PIPE5(i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 1
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE5_MIXER1, align 4
  %108 = call i32 @COND(i32 %106, i32 %107)
  %109 = or i32 %103, %108
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  br label %131

112:                                              ; preds = %4
  %113 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE6__MASK, align 4
  %114 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE6_MIXER1, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @MDP4_LAYERMIXER_IN_CFG_PIPE6(i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 1
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* @MDP4_LAYERMIXER_IN_CFG_PIPE6_MIXER1, align 4
  %125 = call i32 @COND(i32 %123, i32 %124)
  %126 = or i32 %120, %125
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  br label %131

129:                                              ; preds = %4
  %130 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %112, %95, %78, %61, %44, %27, %10
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @MDP4_LAYERMIXER_IN_CFG_PIPE0(i32) #1

declare dso_local i32 @COND(i32, i32) #1

declare dso_local i32 @MDP4_LAYERMIXER_IN_CFG_PIPE1(i32) #1

declare dso_local i32 @MDP4_LAYERMIXER_IN_CFG_PIPE2(i32) #1

declare dso_local i32 @MDP4_LAYERMIXER_IN_CFG_PIPE3(i32) #1

declare dso_local i32 @MDP4_LAYERMIXER_IN_CFG_PIPE4(i32) #1

declare dso_local i32 @MDP4_LAYERMIXER_IN_CFG_PIPE5(i32) #1

declare dso_local i32 @MDP4_LAYERMIXER_IN_CFG_PIPE6(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
