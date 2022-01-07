; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-pcf.c_i2c_pcf_add_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-pcf.c_i2c_pcf_add_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32*, i32, %struct.i2c_algo_pcf_data* }
%struct.i2c_algo_pcf_data = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"hw routines registered.\0A\00", align 1
@pcf_algo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_pcf_add_bus(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.i2c_algo_pcf_data*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %6, i32 0, i32 2
  %8 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %7, align 8
  store %struct.i2c_algo_pcf_data* %8, %struct.i2c_algo_pcf_data** %4, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 1
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @DEB2(i32 %11)
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 0
  store i32* @pcf_algo, i32** %14, align 8
  %15 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %4, align 8
  %16 = call i32 @pcf_init_8584(%struct.i2c_algo_pcf_data* %15)
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %22 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @DEB2(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pcf_init_8584(%struct.i2c_algo_pcf_data*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
