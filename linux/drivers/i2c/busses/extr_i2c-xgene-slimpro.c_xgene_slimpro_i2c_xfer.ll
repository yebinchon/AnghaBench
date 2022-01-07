; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xgene-slimpro.c_xgene_slimpro_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xgene-slimpro.c_xgene_slimpro_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }
%struct.slimpro_i2c_dev = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@SLIMPRO_IIC_SMB_PROTOCOL = common dso_local global i32 0, align 4
@BYTE_DATA = common dso_local global i32 0, align 4
@SMBUS_CMD_LEN = common dso_local global i32 0, align 4
@WORD_DATA = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@IIC_SMB_WITH_DATA_LEN = common dso_local global i32 0, align 4
@SLIMPRO_IIC_I2C_PROTOCOL = common dso_local global i32 0, align 4
@IIC_SMB_WITHOUT_DATA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @xgene_slimpro_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_slimpro_i2c_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.i2c_smbus_data*, align 8
  %15 = alloca %struct.slimpro_i2c_dev*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i16 %2, i16* %10, align 2
  store i8 %3, i8* %11, align 1
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %14, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %19 = call %struct.slimpro_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %18)
  store %struct.slimpro_i2c_dev* %19, %struct.slimpro_i2c_dev** %15, align 8
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %13, align 4
  switch i32 %22, label %180 [
    i32 131, label %23
    i32 130, label %46
    i32 128, label %76
    i32 132, label %106
    i32 129, label %144
  ]

23:                                               ; preds = %7
  %24 = load i8, i8* %11, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @I2C_SMBUS_READ, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %15, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SLIMPRO_IIC_SMB_PROTOCOL, align 4
  %33 = load i32, i32* @BYTE_DATA, align 4
  %34 = call i32 @slimpro_i2c_rd(%struct.slimpro_i2c_dev* %30, i32 %31, i32 0, i32 0, i32 %32, i32 %33, i8** %17)
  store i32 %34, i32* %16, align 4
  %35 = load i8*, i8** %17, align 8
  %36 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %37 = bitcast %union.i2c_smbus_data* %36 to i8**
  store i8* %35, i8** %37, align 8
  br label %45

38:                                               ; preds = %23
  %39 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %15, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @SMBUS_CMD_LEN, align 4
  %43 = load i32, i32* @SLIMPRO_IIC_SMB_PROTOCOL, align 4
  %44 = call i32 @slimpro_i2c_wr(%struct.slimpro_i2c_dev* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 0, i8* null)
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %38, %29
  br label %181

46:                                               ; preds = %7
  %47 = load i8, i8* %11, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* @I2C_SMBUS_READ, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %15, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @SMBUS_CMD_LEN, align 4
  %57 = load i32, i32* @SLIMPRO_IIC_SMB_PROTOCOL, align 4
  %58 = load i32, i32* @BYTE_DATA, align 4
  %59 = call i32 @slimpro_i2c_rd(%struct.slimpro_i2c_dev* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i8** %17)
  store i32 %59, i32* %16, align 4
  %60 = load i8*, i8** %17, align 8
  %61 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %62 = bitcast %union.i2c_smbus_data* %61 to i8**
  store i8* %60, i8** %62, align 8
  br label %75

63:                                               ; preds = %46
  %64 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %65 = bitcast %union.i2c_smbus_data* %64 to i8**
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %17, align 8
  %67 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %15, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @SMBUS_CMD_LEN, align 4
  %71 = load i32, i32* @SLIMPRO_IIC_SMB_PROTOCOL, align 4
  %72 = load i32, i32* @BYTE_DATA, align 4
  %73 = load i8*, i8** %17, align 8
  %74 = call i32 @slimpro_i2c_wr(%struct.slimpro_i2c_dev* %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i8* %73)
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %63, %52
  br label %181

