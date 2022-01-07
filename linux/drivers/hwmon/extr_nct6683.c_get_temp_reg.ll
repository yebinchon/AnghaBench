; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_get_temp_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_get_temp_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6683_data = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nct6683_data*, i32, i32)* @get_temp_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_temp_reg(%struct.nct6683_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nct6683_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nct6683_data* %0, %struct.nct6683_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nct6683_data*, %struct.nct6683_data** %4, align 8
  %10 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.nct6683_data*, %struct.nct6683_data** %4, align 8
  %19 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %32 [
    i32 129, label %21
    i32 128, label %31
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %23 [
    i32 1, label %24
    i32 3, label %27
  ]

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %21, %23
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @NCT6683_REG_INTEL_TEMP_MAX(i32 %25)
  store i32 %26, i32* %8, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @NCT6683_REG_INTEL_TEMP_CRIT(i32 %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %24
  br label %48

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %3, %31
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %34 [
    i32 0, label %35
    i32 1, label %38
    i32 2, label %41
    i32 3, label %44
  ]

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %32, %34
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @NCT6683_REG_MON_LOW(i32 %36)
  store i32 %37, i32* %8, align 4
  br label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @NCT6683_REG_TEMP_MAX(i32 %39)
  store i32 %40, i32* %8, align 4
  br label %47

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @NCT6683_REG_TEMP_HYST(i32 %42)
  store i32 %43, i32* %8, align 4
  br label %47

44:                                               ; preds = %32
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @NCT6683_REG_MON_HIGH(i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %41, %38, %35
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @NCT6683_REG_INTEL_TEMP_MAX(i32) #1

declare dso_local i32 @NCT6683_REG_INTEL_TEMP_CRIT(i32) #1

declare dso_local i32 @NCT6683_REG_MON_LOW(i32) #1

declare dso_local i32 @NCT6683_REG_TEMP_MAX(i32) #1

declare dso_local i32 @NCT6683_REG_TEMP_HYST(i32) #1

declare dso_local i32 @NCT6683_REG_MON_HIGH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
