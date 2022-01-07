; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-mux.c_i2c_mux_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-mux.c_i2c_mux_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32, i32, i32, i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)*, i32, %struct.device*, %struct.i2c_adapter*, i32*, i32* }
%struct.i2c_adapter = type { i32 }
%struct.device = type { i32 }

@adapter = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I2C_MUX_LOCKED = common dso_local global i32 0, align 4
@I2C_MUX_ARBITRATOR = common dso_local global i32 0, align 4
@I2C_MUX_GATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter* %0, %struct.device* %1, i32 %2, i32 %3, i32 %4, i32 (%struct.i2c_mux_core*, i32)* %5, i32 (%struct.i2c_mux_core*, i32)* %6) #0 {
  %8 = alloca %struct.i2c_mux_core*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32 (%struct.i2c_mux_core*, i32)*, align 8
  %15 = alloca i32 (%struct.i2c_mux_core*, i32)*, align 8
  %16 = alloca %struct.i2c_mux_core*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store %struct.device* %1, %struct.device** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 (%struct.i2c_mux_core*, i32)* %5, i32 (%struct.i2c_mux_core*, i32)** %14, align 8
  store i32 (%struct.i2c_mux_core*, i32)* %6, i32 (%struct.i2c_mux_core*, i32)** %15, align 8
  %17 = load %struct.device*, %struct.device** %10, align 8
  %18 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  %19 = load i32, i32* @adapter, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i64 @struct_size(%struct.i2c_mux_core* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.i2c_mux_core* @devm_kzalloc(%struct.device* %17, i64 %24, i32 %25)
  store %struct.i2c_mux_core* %26, %struct.i2c_mux_core** %16, align 8
  %27 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  %28 = icmp ne %struct.i2c_mux_core* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %7
  store %struct.i2c_mux_core* null, %struct.i2c_mux_core** %8, align 8
  br label %83

30:                                               ; preds = %7
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  %35 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %34, i32 0, i32 8
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  %41 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %40, i32 0, i32 9
  store i32* %39, i32** %41, align 8
  br label %42

42:                                               ; preds = %33, %30
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %44 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  %45 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %44, i32 0, i32 7
  store %struct.i2c_adapter* %43, %struct.i2c_adapter** %45, align 8
  %46 = load %struct.device*, %struct.device** %10, align 8
  %47 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  %48 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %47, i32 0, i32 6
  store %struct.device* %46, %struct.device** %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @I2C_MUX_LOCKED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  %55 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %42
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @I2C_MUX_ARBITRATOR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  %63 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @I2C_MUX_GATE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  %71 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %14, align 8
  %74 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  %75 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %74, i32 0, i32 3
  store i32 (%struct.i2c_mux_core*, i32)* %73, i32 (%struct.i2c_mux_core*, i32)** %75, align 8
  %76 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %15, align 8
  %77 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  %78 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %77, i32 0, i32 4
  store i32 (%struct.i2c_mux_core*, i32)* %76, i32 (%struct.i2c_mux_core*, i32)** %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  %81 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %16, align 8
  store %struct.i2c_mux_core* %82, %struct.i2c_mux_core** %8, align 8
  br label %83

83:                                               ; preds = %72, %29
  %84 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %8, align 8
  ret %struct.i2c_mux_core* %84
}

declare dso_local %struct.i2c_mux_core* @devm_kzalloc(%struct.device*, i64, i32) #1

declare dso_local i64 @struct_size(%struct.i2c_mux_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
