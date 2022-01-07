; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pasemi.c_pasemi_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pasemi.c_pasemi_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.pasemi_smbus* }
%struct.pasemi_smbus = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }

@I2C_M_RD = common dso_local global i32 0, align 4
@MTXFIFO_START = common dso_local global i32 0, align 4
@MTXFIFO_READ = common dso_local global i32 0, align 4
@MTXFIFO_STOP = common dso_local global i32 0, align 4
@MRXFIFO_EMPTY = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@MRXFIFO_DATA_M = common dso_local global i32 0, align 4
@REG_CTL = common dso_local global i32 0, align 4
@CTL_MTR = common dso_local global i32 0, align 4
@CTL_MRR = common dso_local global i32 0, align 4
@CLK_100K_DIV = common dso_local global i32 0, align 4
@CTL_CLK_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @pasemi_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_i2c_xfer_msg(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pasemi_smbus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 0
  %15 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %14, align 8
  store %struct.pasemi_smbus* %15, %struct.pasemi_smbus** %8, align 8
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @I2C_M_RD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %9, align 4
  %24 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %25 = load i32, i32* @MTXFIFO_START, align 4
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %27 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %26)
  %28 = or i32 %25, %27
  %29 = call i32 @TXFIFO_WR(%struct.pasemi_smbus* %24, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %84

32:                                               ; preds = %3
  %33 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MTXFIFO_READ, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @MTXFIFO_STOP, align 4
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = or i32 %38, %45
  %47 = call i32 @TXFIFO_WR(%struct.pasemi_smbus* %33, i32 %46)
  %48 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %49 = call i32 @pasemi_smb_waitready(%struct.pasemi_smbus* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %127

53:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %80, %53
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %54
  %61 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %62 = call i32 @RXFIFO_RD(%struct.pasemi_smbus* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @MRXFIFO_EMPTY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @ENODATA, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %11, align 4
  br label %127

70:                                               ; preds = %60
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @MRXFIFO_DATA_M, align 4
  %73 = and i32 %71, %72
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %54

83:                                               ; preds = %54
  br label %126

84:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %102, %84
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %94 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @TXFIFO_WR(%struct.pasemi_smbus* %93, i32 %100)
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %85

105:                                              ; preds = %85
  %106 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %105
  %120 = load i32, i32* @MTXFIFO_STOP, align 4
  br label %122

121:                                              ; preds = %105
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i32 [ %120, %119 ], [ 0, %121 ]
  %124 = or i32 %116, %123
  %125 = call i32 @TXFIFO_WR(%struct.pasemi_smbus* %106, i32 %124)
  br label %126

126:                                              ; preds = %122, %83
  store i32 0, i32* %4, align 4
  br label %139

127:                                              ; preds = %67, %52
  %128 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %129 = load i32, i32* @REG_CTL, align 4
  %130 = load i32, i32* @CTL_MTR, align 4
  %131 = load i32, i32* @CTL_MRR, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @CLK_100K_DIV, align 4
  %134 = load i32, i32* @CTL_CLK_M, align 4
  %135 = and i32 %133, %134
  %136 = or i32 %132, %135
  %137 = call i32 @reg_write(%struct.pasemi_smbus* %128, i32 %129, i32 %136)
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %127, %126
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @TXFIFO_WR(%struct.pasemi_smbus*, i32) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @pasemi_smb_waitready(%struct.pasemi_smbus*) #1

declare dso_local i32 @RXFIFO_RD(%struct.pasemi_smbus*) #1

declare dso_local i32 @reg_write(%struct.pasemi_smbus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
