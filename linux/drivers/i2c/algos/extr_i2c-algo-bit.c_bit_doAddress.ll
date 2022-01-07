; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-bit.c_bit_doAddress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-bit.c_bit_doAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32, %struct.i2c_algo_bit_data* }
%struct.i2c_algo_bit_data = type { i32 }
%struct.i2c_msg = type { i16, i32 }

@I2C_M_IGNORE_NAK = common dso_local global i16 0, align 2
@I2C_M_TEN = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [11 x i8] c"addr0: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"died at extended address code\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"died at 2nd address code\0A\00", align 1
@I2C_M_RD = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [35 x i8] c"emitting repeated start condition\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"died at repeated address code\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@I2C_M_REV_DIR_ADDR = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*)* @bit_doAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bit_doAddress(%struct.i2c_adapter* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.i2c_algo_bit_data*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 4
  store i16 %14, i16* %6, align 2
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 4
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* @I2C_M_IGNORE_NAK, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %18, %20
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %7, align 2
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %23, i32 0, i32 2
  %25 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %24, align 8
  store %struct.i2c_algo_bit_data* %25, %struct.i2c_algo_bit_data** %8, align 8
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %34

30:                                               ; preds = %2
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  br label %34

34:                                               ; preds = %30, %29
  %35 = phi i32 [ 0, %29 ], [ %33, %30 ]
  store i32 %35, i32* %11, align 4
  %36 = load i16, i16* %6, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @I2C_M_TEN, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %122

42:                                               ; preds = %34
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 7
  %47 = and i32 %46, 6
  %48 = or i32 240, %47
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %9, align 1
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %50, i32 0, i32 1
  %52 = load i8, i8* %9, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (i32, i32*, i8*, ...) @bit_dbg(i32 2, i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %56 = load i8, i8* %9, align 1
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @try_address(%struct.i2c_adapter* %55, i8 zeroext %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %70

61:                                               ; preds = %42
  %62 = load i16, i16* %7, align 2
  %63 = icmp ne i16 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %65, i32 0, i32 1
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @ENXIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %151

70:                                               ; preds = %61, %42
  %71 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 255
  %76 = call i32 @i2c_outb(%struct.i2c_adapter* %71, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  %80 = load i16, i16* %7, align 2
  %81 = icmp ne i16 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %83, i32 0, i32 1
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @ENXIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %151

88:                                               ; preds = %79, %70
  %89 = load i16, i16* %6, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* @I2C_M_RD, align 2
  %92 = zext i16 %91 to i32
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %88
  %96 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %96, i32 0, i32 1
  %98 = call i32 (i32, i32*, i8*, ...) @bit_dbg(i32 3, i32* %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %8, align 8
  %100 = call i32 @i2c_repstart(%struct.i2c_algo_bit_data* %99)
  %101 = load i8, i8* %9, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %102, 1
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %9, align 1
  %105 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %106 = load i8, i8* %9, align 1
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @try_address(%struct.i2c_adapter* %105, i8 zeroext %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %120

111:                                              ; preds = %95
  %112 = load i16, i16* %7, align 2
  %113 = icmp ne i16 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %115, i32 0, i32 1
  %117 = call i32 @dev_err(i32* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %151

120:                                              ; preds = %111, %95
  br label %121

121:                                              ; preds = %120, %88
  br label %150

122:                                              ; preds = %34
  %123 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %124 = call zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %123)
  store i8 %124, i8* %9, align 1
  %125 = load i16, i16* %6, align 2
  %126 = zext i16 %125 to i32
  %127 = load i16, i16* @I2C_M_REV_DIR_ADDR, align 2
  %128 = zext i16 %127 to i32
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load i8, i8* %9, align 1
  %133 = zext i8 %132 to i32
  %134 = xor i32 %133, 1
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %9, align 1
  br label %136

136:                                              ; preds = %131, %122
  %137 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %138 = load i8, i8* %9, align 1
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @try_address(%struct.i2c_adapter* %137, i8 zeroext %138, i32 %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 1
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load i16, i16* %7, align 2
  %145 = icmp ne i16 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* @ENXIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %151

149:                                              ; preds = %143, %136
  br label %150

150:                                              ; preds = %149, %121
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %146, %114, %82, %64
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @bit_dbg(i32, i32*, i8*, ...) #1

declare dso_local i32 @try_address(%struct.i2c_adapter*, i8 zeroext, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_outb(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_repstart(%struct.i2c_algo_bit_data*) #1

declare dso_local zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
