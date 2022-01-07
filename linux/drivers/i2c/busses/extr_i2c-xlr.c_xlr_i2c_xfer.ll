; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }
%struct.xlr_i2c_private = type { %struct.i2c_msg*, i32, i32, i64 }

@XLR_I2C_INT_EN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @xlr_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xlr_i2c_private*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.xlr_i2c_private* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.xlr_i2c_private* %13, %struct.xlr_i2c_private** %11, align 8
  %14 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %11, align 8
  %15 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_enable(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %113

22:                                               ; preds = %3
  %23 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %11, align 8
  %24 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %11, align 8
  %29 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XLR_I2C_INT_EN, align 4
  %32 = call i32 @xlr_i2c_wreg(i32 %30, i32 %31, i32 15)
  br label %33

33:                                               ; preds = %27, %22
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %84, %33
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %43, label %87

43:                                               ; preds = %41
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i64 %46
  store %struct.i2c_msg* %47, %struct.i2c_msg** %8, align 8
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %49 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %11, align 8
  %50 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %49, i32 0, i32 0
  store %struct.i2c_msg* %48, %struct.i2c_msg** %50, align 8
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @I2C_M_RD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %43
  %58 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %11, align 8
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @xlr_i2c_rx(%struct.xlr_i2c_private* %58, i32 %61, i32* %65, i32 %68)
  store i32 %69, i32* %10, align 4
  br label %83

70:                                               ; preds = %43
  %71 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %11, align 8
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @xlr_i2c_tx(%struct.xlr_i2c_private* %71, i32 %74, i32* %78, i32 %81)
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %70, %57
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %34

87:                                               ; preds = %41
  %88 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %11, align 8
  %89 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %11, align 8
  %94 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @XLR_I2C_INT_EN, align 4
  %97 = call i32 @xlr_i2c_wreg(i32 %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %11, align 8
  %100 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @clk_disable(i32 %101)
  %103 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %11, align 8
  %104 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %103, i32 0, i32 0
  store %struct.i2c_msg* null, %struct.i2c_msg** %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %10, align 4
  br label %111

109:                                              ; preds = %98
  %110 = load i32, i32* %7, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %20
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.xlr_i2c_private* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @xlr_i2c_wreg(i32, i32, i32) #1

declare dso_local i32 @xlr_i2c_rx(%struct.xlr_i2c_private*, i32, i32*, i32) #1

declare dso_local i32 @xlr_i2c_tx(%struct.xlr_i2c_private*, i32, i32*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
