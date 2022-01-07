; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-mux.c_i2c_mux_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-mux.c_i2c_mux_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_mux_priv* }
%struct.i2c_mux_priv = type { i32, %struct.i2c_mux_core* }
%struct.i2c_mux_core = type { i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)*, %struct.i2c_adapter* }
%struct.i2c_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_mux_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_mux_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_mux_priv*, align 8
  %8 = alloca %struct.i2c_mux_core*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 0
  %13 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %12, align 8
  store %struct.i2c_mux_priv* %13, %struct.i2c_mux_priv** %7, align 8
  %14 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %7, align 8
  %15 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %14, i32 0, i32 1
  %16 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %15, align 8
  store %struct.i2c_mux_core* %16, %struct.i2c_mux_core** %8, align 8
  %17 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %8, align 8
  %18 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %17, i32 0, i32 2
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %9, align 8
  %20 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %8, align 8
  %21 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %20, i32 0, i32 0
  %22 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %21, align 8
  %23 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %8, align 8
  %24 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %7, align 8
  %25 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %22(%struct.i2c_mux_core* %23, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @i2c_transfer(%struct.i2c_adapter* %31, %struct.i2c_msg* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %30, %3
  %36 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %8, align 8
  %37 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %36, i32 0, i32 1
  %38 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.i2c_mux_core*, i32)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %8, align 8
  %42 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %41, i32 0, i32 1
  %43 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %42, align 8
  %44 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %8, align 8
  %45 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %7, align 8
  %46 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %43(%struct.i2c_mux_core* %44, i32 %47)
  br label %49

49:                                               ; preds = %40, %35
  %50 = load i32, i32* %10, align 4
  ret i32 %50
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
