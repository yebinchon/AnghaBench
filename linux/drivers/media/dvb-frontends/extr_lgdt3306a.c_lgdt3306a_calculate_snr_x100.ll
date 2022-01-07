; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_calculate_snr_x100.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_calculate_snr_x100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"mse=%u, pwr=%u, snr_x100=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*)* @lgdt3306a_calculate_snr_x100 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_calculate_snr_x100(%struct.lgdt3306a_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lgdt3306a_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %3, align 8
  %7 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %8 = call i32 @read_reg(%struct.lgdt3306a_state* %7, i32 236)
  %9 = shl i32 %8, 8
  %10 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %11 = call i32 @read_reg(%struct.lgdt3306a_state* %10, i32 237)
  %12 = or i32 %9, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %14 = call i32 @read_reg(%struct.lgdt3306a_state* %13, i32 232)
  %15 = shl i32 %14, 8
  %16 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %17 = call i32 @read_reg(%struct.lgdt3306a_state* %16, i32 233)
  %18 = or i32 %15, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %23, 10000
  %25 = load i32, i32* %4, align 4
  %26 = sdiv i32 %24, %25
  %27 = call i32 @log10_x1000(i32 %26)
  %28 = sub nsw i32 %27, 3000
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dbg_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %22, %21
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @read_reg(%struct.lgdt3306a_state*, i32) #1

declare dso_local i32 @log10_x1000(i32) #1

declare dso_local i32 @dbg_info(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
