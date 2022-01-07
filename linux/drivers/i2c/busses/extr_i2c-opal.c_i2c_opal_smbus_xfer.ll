; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-opal.c_i2c_opal_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-opal.c_i2c_opal_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i64 }
%union.i2c_smbus_data = type { i32* }
%struct.opal_i2c_request = type { i32, i8*, i8*, i8*, i8*, i32 }

@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@OPAL_I2C_RAW_READ = common dso_local global i8* null, align 8
@OPAL_I2C_RAW_WRITE = common dso_local global i8* null, align 8
@OPAL_I2C_SM_READ = common dso_local global i8* null, align 8
@OPAL_I2C_SM_WRITE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @i2c_opal_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_opal_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.opal_i2c_request, align 8
  %18 = alloca [2 x i32], align 4
  %19 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %21 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %16, align 8
  %23 = call i32 @memset(%struct.opal_i2c_request* %17, i32 0, i32 48)
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @cpu_to_be16(i32 %24)
  %26 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 5
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %14, align 4
  switch i32 %27, label %142 [
    i32 132, label %28
    i32 129, label %36
    i32 131, label %49
    i32 128, label %73
    i32 130, label %111
  ]

28:                                               ; preds = %7
  %29 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %30 = bitcast %union.i2c_smbus_data* %29 to i32*
  %31 = call i32 @__pa(i32* %30)
  %32 = call i8* @cpu_to_be64(i32 %31)
  %33 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 4
  store i8* %32, i8** %33, align 8
  %34 = call i8* @cpu_to_be32(i32 1)
  %35 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %7, %28
  %37 = load i8, i8* %12, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @I2C_SMBUS_READ, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i8*, i8** @OPAL_I2C_RAW_READ, align 8
  br label %46

44:                                               ; preds = %36
  %45 = load i8*, i8** @OPAL_I2C_RAW_WRITE, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i8* [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  br label %145

49:                                               ; preds = %7
  %50 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %51 = bitcast %union.i2c_smbus_data* %50 to i32*
  %52 = call i32 @__pa(i32* %51)
  %53 = call i8* @cpu_to_be64(i32 %52)
  %54 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 4
  store i8* %53, i8** %54, align 8
  %55 = call i8* @cpu_to_be32(i32 1)
  %56 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 3
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i8* @cpu_to_be32(i32 %57)
  %59 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 2
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i8, i8* %12, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* @I2C_SMBUS_READ, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = load i8*, i8** @OPAL_I2C_SM_READ, align 8
  br label %70

68:                                               ; preds = %49
  %69 = load i8*, i8** @OPAL_I2C_SM_WRITE, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i8* [ %67, %66 ], [ %69, %68 ]
  %72 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 1
  store i8* %71, i8** %72, align 8
  br label %145

73:                                               ; preds = %7
  %74 = load i8, i8* %12, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %73
  %77 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %78 = bitcast %union.i2c_smbus_data* %77 to i32*
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 255
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  store i32 %80, i32* %81, align 4
  %82 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %83 = bitcast %union.i2c_smbus_data* %82 to i32*
  %84 = load i32, i32* %83, align 8
  %85 = ashr i32 %84, 8
  %86 = and i32 %85, 255
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %76, %73
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %90 = call i32 @__pa(i32* %89)
  %91 = call i8* @cpu_to_be64(i32 %90)
  %92 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 4
  store i8* %91, i8** %92, align 8
  %93 = call i8* @cpu_to_be32(i32 2)
  %94 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 3
  store i8* %93, i8** %94, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i8* @cpu_to_be32(i32 %95)
  %97 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 2
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load i8, i8* %12, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* @I2C_SMBUS_READ, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %88
  %105 = load i8*, i8** @OPAL_I2C_SM_READ, align 8
  br label %108

106:                                              ; preds = %88
  %107 = load i8*, i8** @OPAL_I2C_SM_WRITE, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i8* [ %105, %104 ], [ %107, %106 ]
  %110 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 1
  store i8* %109, i8** %110, align 8
  br label %145

111:                                              ; preds = %7
  %112 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %113 = bitcast %union.i2c_smbus_data* %112 to i32**
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = call i32 @__pa(i32* %115)
  %117 = call i8* @cpu_to_be64(i32 %116)
  %118 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 4
  store i8* %117, i8** %118, align 8
  %119 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %120 = bitcast %union.i2c_smbus_data* %119 to i32**
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @cpu_to_be32(i32 %123)
  %125 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 3
  store i8* %124, i8** %125, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i8* @cpu_to_be32(i32 %126)
  %128 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 2
  store i8* %127, i8** %128, align 8
  %129 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load i8, i8* %12, align 1
  %131 = sext i8 %130 to i32
  %132 = load i8, i8* @I2C_SMBUS_READ, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %111
  %136 = load i8*, i8** @OPAL_I2C_SM_READ, align 8
  br label %139

137:                                              ; preds = %111
  %138 = load i8*, i8** @OPAL_I2C_SM_WRITE, align 8
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i8* [ %136, %135 ], [ %138, %137 ]
  %141 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %17, i32 0, i32 1
  store i8* %140, i8** %141, align 8
  br label %145

142:                                              ; preds = %7
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %171

145:                                              ; preds = %139, %108, %70, %46
  %146 = load i64, i64* %16, align 8
  %147 = call i32 @i2c_opal_send_request(i64 %146, %struct.opal_i2c_request* %17)
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* %19, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %169, label %150

150:                                              ; preds = %145
  %151 = load i8, i8* %12, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %169

154:                                              ; preds = %150
  %155 = load i32, i32* %14, align 4
  %156 = icmp eq i32 %155, 128
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 8
  %161 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %162 = bitcast %union.i2c_smbus_data* %161 to i32*
  store i32 %160, i32* %162, align 8
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %166 = bitcast %union.i2c_smbus_data* %165 to i32*
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %157, %154, %150, %145
  %170 = load i32, i32* %19, align 4
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %169, %142
  %172 = load i32, i32* %8, align 4
  ret i32 %172
}

declare dso_local i32 @memset(%struct.opal_i2c_request*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @i2c_opal_send_request(i64, %struct.opal_i2c_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
