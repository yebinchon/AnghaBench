; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3x_i2c = type { i32, i32, i64, i64, i32, %struct.i2c_msg*, i8*, i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Combined write/read from addr 0x%x\0A\00", align 1
@REG_CON_MOD_REGISTER_TX = common dso_local global i8* null, align 8
@REG_MRXADDR = common dso_local global i32 0, align 4
@REG_MRXRADDR = common dso_local global i32 0, align 4
@REG_CON_MOD_TX = common dso_local global i8* null, align 8
@STATE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk3x_i2c*, %struct.i2c_msg*, i32)* @rk3x_i2c_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3x_i2c_setup(%struct.rk3x_i2c* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.rk3x_i2c*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rk3x_i2c* %0, %struct.rk3x_i2c** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i64 0
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 127
  %16 = shl i32 %15, 1
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 2
  br i1 %18, label %19, label %94

19:                                               ; preds = %3
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i64 0
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %94

25:                                               ; preds = %19
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 0
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @I2C_M_RD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %94, label %33

33:                                               ; preds = %25
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i64 1
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @I2C_M_RD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %94

41:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  %42 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %43 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 1
  %47 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %73, %41
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i64 0
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %48
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i64 0
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %64, 8
  %66 = shl i32 %63, %65
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @REG_MRXADDR_VALID(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %55
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %48

76:                                               ; preds = %48
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i64 1
  %79 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %80 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %79, i32 0, i32 5
  store %struct.i2c_msg* %78, %struct.i2c_msg** %80, align 8
  %81 = load i8*, i8** @REG_CON_MOD_REGISTER_TX, align 8
  %82 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %83 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  %84 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @REG_MRXADDR_VALID(i32 0)
  %87 = or i32 %85, %86
  %88 = load i32, i32* @REG_MRXADDR, align 4
  %89 = call i32 @i2c_writel(%struct.rk3x_i2c* %84, i32 %87, i32 %88)
  %90 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @REG_MRXRADDR, align 4
  %93 = call i32 @i2c_writel(%struct.rk3x_i2c* %90, i32 %91, i32 %92)
  store i32 2, i32* %8, align 4
  br label %126

94:                                               ; preds = %33, %25, %19, %3
  %95 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %95, i64 0
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @I2C_M_RD, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %94
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = load i8*, i8** @REG_CON_MOD_REGISTER_TX, align 8
  %106 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %107 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @REG_MRXADDR_VALID(i32 0)
  %111 = or i32 %109, %110
  %112 = load i32, i32* @REG_MRXADDR, align 4
  %113 = call i32 @i2c_writel(%struct.rk3x_i2c* %108, i32 %111, i32 %112)
  %114 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %115 = load i32, i32* @REG_MRXRADDR, align 4
  %116 = call i32 @i2c_writel(%struct.rk3x_i2c* %114, i32 0, i32 %115)
  br label %121

117:                                              ; preds = %94
  %118 = load i8*, i8** @REG_CON_MOD_TX, align 8
  %119 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %120 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %102
  %122 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %123 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %122, i64 0
  %124 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %125 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %124, i32 0, i32 5
  store %struct.i2c_msg* %123, %struct.i2c_msg** %125, align 8
  store i32 1, i32* %8, align 4
  br label %126

126:                                              ; preds = %121, %76
  %127 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %128 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %127, i64 0
  %129 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %132 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %134 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = load i32, i32* @STATE_START, align 4
  %136 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %137 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %139 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %138, i32 0, i32 3
  store i64 0, i64* %139, align 8
  %140 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %141 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %140, i32 0, i32 2
  store i64 0, i64* %141, align 8
  %142 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %4, align 8
  %143 = call i32 @rk3x_i2c_clean_ipd(%struct.rk3x_i2c* %142)
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @REG_MRXADDR_VALID(i32) #1

declare dso_local i32 @i2c_writel(%struct.rk3x_i2c*, i32, i32) #1

declare dso_local i32 @rk3x_i2c_clean_ipd(%struct.rk3x_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
