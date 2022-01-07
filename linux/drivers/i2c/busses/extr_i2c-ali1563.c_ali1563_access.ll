; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali1563.c_ali1563_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali1563.c_ali1563_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }

@ALI1563_MAX_TIMEOUT = common dso_local global i32 0, align 4
@SMB_HST_STS = common dso_local global i32 0, align 4
@HST_STS_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SMBus not idle. HST_STS = %02x\0A\00", align 1
@HST_CNTL2_QUICK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SMB_HST_ADD = common dso_local global i32 0, align 4
@SMB_HST_CNTL2 = common dso_local global i32 0, align 4
@HST_CNTL2_SIZEMASK = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@SMB_HST_DAT0 = common dso_local global i32 0, align 4
@SMB_HST_CMD = common dso_local global i32 0, align 4
@SMB_HST_DAT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @ali1563_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali1563_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.i2c_smbus_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i16 %2, i16* %10, align 2
  store i8 %3, i8* %11, align 1
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @ALI1563_MAX_TIMEOUT, align 4
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %31, %7
  %20 = load i32, i32* %16, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, i32* @SMB_HST_STS, align 4
  %24 = call i32 @inb_p(i32 %23)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* @HST_STS_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %34

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %16, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %16, align 4
  br label %19

34:                                               ; preds = %29, %19
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* @SMB_HST_STS, align 4
  %44 = call i32 @outb_p(i32 255, i32 %43)
  %45 = load i32, i32* %13, align 4
  switch i32 %45, label %52 [
    i32 129, label %46
    i32 131, label %48
    i32 130, label %49
    i32 128, label %50
    i32 132, label %51
  ]

46:                                               ; preds = %42
  %47 = load i32, i32* @HST_CNTL2_QUICK, align 4
  store i32 %47, i32* %13, align 4
  br label %59

48:                                               ; preds = %42
  store i32 135, i32* %13, align 4
  br label %59

49:                                               ; preds = %42
  store i32 134, i32* %13, align 4
  br label %59

50:                                               ; preds = %42
  store i32 133, i32* %13, align 4
  br label %59

51:                                               ; preds = %42
  store i32 136, i32* %13, align 4
  br label %59

52:                                               ; preds = %42
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %54 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @dev_warn(i32* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %15, align 4
  br label %179

59:                                               ; preds = %51, %50, %49, %48, %46
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 127
  %62 = shl i32 %61, 1
  %63 = load i8, i8* %11, align 1
  %64 = sext i8 %63 to i32
  %65 = and i32 %64, 1
  %66 = or i32 %62, %65
  %67 = load i32, i32* @SMB_HST_ADD, align 4
  %68 = call i32 @outb_p(i32 %66, i32 %67)
  %69 = load i32, i32* @SMB_HST_CNTL2, align 4
  %70 = call i32 @inb_p(i32 %69)
  %71 = load i32, i32* @HST_CNTL2_SIZEMASK, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = load i32, i32* %13, align 4
  %75 = shl i32 %74, 3
  %76 = or i32 %73, %75
  %77 = load i32, i32* @SMB_HST_CNTL2, align 4
  %78 = call i32 @outb_p(i32 %76, i32 %77)
  %79 = load i32, i32* %13, align 4
  switch i32 %79, label %139 [
    i32 135, label %80
    i32 134, label %91
    i32 133, label %107
    i32 136, label %131
  ]

80:                                               ; preds = %59
  %81 = load i8, i8* %11, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @SMB_HST_DAT0, align 4
  %89 = call i32 @outb_p(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %80
  br label %139

91:                                               ; preds = %59
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @SMB_HST_CMD, align 4
  %94 = call i32 @outb_p(i32 %92, i32 %93)
  %95 = load i8, i8* %11, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %91
  %101 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %102 = bitcast %union.i2c_smbus_data* %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SMB_HST_DAT0, align 4
  %105 = call i32 @outb_p(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %91
  br label %139

107:                                              ; preds = %59
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @SMB_HST_CMD, align 4
  %110 = call i32 @outb_p(i32 %108, i32 %109)
  %111 = load i8, i8* %11, align 1
  %112 = sext i8 %111 to i32
  %113 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %107
  %117 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %118 = bitcast %union.i2c_smbus_data* %117 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 255
  %121 = load i32, i32* @SMB_HST_DAT0, align 4
  %122 = call i32 @outb_p(i32 %120, i32 %121)
  %123 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %124 = bitcast %union.i2c_smbus_data* %123 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 65280
  %127 = ashr i32 %126, 8
  %128 = load i32, i32* @SMB_HST_DAT1, align 4
  %129 = call i32 @outb_p(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %116, %107
  br label %139

131:                                              ; preds = %59
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @SMB_HST_CMD, align 4
  %134 = call i32 @outb_p(i32 %132, i32 %133)
  %135 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %136 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %137 = load i8, i8* %11, align 1
  %138 = call i32 @ali1563_block(%struct.i2c_adapter* %135, %union.i2c_smbus_data* %136, i8 signext %137)
  store i32 %138, i32* %15, align 4
  br label %179

139:                                              ; preds = %59, %130, %106, %90
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @ali1563_transaction(%struct.i2c_adapter* %140, i32 %141)
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %179

146:                                              ; preds = %139
  %147 = load i8, i8* %11, align 1
  %148 = sext i8 %147 to i32
  %149 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %146
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @HST_CNTL2_QUICK, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152, %146
  br label %179

157:                                              ; preds = %152
  %158 = load i32, i32* %13, align 4
  switch i32 %158, label %178 [
    i32 135, label %159
    i32 134, label %164
    i32 133, label %169
  ]

159:                                              ; preds = %157
  %160 = load i32, i32* @SMB_HST_DAT0, align 4
  %161 = call i32 @inb_p(i32 %160)
  %162 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %163 = bitcast %union.i2c_smbus_data* %162 to i32*
  store i32 %161, i32* %163, align 4
  br label %178

164:                                              ; preds = %157
  %165 = load i32, i32* @SMB_HST_DAT0, align 4
  %166 = call i32 @inb_p(i32 %165)
  %167 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %168 = bitcast %union.i2c_smbus_data* %167 to i32*
  store i32 %166, i32* %168, align 4
  br label %178

169:                                              ; preds = %157
  %170 = load i32, i32* @SMB_HST_DAT0, align 4
  %171 = call i32 @inb_p(i32 %170)
  %172 = load i32, i32* @SMB_HST_DAT1, align 4
  %173 = call i32 @inb_p(i32 %172)
  %174 = shl i32 %173, 8
  %175 = add nsw i32 %171, %174
  %176 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %177 = bitcast %union.i2c_smbus_data* %176 to i32*
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %157, %169, %164, %159
  br label %179

179:                                              ; preds = %178, %156, %145, %131, %52
  %180 = load i32, i32* %15, align 4
  ret i32 %180
}

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @ali1563_block(%struct.i2c_adapter*, %union.i2c_smbus_data*, i8 signext) #1

declare dso_local i32 @ali1563_transaction(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
