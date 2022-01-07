; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_SetCfgPga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_SetCfgPga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32 }

@B_FE_AG_REG_AG_MODE_LOP__A = common dso_local global i32 0, align 4
@B_FE_AG_REG_AG_MODE_LOP_MODE_C__M = common dso_local global i32 0, align 4
@B_FE_AG_REG_AG_MODE_LOP_MODE_C_DYNAMIC = common dso_local global i32 0, align 4
@B_FE_AG_REG_AG_MODE_HIP__A = common dso_local global i32 0, align 4
@B_FE_AG_REG_AG_MODE_HIP_MODE_J__M = common dso_local global i32 0, align 4
@B_FE_AG_REG_AG_MODE_HIP_MODE_J_DYNAMIC = common dso_local global i32 0, align 4
@B_FE_AG_REG_AG_PGA_MODE__A = common dso_local global i32 0, align 4
@B_FE_AG_REG_AG_PGA_MODE_PFY_PCY_AFY_REN = common dso_local global i32 0, align 4
@B_FE_AG_REG_AG_MODE_LOP_MODE_C_STATIC = common dso_local global i32 0, align 4
@B_FE_AG_REG_AG_MODE_HIP_MODE_J_STATIC = common dso_local global i32 0, align 4
@B_FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, i32)* @SetCfgPga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetCfgPga(%struct.drxd_state* %0, i32 %1) #0 {
  %3 = alloca %struct.drxd_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %64

11:                                               ; preds = %8
  %12 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %13 = load i32, i32* @B_FE_AG_REG_AG_MODE_LOP__A, align 4
  %14 = call i32 @Read16(%struct.drxd_state* %12, i32 %13, i32* %6, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %118

18:                                               ; preds = %11
  %19 = load i32, i32* @B_FE_AG_REG_AG_MODE_LOP_MODE_C__M, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @B_FE_AG_REG_AG_MODE_LOP_MODE_C_DYNAMIC, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %27 = load i32, i32* @B_FE_AG_REG_AG_MODE_LOP__A, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @Write16(%struct.drxd_state* %26, i32 %27, i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %118

33:                                               ; preds = %18
  %34 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %35 = load i32, i32* @B_FE_AG_REG_AG_MODE_HIP__A, align 4
  %36 = call i32 @Read16(%struct.drxd_state* %34, i32 %35, i32* %7, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %118

40:                                               ; preds = %33
  %41 = load i32, i32* @B_FE_AG_REG_AG_MODE_HIP_MODE_J__M, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @B_FE_AG_REG_AG_MODE_HIP_MODE_J_DYNAMIC, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %49 = load i32, i32* @B_FE_AG_REG_AG_MODE_HIP__A, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @Write16(%struct.drxd_state* %48, i32 %49, i32 %50, i32 0)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %118

55:                                               ; preds = %40
  %56 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %57 = load i32, i32* @B_FE_AG_REG_AG_PGA_MODE__A, align 4
  %58 = load i32, i32* @B_FE_AG_REG_AG_PGA_MODE_PFY_PCY_AFY_REN, align 4
  %59 = call i32 @Write16(%struct.drxd_state* %56, i32 %57, i32 %58, i32 0)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %118

63:                                               ; preds = %55
  br label %117

64:                                               ; preds = %8
  %65 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %66 = load i32, i32* @B_FE_AG_REG_AG_MODE_LOP__A, align 4
  %67 = call i32 @Read16(%struct.drxd_state* %65, i32 %66, i32* %6, i32 0)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %118

71:                                               ; preds = %64
  %72 = load i32, i32* @B_FE_AG_REG_AG_MODE_LOP_MODE_C__M, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @B_FE_AG_REG_AG_MODE_LOP_MODE_C_STATIC, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %80 = load i32, i32* @B_FE_AG_REG_AG_MODE_LOP__A, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @Write16(%struct.drxd_state* %79, i32 %80, i32 %81, i32 0)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  br label %118

86:                                               ; preds = %71
  %87 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %88 = load i32, i32* @B_FE_AG_REG_AG_MODE_HIP__A, align 4
  %89 = call i32 @Read16(%struct.drxd_state* %87, i32 %88, i32* %7, i32 0)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %118

93:                                               ; preds = %86
  %94 = load i32, i32* @B_FE_AG_REG_AG_MODE_HIP_MODE_J__M, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* @B_FE_AG_REG_AG_MODE_HIP_MODE_J_STATIC, align 4
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %102 = load i32, i32* @B_FE_AG_REG_AG_MODE_HIP__A, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @Write16(%struct.drxd_state* %101, i32 %102, i32 %103, i32 0)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %118

108:                                              ; preds = %93
  %109 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %110 = load i32, i32* @B_FE_AG_REG_AG_PGA_MODE__A, align 4
  %111 = load i32, i32* @B_FE_AG_REG_AG_PGA_MODE_PFN_PCN_AFY_REN, align 4
  %112 = call i32 @Write16(%struct.drxd_state* %109, i32 %110, i32 %111, i32 0)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %118

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %63
  br label %118

118:                                              ; preds = %117, %115, %107, %92, %85, %70, %62, %54, %39, %32, %17
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @Read16(%struct.drxd_state*, i32, i32*, i32) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
