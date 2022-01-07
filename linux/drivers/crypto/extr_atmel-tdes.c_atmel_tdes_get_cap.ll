; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_get_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_get_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_tdes_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Unmanaged tdes version, set minimum capabilities\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_tdes_dev*)* @atmel_tdes_get_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_tdes_get_cap(%struct.atmel_tdes_dev* %0) #0 {
  %2 = alloca %struct.atmel_tdes_dev*, align 8
  store %struct.atmel_tdes_dev* %0, %struct.atmel_tdes_dev** %2, align 8
  %3 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %4 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %7 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %10 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 3840
  switch i32 %12, label %21 [
    i32 1792, label %13
    i32 1536, label %20
  ]

13:                                               ; preds = %1
  %14 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %15 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %18 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  br label %26

20:                                               ; preds = %1
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %23 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_warn(i32 %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %20, %13
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
