; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_fips.c_fips_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_fips.c_fips_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i64, %struct.cc_fips_handle* }
%struct.cc_fips_handle = type { i32 }

@CC_HW_REV_712 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fips_handler(%struct.cc_drvdata* %0) #0 {
  %2 = alloca %struct.cc_drvdata*, align 8
  %3 = alloca %struct.cc_fips_handle*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %2, align 8
  %4 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %5 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %4, i32 0, i32 1
  %6 = load %struct.cc_fips_handle*, %struct.cc_fips_handle** %5, align 8
  store %struct.cc_fips_handle* %6, %struct.cc_fips_handle** %3, align 8
  %7 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %8 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CC_HW_REV_712, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.cc_fips_handle*, %struct.cc_fips_handle** %3, align 8
  %15 = getelementptr inbounds %struct.cc_fips_handle, %struct.cc_fips_handle* %14, i32 0, i32 0
  %16 = call i32 @tasklet_schedule(i32* %15)
  br label %17

17:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
