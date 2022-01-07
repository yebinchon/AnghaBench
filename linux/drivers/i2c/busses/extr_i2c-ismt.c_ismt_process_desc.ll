; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ismt.c_ismt_process_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ismt.c_ismt_process_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ismt_desc = type { i32, i32 }
%union.i2c_smbus_data = type { i32* }
%struct.ismt_priv = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Processing completed descriptor\0A\00", align 1
@ISMT_DESC_SCS = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@ISMT_DESC_NAK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ISMT_DESC_CRC = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@ISMT_DESC_COL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ISMT_DESC_LPR = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@ISMT_DESC_DLTO = common dso_local global i32 0, align 4
@ISMT_DESC_CLTO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ismt_desc*, %union.i2c_smbus_data*, %struct.ismt_priv*, i32, i8)* @ismt_process_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ismt_process_desc(%struct.ismt_desc* %0, %union.i2c_smbus_data* %1, %struct.ismt_priv* %2, i32 %3, i8 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ismt_desc*, align 8
  %8 = alloca %union.i2c_smbus_data*, align 8
  %9 = alloca %struct.ismt_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32*, align 8
  store %struct.ismt_desc* %0, %struct.ismt_desc** %7, align 8
  store %union.i2c_smbus_data* %1, %union.i2c_smbus_data** %8, align 8
  store %struct.ismt_priv* %2, %struct.ismt_priv** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  %13 = load %struct.ismt_priv*, %struct.ismt_priv** %9, align 8
  %14 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = call i32* @PTR_ALIGN(i32* %16, i32 16)
  store i32* %17, i32** %12, align 8
  %18 = load %struct.ismt_priv*, %struct.ismt_priv** %9, align 8
  %19 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ismt_priv*, %struct.ismt_priv** %9, align 8
  %24 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %28 = call i32 @__ismt_desc_dump(i32* %26, %struct.ismt_desc* %27)
  %29 = load %struct.ismt_priv*, %struct.ismt_priv** %9, align 8
  %30 = call i32 @ismt_gen_reg_dump(%struct.ismt_priv* %29)
  %31 = load %struct.ismt_priv*, %struct.ismt_priv** %9, align 8
  %32 = call i32 @ismt_mstr_reg_dump(%struct.ismt_priv* %31)
  %33 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %34 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ISMT_DESC_SCS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %107

39:                                               ; preds = %5
  %40 = load i8, i8* %11, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 129
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %163

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %10, align 4
  switch i32 %50, label %106 [
    i32 132, label %51
    i32 131, label %51
    i32 128, label %57
    i32 129, label %57
    i32 133, label %68
    i32 130, label %89
  ]

51:                                               ; preds = %49, %49
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %56 = bitcast %union.i2c_smbus_data* %55 to i32*
  store i32 %54, i32* %56, align 8
  br label %106

57:                                               ; preds = %49, %49
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = or i32 %60, %64
  %66 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %67 = bitcast %union.i2c_smbus_data* %66 to i32*
  store i32 %65, i32* %67, align 8
  br label %106

68:                                               ; preds = %49
  %69 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %70 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = icmp ne i32 %71, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* @EMSGSIZE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %163

80:                                               ; preds = %68
  %81 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %82 = bitcast %union.i2c_smbus_data* %81 to i32**
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %86 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i32* %83, i32* %84, i32 %87)
  br label %106

89:                                               ; preds = %49
  %90 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %91 = bitcast %union.i2c_smbus_data* %90 to i32**
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32*, i32** %12, align 8
  %95 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %96 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memcpy(i32* %93, i32* %94, i32 %97)
  %99 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %100 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %103 = bitcast %union.i2c_smbus_data* %102 to i32**
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %49, %89, %80, %57, %51
  store i32 0, i32* %6, align 4
  br label %163

107:                                              ; preds = %5
  %108 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %109 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ISMT_DESC_NAK, align 4
  %112 = and i32 %110, %111
  %113 = call i64 @likely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load i32, i32* @ENXIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %163

118:                                              ; preds = %107
  %119 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %120 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ISMT_DESC_CRC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i32, i32* @EBADMSG, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %163

128:                                              ; preds = %118
  %129 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %130 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @ISMT_DESC_COL, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load i32, i32* @EAGAIN, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  br label %163

138:                                              ; preds = %128
  %139 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %140 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ISMT_DESC_LPR, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load i32, i32* @EPROTO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %6, align 4
  br label %163

148:                                              ; preds = %138
  %149 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %150 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ISMT_DESC_DLTO, align 4
  %153 = load i32, i32* @ISMT_DESC_CLTO, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %151, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %148
  %158 = load i32, i32* @ETIMEDOUT, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  br label %163

160:                                              ; preds = %148
  %161 = load i32, i32* @EIO, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %160, %157, %145, %135, %125, %115, %106, %77, %48
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i32* @PTR_ALIGN(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @__ismt_desc_dump(i32*, %struct.ismt_desc*) #1

declare dso_local i32 @ismt_gen_reg_dump(%struct.ismt_priv*) #1

declare dso_local i32 @ismt_mstr_reg_dump(%struct.ismt_priv*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
