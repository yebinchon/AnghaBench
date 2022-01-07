; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_fips.c_cc_set_ree_fips_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_fips.c_cc_set_ree_fips_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i64 }

@CC_FIPS_SYNC_REE_STATUS = common dso_local global i32 0, align 4
@CC_HW_REV_712 = common dso_local global i64 0, align 8
@CC_FIPS_SYNC_MODULE_OK = common dso_local global i32 0, align 4
@CC_FIPS_SYNC_MODULE_ERROR = common dso_local global i32 0, align 4
@HOST_GPR0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_set_ree_fips_status(%struct.cc_drvdata* %0, i32 %1) #0 {
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @CC_FIPS_SYNC_REE_STATUS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %8 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CC_HW_REV_712, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %29

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @CC_FIPS_SYNC_MODULE_OK, align 4
  br label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @CC_FIPS_SYNC_MODULE_ERROR, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %25 = load i32, i32* @HOST_GPR0, align 4
  %26 = call i32 @CC_REG(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @cc_iowrite(%struct.cc_drvdata* %24, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %12
  ret void
}

declare dso_local i32 @cc_iowrite(%struct.cc_drvdata*, i32, i32) #1

declare dso_local i32 @CC_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
