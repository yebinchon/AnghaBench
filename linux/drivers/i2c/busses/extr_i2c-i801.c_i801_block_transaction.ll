; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_block_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_block_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%union.i2c_smbus_data = type { i32* }

@I2C_SMBUS_I2C_BLOCK_DATA = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@SMBHSTCFG = common dso_local global i32 0, align 4
@SMBHSTCFG_I2C_EN = common dso_local global i8 0, align 1
@FEATURE_I2C_BLOCK_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"I2C block read is unsupported!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@FEATURE_BLOCK_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*, %union.i2c_smbus_data*, i8, i32, i32)* @i801_block_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_block_transaction(%struct.i801_priv* %0, %union.i2c_smbus_data* %1, i8 signext %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i801_priv*, align 8
  %8 = alloca %union.i2c_smbus_data*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.i801_priv* %0, %struct.i801_priv** %7, align 8
  store %union.i2c_smbus_data* %1, %union.i2c_smbus_data** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %5
  %18 = load i8, i8* %9, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %25 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* @SMBHSTCFG, align 4
  %28 = call i32 @pci_read_config_byte(%struct.TYPE_3__* %26, i32 %27, i8* %13)
  %29 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %30 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* @SMBHSTCFG, align 4
  %33 = load i8, i8* %13, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @SMBHSTCFG_I2C_EN, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %34, %36
  %38 = trunc i32 %37 to i8
  %39 = call i32 @pci_write_config_byte(%struct.TYPE_3__* %31, i32 %32, i8 zeroext %38)
  br label %56

40:                                               ; preds = %17
  %41 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %42 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FEATURE_I2C_BLOCK_READ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %40
  %48 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %49 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %147

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %23
  br label %57

57:                                               ; preds = %56, %5
  %58 = load i8, i8* %9, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %63, %57
  %68 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %69 = bitcast %union.i2c_smbus_data* %68 to i32**
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %76 = bitcast %union.i2c_smbus_data* %75 to i32**
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %81 = bitcast %union.i2c_smbus_data* %80 to i32**
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %89 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %90 = bitcast %union.i2c_smbus_data* %89 to i32**
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %79
  br label %99

94:                                               ; preds = %63
  %95 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %96 = bitcast %union.i2c_smbus_data* %95 to i32**
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 32, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %93
  %100 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %101 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @FEATURE_BLOCK_BUFFER, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %99
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %112 = call i64 @i801_set_block_buffer_mode(%struct.i801_priv* %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %116 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %117 = load i8, i8* %9, align 1
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @i801_block_transaction_by_block(%struct.i801_priv* %115, %union.i2c_smbus_data* %116, i8 signext %117, i32 %118, i32 %119)
  store i32 %120, i32* %12, align 4
  br label %128

121:                                              ; preds = %110, %106, %99
  %122 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %123 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %124 = load i8, i8* %9, align 1
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @i801_block_transaction_byte_by_byte(%struct.i801_priv* %122, %union.i2c_smbus_data* %123, i8 signext %124, i32 %125, i32 %126)
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %121, %114
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %128
  %133 = load i8, i8* %9, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %140 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i32, i32* @SMBHSTCFG, align 4
  %143 = load i8, i8* %13, align 1
  %144 = call i32 @pci_write_config_byte(%struct.TYPE_3__* %141, i32 %142, i8 zeroext %143)
  br label %145

145:                                              ; preds = %138, %132, %128
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %145, %47
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.TYPE_3__*, i32, i8 zeroext) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @i801_set_block_buffer_mode(%struct.i801_priv*) #1

declare dso_local i32 @i801_block_transaction_by_block(%struct.i801_priv*, %union.i2c_smbus_data*, i8 signext, i32, i32) #1

declare dso_local i32 @i801_block_transaction_byte_by_byte(%struct.i801_priv*, %union.i2c_smbus_data*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
