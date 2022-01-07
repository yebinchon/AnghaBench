; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca954x.c_idle_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca954x.c_idle_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_mux_core = type { i32 }
%struct.pca954x = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MUX_IDLE_AS_IS = common dso_local global i32 0, align 4
@MUX_IDLE_DISCONNECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I2C_LOCK_SEGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @idle_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idle_state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.i2c_mux_core*, align 8
  %12 = alloca %struct.pca954x*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.i2c_client* @to_i2c_client(%struct.device* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %18 = call %struct.i2c_mux_core* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.i2c_mux_core* %18, %struct.i2c_mux_core** %11, align 8
  %19 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %11, align 8
  %20 = call %struct.pca954x* @i2c_mux_priv(%struct.i2c_mux_core* %19)
  store %struct.pca954x* %20, %struct.pca954x** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoint(i8* %21, i32 0, i32* %13)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %87

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @MUX_IDLE_AS_IS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @MUX_IDLE_DISCONNECT, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %41 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %39, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38, %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %87

49:                                               ; preds = %38, %31, %27
  %50 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %11, align 8
  %51 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %54 = call i32 @i2c_lock_bus(i32 %52, i32 %53)
  %55 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %56 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @WRITE_ONCE(i32 %57, i32 %58)
  %60 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %61 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @MUX_IDLE_DISCONNECT, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %49
  %69 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %11, align 8
  %70 = call i32 @pca954x_deselect_mux(%struct.i2c_mux_core* %69, i32 0)
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %11, align 8
  %73 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %76 = call i32 @i2c_unlock_bus(i32 %74, i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  br label %84

82:                                               ; preds = %71
  %83 = load i64, i64* %9, align 8
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i64 [ %81, %79 ], [ %83, %82 ]
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %46, %25
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.i2c_mux_core* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.pca954x* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @i2c_lock_bus(i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @pca954x_deselect_mux(%struct.i2c_mux_core*, i32) #1

declare dso_local i32 @i2c_unlock_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
