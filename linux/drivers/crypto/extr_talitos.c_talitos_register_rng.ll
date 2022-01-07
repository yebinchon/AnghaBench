; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_register_rng.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_register_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@talitos_rng_init = common dso_local global i32 0, align 4
@talitos_rng_data_present = common dso_local global i32 0, align 4
@talitos_rng_data_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @talitos_register_rng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talitos_register_rng(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.talitos_private*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %5)
  store %struct.talitos_private* %6, %struct.talitos_private** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call i32 @dev_driver_string(%struct.device* %7)
  %9 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %10 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @talitos_rng_init, align 4
  %13 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %14 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 8
  %16 = load i32, i32* @talitos_rng_data_present, align 4
  %17 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %18 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @talitos_rng_data_read, align 4
  %21 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %22 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.device*, %struct.device** %2, align 8
  %25 = ptrtoint %struct.device* %24 to i64
  %26 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %27 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %30 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %29, i32 0, i32 1
  %31 = call i32 @hwrng_register(%struct.TYPE_2__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load %struct.talitos_private*, %struct.talitos_private** %3, align 8
  %36 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %1
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_driver_string(%struct.device*) #1

declare dso_local i32 @hwrng_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
