; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_fips.c_fips_dsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_fips.c_fips_dsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i32 }

@CC_GPR0_IRQ_MASK = common dso_local global i32 0, align 4
@HOST_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @fips_dsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fips_dsr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.cc_drvdata*
  store %struct.cc_drvdata* %7, %struct.cc_drvdata** %3, align 8
  %8 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %9 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CC_GPR0_IRQ_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %17 = call i32 @cc_tee_handle_fips_error(%struct.cc_drvdata* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* @HOST_IMR, align 4
  %20 = call i32 @CC_REG(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %25 = load i32, i32* @HOST_IMR, align 4
  %26 = call i32 @CC_REG(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @cc_iowrite(%struct.cc_drvdata* %24, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @cc_tee_handle_fips_error(%struct.cc_drvdata*) #1

declare dso_local i32 @CC_REG(i32) #1

declare dso_local i32 @cc_iowrite(%struct.cc_drvdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
