; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_fips.c_cc_fips_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_fips.c_cc_fips_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i64, %struct.cc_fips_handle* }
%struct.cc_fips_handle = type { i32, i32 }

@CC_HW_REV_712 = common dso_local global i64 0, align 8
@fips_fail_notif_chain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_fips_fini(%struct.cc_drvdata* %0) #0 {
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
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.cc_fips_handle*, %struct.cc_fips_handle** %3, align 8
  %14 = icmp ne %struct.cc_fips_handle* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  br label %25

16:                                               ; preds = %12
  %17 = load %struct.cc_fips_handle*, %struct.cc_fips_handle** %3, align 8
  %18 = getelementptr inbounds %struct.cc_fips_handle, %struct.cc_fips_handle* %17, i32 0, i32 1
  %19 = call i32 @atomic_notifier_chain_unregister(i32* @fips_fail_notif_chain, i32* %18)
  %20 = load %struct.cc_fips_handle*, %struct.cc_fips_handle** %3, align 8
  %21 = getelementptr inbounds %struct.cc_fips_handle, %struct.cc_fips_handle* %20, i32 0, i32 0
  %22 = call i32 @tasklet_kill(i32* %21)
  %23 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %24 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %23, i32 0, i32 1
  store %struct.cc_fips_handle* null, %struct.cc_fips_handle** %24, align 8
  br label %25

25:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @atomic_notifier_chain_unregister(i32*, i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
