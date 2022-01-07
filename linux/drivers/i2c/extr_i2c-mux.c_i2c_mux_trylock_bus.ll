; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-mux.c_i2c_mux_trylock_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-mux.c_i2c_mux_trylock_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.i2c_mux_priv* }
%struct.i2c_mux_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_adapter* }

@I2C_LOCK_ROOT_ADAPTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32)* @i2c_mux_trylock_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_mux_trylock_bus(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_mux_priv*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 1
  %10 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %9, align 8
  store %struct.i2c_mux_priv* %10, %struct.i2c_mux_priv** %6, align 8
  %11 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %6, align 8
  %12 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %7, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = call i32 @rt_mutex_trylock(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @I2C_LOCK_ROOT_ADAPTER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %37

27:                                               ; preds = %21
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @i2c_trylock_bus(%struct.i2c_adapter* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %37

33:                                               ; preds = %27
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 0
  %36 = call i32 @rt_mutex_unlock(i32* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %32, %26, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @rt_mutex_trylock(i32*) #1

declare dso_local i64 @i2c_trylock_bus(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @rt_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
