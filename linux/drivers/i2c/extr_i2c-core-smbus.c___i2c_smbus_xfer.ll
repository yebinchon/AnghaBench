; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c___i2c_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c___i2c_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { {}*, {}*, i32, i64 }
%union.i2c_smbus_data = type { i32 }

@I2C_M_TEN = common dso_local global i16 0, align 2
@I2C_CLIENT_PEC = common dso_local global i16 0, align 2
@I2C_CLIENT_SCCB = common dso_local global i16 0, align 2
@jiffies = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__i2c_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %21 = call i32 @__i2c_check_suspended(%struct.i2c_adapter* %20)
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %19, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* %19, align 4
  store i32 %25, i32* %8, align 4
  br label %169

26:                                               ; preds = %7
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i16, i16* %11, align 2
  %30 = load i8, i8* %12, align 1
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %34 = call i32 @trace_smbus_write(%struct.i2c_adapter* %27, i32 %28, i16 zeroext %29, i8 signext %30, i32 %31, i32 %32, %union.i2c_smbus_data* %33)
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i16, i16* %11, align 2
  %38 = load i8, i8* %12, align 1
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @trace_smbus_read(%struct.i2c_adapter* %35, i32 %36, i16 zeroext %37, i8 signext %38, i32 %39, i32 %40)
  %42 = load i16, i16* @I2C_M_TEN, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* @I2C_CLIENT_PEC, align 2
  %45 = zext i16 %44 to i32
  %46 = or i32 %43, %45
  %47 = load i16, i16* @I2C_CLIENT_SCCB, align 2
  %48 = zext i16 %47 to i32
  %49 = or i32 %46, %48
  %50 = load i16, i16* %11, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, %49
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %11, align 2
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %55 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = bitcast {}** %57 to i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)**
  %59 = load i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %58, align 8
  store i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* %59, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %16, align 8
  %60 = call i64 (...) @i2c_in_atomic_xfer_mode()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %26
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %64 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = bitcast {}** %66 to i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)**
  %68 = load i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %67, align 8
  %69 = icmp ne i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %72 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = bitcast {}** %74 to i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)**
  %76 = load i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %75, align 8
  store i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* %76, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %16, align 8
  br label %86

77:                                               ; preds = %62
  %78 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %79 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %16, align 8
  br label %85

85:                                               ; preds = %84, %77
  br label %86

86:                                               ; preds = %85, %70
  br label %87

87:                                               ; preds = %86, %26
  %88 = load i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %16, align 8
  %89 = icmp ne i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* %88, null
  br i1 %89, label %90, label %141

90:                                               ; preds = %87
  %91 = load i64, i64* @jiffies, align 8
  store i64 %91, i64* %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %92

92:                                               ; preds = %124, %90
  %93 = load i32, i32* %18, align 4
  %94 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %95 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sle i32 %93, %96
  br i1 %97, label %98, label %127

98:                                               ; preds = %92
  %99 = load i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %16, align 8
  %100 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i16, i16* %11, align 2
  %103 = load i8, i8* %12, align 1
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %107 = call i32 %99(%struct.i2c_adapter* %100, i32 %101, i16 zeroext %102, i8 signext %103, i32 %104, i32 %105, %union.i2c_smbus_data* %106)
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp ne i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %127

113:                                              ; preds = %98
  %114 = load i64, i64* @jiffies, align 8
  %115 = load i64, i64* %17, align 8
  %116 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %117 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %115, %118
  %120 = call i64 @time_after(i64 %114, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %127

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  br label %92

127:                                              ; preds = %122, %112, %92
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* @EOPNOTSUPP, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %139, label %132

132:                                              ; preds = %127
  %133 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %134 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %132, %127
  br label %150

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %87
  %142 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i16, i16* %11, align 2
  %145 = load i8, i8* %12, align 1
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %149 = call i32 @i2c_smbus_xfer_emulated(%struct.i2c_adapter* %142, i32 %143, i16 zeroext %144, i8 signext %145, i32 %146, i32 %147, %union.i2c_smbus_data* %148)
  store i32 %149, i32* %19, align 4
  br label %150

150:                                              ; preds = %141, %139
  %151 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load i16, i16* %11, align 2
  %154 = load i8, i8* %12, align 1
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %158 = load i32, i32* %19, align 4
  %159 = call i32 @trace_smbus_reply(%struct.i2c_adapter* %151, i32 %152, i16 zeroext %153, i8 signext %154, i32 %155, i32 %156, %union.i2c_smbus_data* %157, i32 %158)
  %160 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i16, i16* %11, align 2
  %163 = load i8, i8* %12, align 1
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %19, align 4
  %167 = call i32 @trace_smbus_result(%struct.i2c_adapter* %160, i32 %161, i16 zeroext %162, i8 signext %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %19, align 4
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %150, %24
  %170 = load i32, i32* %8, align 4
  ret i32 %170
}

declare dso_local i32 @__i2c_check_suspended(%struct.i2c_adapter*) #1

declare dso_local i32 @trace_smbus_write(%struct.i2c_adapter*, i32, i16 zeroext, i8 signext, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @trace_smbus_read(%struct.i2c_adapter*, i32, i16 zeroext, i8 signext, i32, i32) #1

declare dso_local i64 @i2c_in_atomic_xfer_mode(...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_xfer_emulated(%struct.i2c_adapter*, i32, i16 zeroext, i8 signext, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @trace_smbus_reply(%struct.i2c_adapter*, i32, i16 zeroext, i8 signext, i32, i32, %union.i2c_smbus_data*, i32) #1

declare dso_local i32 @trace_smbus_result(%struct.i2c_adapter*, i32, i16 zeroext, i8 signext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
