; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_reg2temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_reg2temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7475_data = type { i32 }

@CONFIG5_TWOSCOMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adt7475_data*, i32)* @reg2temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg2temp(%struct.adt7475_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adt7475_data*, align 8
  %5 = alloca i32, align 4
  store %struct.adt7475_data* %0, %struct.adt7475_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %7 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CONFIG5_TWOSCOMP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 512
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1024
  %18 = mul nsw i32 %17, 250
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 250
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %23, 256
  %25 = mul nsw i32 %24, 250
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %19, %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
