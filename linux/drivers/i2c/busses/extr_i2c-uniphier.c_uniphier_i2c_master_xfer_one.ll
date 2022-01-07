; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier.c_uniphier_i2c_master_xfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier.c_uniphier_i2c_master_xfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @uniphier_i2c_master_xfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_i2c_master_xfer_one(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_M_RD, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @uniphier_i2c_rx(%struct.i2c_adapter* %20, i32 %23, i32 %26, i32 %29)
  store i32 %30, i32* %10, align 4
  br label %43

31:                                               ; preds = %3
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @uniphier_i2c_tx(%struct.i2c_adapter* %32, i32 %35, i32 %38, i32 %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %31, %19
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %81

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %61 = call i32 @uniphier_i2c_stop(%struct.i2c_adapter* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ %65, %67 ], [ %69, %68 ]
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %59
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %78 = call i32 @i2c_recover_bus(%struct.i2c_adapter* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %48
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @uniphier_i2c_rx(%struct.i2c_adapter*, i32, i32, i32) #1

declare dso_local i32 @uniphier_i2c_tx(%struct.i2c_adapter*, i32, i32, i32) #1

declare dso_local i32 @uniphier_i2c_stop(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_recover_bus(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