76:                                               ; preds = %7
  %77 = load i8, i8* %11, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* @I2C_SMBUS_READ, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %15, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @SMBUS_CMD_LEN, align 4
  %87 = load i32, i32* @SLIMPRO_IIC_SMB_PROTOCOL, align 4
  %88 = load i32, i32* @WORD_DATA, align 4
  %89 = call i32 @slimpro_i2c_rd(%struct.slimpro_i2c_dev* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i8** %17)
  store i32 %89, i32* %16, align 4
  %90 = load i8*, i8** %17, align 8
  %91 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %92 = bitcast %union.i2c_smbus_data* %91 to i8**
  store i8* %90, i8** %92, align 8
  br label %105

93:                                               ; preds = %76
  %94 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %95 = bitcast %union.i2c_smbus_data* %94 to i8**
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %17, align 8
  %97 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %15, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @SMBUS_CMD_LEN, align 4
  %101 = load i32, i32* @SLIMPRO_IIC_SMB_PROTOCOL, align 4
  %102 = load i32, i32* @WORD_DATA, align 4
  %103 = load i8*, i8** %17, align 8
  %104 = call i32 @slimpro_i2c_wr(%struct.slimpro_i2c_dev* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i8* %103)
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %93, %82
  br label %181

106:                                              ; preds = %7
  %107 = load i8, i8* %11, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8, i8* @I2C_SMBUS_READ, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %106
  %113 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %15, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @SMBUS_CMD_LEN, align 4
  %117 = load i32, i32* @SLIMPRO_IIC_SMB_PROTOCOL, align 4
  %118 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* @IIC_SMB_WITH_DATA_LEN, align 4
  %121 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %122 = bitcast %union.i2c_smbus_data* %121 to i32**
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = call i32 @slimpro_i2c_blkrd(%struct.slimpro_i2c_dev* %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %119, i32 %120, i32* %124)
  store i32 %125, i32* %16, align 4
  br label %143

126:                                              ; preds = %106
  %127 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %15, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @SMBUS_CMD_LEN, align 4
  %131 = load i32, i32* @SLIMPRO_IIC_SMB_PROTOCOL, align 4
  %132 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %133 = bitcast %union.i2c_smbus_data* %132 to i32**
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  %138 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %139 = bitcast %union.i2c_smbus_data* %138 to i32**
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = call i32 @slimpro_i2c_blkwr(%struct.slimpro_i2c_dev* %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %137, i32* %141)
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %126, %112
  br label %181

144:                                              ; preds = %7
  %145 = load i8, i8* %11, align 1
  %146 = sext i8 %145 to i32
  %147 = load i8, i8* @I2C_SMBUS_READ, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %144
  %151 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %15, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @SMBUS_CMD_LEN, align 4
  %155 = load i32, i32* @SLIMPRO_IIC_I2C_PROTOCOL, align 4
  %156 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %157 = load i32, i32* @IIC_SMB_WITHOUT_DATA_LEN, align 4
  %158 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %159 = bitcast %union.i2c_smbus_data* %158 to i32**
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = call i32 @slimpro_i2c_blkrd(%struct.slimpro_i2c_dev* %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32* %161)
  store i32 %162, i32* %16, align 4
  br label %179

163:                                              ; preds = %144
  %164 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %15, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @SMBUS_CMD_LEN, align 4
  %168 = load i32, i32* @SLIMPRO_IIC_I2C_PROTOCOL, align 4
  %169 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %170 = bitcast %union.i2c_smbus_data* %169 to i32**
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %175 = bitcast %union.i2c_smbus_data* %174 to i32**
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = call i32 @slimpro_i2c_blkwr(%struct.slimpro_i2c_dev* %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %173, i32* %177)
  store i32 %178, i32* %16, align 4
  br label %179

179:                                              ; preds = %163, %150
  br label %181

180:                                              ; preds = %7
  br label %181

181:                                              ; preds = %180, %179, %143, %105, %75, %45
  %182 = load i32, i32* %16, align 4
  ret i32 %182
}

declare dso_local %struct.slimpro_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @slimpro_i2c_rd(%struct.slimpro_i2c_dev*, i32, i32, i32, i32, i32, i8**) #1

declare dso_local i32 @slimpro_i2c_wr(%struct.slimpro_i2c_dev*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @slimpro_i2c_blkrd(%struct.slimpro_i2c_dev*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @slimpro_i2c_blkwr(%struct.slimpro_i2c_dev*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
