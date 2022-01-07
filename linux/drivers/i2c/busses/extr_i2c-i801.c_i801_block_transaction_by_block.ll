; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_block_transaction_by_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_block_transaction_by_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { i32 }
%union.i2c_smbus_data = type { i32* }

@SMBHSTCNT_PEC_EN = common dso_local global i32 0, align 4
@I801_BLOCK_PROC_CALL = common dso_local global i32 0, align 4
@I801_BLOCK_DATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*, %union.i2c_smbus_data*, i8, i32, i32)* @i801_block_transaction_by_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_block_transaction_by_block(%struct.i801_priv* %0, %union.i2c_smbus_data* %1, i8 signext %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i801_priv*, align 8
  %8 = alloca %union.i2c_smbus_data*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i801_priv* %0, %struct.i801_priv** %7, align 8
  store %union.i2c_smbus_data* %1, %union.i2c_smbus_data** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @SMBHSTCNT_PEC_EN, align 4
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %32 [
    i32 128, label %24
    i32 129, label %28
  ]

24:                                               ; preds = %21
  %25 = load i32, i32* @I801_BLOCK_PROC_CALL, align 4
  %26 = load i32, i32* %15, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %15, align 4
  br label %35

28:                                               ; preds = %21
  %29 = load i32, i32* @I801_BLOCK_DATA, align 4
  %30 = load i32, i32* %15, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %15, align 4
  br label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %132

35:                                               ; preds = %28, %24
  %36 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %37 = call i32 @SMBHSTCNT(%struct.i801_priv* %36)
  %38 = call i8* @inb_p(i32 %37)
  %39 = load i8, i8* %9, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %35
  %45 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %46 = bitcast %union.i2c_smbus_data* %45 to i32**
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %52 = call i32 @SMBHSTDAT0(%struct.i801_priv* %51)
  %53 = call i32 @outb_p(i32 %50, i32 %52)
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %70, %44
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %60 = bitcast %union.i2c_smbus_data* %59 to i32**
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %68 = call i32 @SMBBLKDAT(%struct.i801_priv* %67)
  %69 = call i32 @outb_p(i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %54

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73, %35
  %75 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @i801_transaction(%struct.i801_priv* %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %6, align 4
  br label %132

82:                                               ; preds = %74
  %83 = load i8, i8* %9, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8, i8* @I2C_SMBUS_READ, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %91, label %131

91:                                               ; preds = %88, %82
  %92 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %93 = call i32 @SMBHSTDAT0(%struct.i801_priv* %92)
  %94 = call i8* @inb_p(i32 %93)
  %95 = ptrtoint i8* %94 to i32
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98, %91
  %103 = load i32, i32* @EPROTO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %132

105:                                              ; preds = %98
  %106 = load i32, i32* %13, align 4
  %107 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %108 = bitcast %union.i2c_smbus_data* %107 to i32**
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %106, i32* %110, align 4
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %127, %105
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %117 = call i32 @SMBBLKDAT(%struct.i801_priv* %116)
  %118 = call i8* @inb_p(i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %121 = bitcast %union.i2c_smbus_data* %120 to i32**
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %119, i32* %126, align 4
  br label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %111

130:                                              ; preds = %111
  br label %131

131:                                              ; preds = %130, %88
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %131, %102, %80, %32
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i8* @inb_p(i32) #1

declare dso_local i32 @SMBHSTCNT(%struct.i801_priv*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @SMBHSTDAT0(%struct.i801_priv*) #1

declare dso_local i32 @SMBBLKDAT(%struct.i801_priv*) #1

declare dso_local i32 @i801_transaction(%struct.i801_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
