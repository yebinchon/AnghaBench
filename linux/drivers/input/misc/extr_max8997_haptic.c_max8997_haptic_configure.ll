; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_haptic = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX8997_MOTOR_TYPE_SHIFT = common dso_local global i32 0, align 4
@MAX8997_ENABLE_SHIFT = common dso_local global i32 0, align 4
@MAX8997_MODE_SHIFT = common dso_local global i32 0, align 4
@MAX8997_HAPTIC_REG_CONF2 = common dso_local global i32 0, align 4
@MAX8997_INTERNAL_MODE = common dso_local global i32 0, align 4
@MAX8997_CYCLE_SHIFT = common dso_local global i32 0, align 4
@MAX8997_SIG_PERIOD_SHIFT = common dso_local global i32 0, align 4
@MAX8997_SIG_DUTY_SHIFT = common dso_local global i32 0, align 4
@MAX8997_PWM_DUTY_SHIFT = common dso_local global i32 0, align 4
@MAX8997_HAPTIC_REG_DRVCONF = common dso_local global i32 0, align 4
@MAX8997_HAPTIC_REG_CYCLECONF1 = common dso_local global i32 0, align 4
@MAX8997_HAPTIC_REG_SIGCONF1 = common dso_local global i32 0, align 4
@MAX8997_HAPTIC_REG_SIGCONF2 = common dso_local global i32 0, align 4
@MAX8997_HAPTIC_REG_CYCLECONF2 = common dso_local global i32 0, align 4
@MAX8997_HAPTIC_REG_SIGCONF3 = common dso_local global i32 0, align 4
@MAX8997_HAPTIC_REG_SIGCONF4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max8997_haptic*)* @max8997_haptic_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8997_haptic_configure(%struct.max8997_haptic* %0) #0 {
  %2 = alloca %struct.max8997_haptic*, align 8
  %3 = alloca i32, align 4
  store %struct.max8997_haptic* %0, %struct.max8997_haptic** %2, align 8
  %4 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %5 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MAX8997_MOTOR_TYPE_SHIFT, align 4
  %8 = shl i32 %6, %7
  %9 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %10 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MAX8997_ENABLE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %8, %13
  %15 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %16 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAX8997_MODE_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %14, %19
  %21 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %22 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  store i32 %24, i32* %3, align 4
  %25 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %26 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAX8997_HAPTIC_REG_CONF2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @max8997_write_reg(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %32 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX8997_INTERNAL_MODE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %154

36:                                               ; preds = %1
  %37 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %38 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %154

41:                                               ; preds = %36
  %42 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %43 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAX8997_CYCLE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %48 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MAX8997_SIG_PERIOD_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %46, %51
  %53 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %54 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MAX8997_SIG_DUTY_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %52, %57
  %59 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %60 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MAX8997_PWM_DUTY_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %58, %63
  store i32 %64, i32* %3, align 4
  %65 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %66 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MAX8997_HAPTIC_REG_DRVCONF, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @max8997_write_reg(i32 %67, i32 %68, i32 %69)
  %71 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %72 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %152 [
    i32 0, label %74
    i32 1, label %94
    i32 2, label %113
    i32 3, label %133
  ]

74:                                               ; preds = %41
  %75 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %76 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 4
  store i32 %78, i32* %3, align 4
  %79 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %80 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MAX8997_HAPTIC_REG_CYCLECONF1, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @max8997_write_reg(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %86 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %3, align 4
  %88 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %89 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MAX8997_HAPTIC_REG_SIGCONF1, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @max8997_write_reg(i32 %90, i32 %91, i32 %92)
  br label %153

94:                                               ; preds = %41
  %95 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %96 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %3, align 4
  %98 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %99 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MAX8997_HAPTIC_REG_CYCLECONF1, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @max8997_write_reg(i32 %100, i32 %101, i32 %102)
  %104 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %105 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %3, align 4
  %107 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %108 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MAX8997_HAPTIC_REG_SIGCONF2, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @max8997_write_reg(i32 %109, i32 %110, i32 %111)
  br label %153

113:                                              ; preds = %41
  %114 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %115 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 4
  store i32 %117, i32* %3, align 4
  %118 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %119 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MAX8997_HAPTIC_REG_CYCLECONF2, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @max8997_write_reg(i32 %120, i32 %121, i32 %122)
  %124 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %125 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %3, align 4
  %127 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %128 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @MAX8997_HAPTIC_REG_SIGCONF3, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @max8997_write_reg(i32 %129, i32 %130, i32 %131)
  br label %153

133:                                              ; preds = %41
  %134 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %135 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %3, align 4
  %137 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %138 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MAX8997_HAPTIC_REG_CYCLECONF2, align 4
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @max8997_write_reg(i32 %139, i32 %140, i32 %141)
  %143 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %144 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %3, align 4
  %146 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %147 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @MAX8997_HAPTIC_REG_SIGCONF4, align 4
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @max8997_write_reg(i32 %148, i32 %149, i32 %150)
  br label %153

152:                                              ; preds = %41
  br label %153

153:                                              ; preds = %152, %133, %113, %94, %74
  br label %154

154:                                              ; preds = %153, %36, %1
  ret void
}

declare dso_local i32 @max8997_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
