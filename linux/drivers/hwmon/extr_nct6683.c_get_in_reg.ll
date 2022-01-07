; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_get_in_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_get_in_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6683_data = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NCT6683_CUSTOMER_ID_INTEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nct6683_data*, i32, i32)* @get_in_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_in_reg(%struct.nct6683_data* %0, i32 %1, i32 %2) #0 {
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
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %42 [
    i32 0, label %19
    i32 1, label %22
    i32 2, label %32
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @NCT6683_REG_MON(i32 %20)
  store i32 %21, i32* %8, align 4
  br label %43

22:                                               ; preds = %3
  %23 = load %struct.nct6683_data*, %struct.nct6683_data** %4, align 8
  %24 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NCT6683_CUSTOMER_ID_INTEL, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @NCT6683_REG_MON_LOW(i32 %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %22
  br label %43

32:                                               ; preds = %3
  %33 = load %struct.nct6683_data*, %struct.nct6683_data** %4, align 8
  %34 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NCT6683_CUSTOMER_ID_INTEL, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @NCT6683_REG_MON_HIGH(i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %32
  br label %43

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %42, %41, %31, %19
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @NCT6683_REG_MON(i32) #1

declare dso_local i32 @NCT6683_REG_MON_LOW(i32) #1

declare dso_local i32 @NCT6683_REG_MON_HIGH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
