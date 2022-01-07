; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }
%struct.pmac_i2c_bus = type { i32 }

@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@pmac_i2c_mode_std = common dso_local global i32 0, align 4
@pmac_i2c_mode_combined = common dso_local global i32 0, align 4
@pmac_i2c_mode_stdsub = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to open I2C, err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set I2C mode %d, err %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"I2C transfer at 0x%02x failed, size %d, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @i2c_powermac_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_powermac_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.pmac_i2c_bus*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca [2 x i32], align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %27 = call %struct.pmac_i2c_bus* @i2c_get_adapdata(%struct.i2c_adapter* %26)
  store %struct.pmac_i2c_bus* %27, %struct.pmac_i2c_bus** %16, align 8
  store i32 0, i32* %17, align 4
  %28 = load i8, i8* %12, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* @I2C_SMBUS_READ, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %10, align 4
  %35 = shl i32 %34, 1
  %36 = load i32, i32* %18, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 129
  br i1 %39, label %43, label %40

40:                                               ; preds = %7
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 132
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %7
  %44 = load i32, i32* @pmac_i2c_mode_std, align 4
  store i32 %44, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  br label %55

45:                                               ; preds = %40
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @pmac_i2c_mode_combined, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @pmac_i2c_mode_stdsub, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %23, align 4
  br label %55

55:                                               ; preds = %52, %43
  %56 = load i32, i32* %14, align 4
  switch i32 %56, label %98 [
    i32 129, label %57
    i32 132, label %58
    i32 131, label %58
    i32 128, label %61
    i32 133, label %78
    i32 130, label %88
  ]

57:                                               ; preds = %55
  store i32* null, i32** %24, align 8
  store i32 0, i32* %22, align 4
  br label %101

58:                                               ; preds = %55, %55
  %59 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %60 = bitcast %union.i2c_smbus_data* %59 to i32*
  store i32* %60, i32** %24, align 8
  store i32 1, i32* %22, align 4
  br label %101

61:                                               ; preds = %55
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %66 = bitcast %union.i2c_smbus_data* %65 to i32*
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 255
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32 %68, i32* %69, align 4
  %70 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %71 = bitcast %union.i2c_smbus_data* %70 to i32*
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 255
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %64, %61
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32* %77, i32** %24, align 8
  store i32 2, i32* %22, align 4
  br label %101

78:                                               ; preds = %55
  %79 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %80 = bitcast %union.i2c_smbus_data* %79 to i32**
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %24, align 8
  %82 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %83 = bitcast %union.i2c_smbus_data* %82 to i32**
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %22, align 4
  br label %101

88:                                               ; preds = %55
  %89 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %90 = bitcast %union.i2c_smbus_data* %89 to i32**
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32* %92, i32** %24, align 8
  %93 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %94 = bitcast %union.i2c_smbus_data* %93 to i32**
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %22, align 4
  br label %101

98:                                               ; preds = %55
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %179

101:                                              ; preds = %88, %78, %76, %58, %57
  %102 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %103 = call i32 @pmac_i2c_open(%struct.pmac_i2c_bus* %102, i32 0)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %108 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %107, i32 0, i32 0
  %109 = load i32, i32* %17, align 4
  %110 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %17, align 4
  store i32 %111, i32* %8, align 4
  br label %179

112:                                              ; preds = %101
  %113 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %114 = load i32, i32* %20, align 4
  %115 = call i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus* %113, i32 %114)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %120 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %119, i32 0, i32 0
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* %17, align 4
  %123 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %122)
  br label %175

124:                                              ; preds = %112
  %125 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* %23, align 4
  %129 = load i32*, i32** %24, align 8
  %130 = load i32, i32* %22, align 4
  %131 = call i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus* %125, i32 %126, i32 %127, i32 %128, i32* %129, i32 %130)
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %124
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @ENXIO, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %140, i32 0, i32 0
  %142 = load i32, i32* %19, align 4
  %143 = ashr i32 %142, 1
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @dev_dbg(i32* %141, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %144, i32 %145)
  br label %155

147:                                              ; preds = %134
  %148 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %149 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %148, i32 0, i32 0
  %150 = load i32, i32* %19, align 4
  %151 = ashr i32 %150, 1
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %17, align 4
  %154 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %149, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %147, %139
  br label %175

156:                                              ; preds = %124
  %157 = load i32, i32* %14, align 4
  %158 = icmp eq i32 %157, 128
  br i1 %158, label %159, label %174

159:                                              ; preds = %156
  %160 = load i32, i32* %18, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 8
  %166 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %167 = bitcast %union.i2c_smbus_data* %166 to i32*
  store i32 %165, i32* %167, align 8
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %171 = bitcast %union.i2c_smbus_data* %170 to i32*
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %162, %159, %156
  br label %175

175:                                              ; preds = %174, %155, %118
  %176 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %177 = call i32 @pmac_i2c_close(%struct.pmac_i2c_bus* %176)
  %178 = load i32, i32* %17, align 4
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %175, %106, %98
  %180 = load i32, i32* %8, align 4
  ret i32 %180
}

declare dso_local %struct.pmac_i2c_bus* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pmac_i2c_open(%struct.pmac_i2c_bus*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus*, i32) #1

declare dso_local i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @pmac_i2c_close(%struct.pmac_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
