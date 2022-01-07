; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i64, i64, i32, i64, i8**, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i64, i8** }

@I2C_M_RD = common dso_local global i32 0, align 4
@STATUS_READ_IN_PROGRESS = common dso_local global i32 0, align 4
@DW_IC_RXFLR = common dso_local global i32 0, align 4
@DW_IC_DATA_CMD = common dso_local global i32 0, align 4
@I2C_M_RECV_LEN = common dso_local global i64 0, align 8
@I2C_SMBUS_BLOCK_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2c_dev*)* @i2c_dw_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_dw_read(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca %struct.dw_i2c_dev*, align 8
  %3 = alloca %struct.i2c_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %2, align 8
  %8 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %9 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %8, i32 0, i32 6
  %10 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  store %struct.i2c_msg* %10, %struct.i2c_msg** %3, align 8
  br label %11

11:                                               ; preds = %139, %1
  %12 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %13 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %16 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %144

19:                                               ; preds = %11
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %21 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %22 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i64 %23
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @I2C_M_RD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %139

31:                                               ; preds = %19
  %32 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %33 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @STATUS_READ_IN_PROGRESS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %31
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %40 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %41 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i64 %42
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %5, align 8
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %47 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %48 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i64 %49
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  store i8** %52, i8*** %6, align 8
  br label %60

53:                                               ; preds = %31
  %54 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %55 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %5, align 8
  %57 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %58 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %57, i32 0, i32 4
  %59 = load i8**, i8*** %58, align 8
  store i8** %59, i8*** %6, align 8
  br label %60

60:                                               ; preds = %53, %38
  %61 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %62 = load i32, i32* @DW_IC_RXFLR, align 4
  %63 = call i8* @dw_readl(%struct.dw_i2c_dev* %61, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %111, %60
  %66 = load i64, i64* %5, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = icmp sgt i32 %69, 0
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ false, %65 ], [ %70, %68 ]
  br i1 %72, label %73, label %116

73:                                               ; preds = %71
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %75 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %76 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i64 %77
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %7, align 8
  %82 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %83 = load i32, i32* @DW_IC_DATA_CMD, align 4
  %84 = call i8* @dw_readl(%struct.dw_i2c_dev* %82, i32 %83)
  %85 = load i8**, i8*** %6, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @I2C_M_RECV_LEN, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %73
  %91 = load i8**, i8*** %6, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** @I2C_SMBUS_BLOCK_MAX, align 8
  %94 = icmp ule i8* %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i8**, i8*** %6, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ugt i8* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %101 = load i8**, i8*** %6, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @i2c_dw_recv_len(%struct.dw_i2c_dev* %100, i8* %102)
  store i64 %103, i64* %5, align 8
  br label %104

104:                                              ; preds = %99, %95, %90, %73
  %105 = load i8**, i8*** %6, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i32 1
  store i8** %106, i8*** %6, align 8
  %107 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %108 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %104
  %112 = load i64, i64* %5, align 8
  %113 = add nsw i64 %112, -1
  store i64 %113, i64* %5, align 8
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %4, align 4
  br label %65

116:                                              ; preds = %71
  %117 = load i64, i64* %5, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load i32, i32* @STATUS_READ_IN_PROGRESS, align 4
  %121 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %122 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i64, i64* %5, align 8
  %126 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %127 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load i8**, i8*** %6, align 8
  %129 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %130 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %129, i32 0, i32 4
  store i8** %128, i8*** %130, align 8
  br label %144

131:                                              ; preds = %116
  %132 = load i32, i32* @STATUS_READ_IN_PROGRESS, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %135 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138, %30
  %140 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %141 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %141, align 8
  br label %11

144:                                              ; preds = %119, %11
  ret void
}

declare dso_local i8* @dw_readl(%struct.dw_i2c_dev*, i32) #1

declare dso_local i64 @i2c_dw_recv_len(%struct.dw_i2c_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
