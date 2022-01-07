; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali1535.c_ali1535_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali1535.c_ali1535_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [81 x i8] c"Transaction (pre): STS=%02x, TYP=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@SMBHSTSTS = common dso_local global i32 0, align 4
@SMBHSTTYP = common dso_local global i32 0, align 4
@SMBHSTCMD = common dso_local global i32 0, align 4
@SMBHSTADD = common dso_local global i32 0, align 4
@SMBHSTDAT0 = common dso_local global i32 0, align 4
@SMBHSTDAT1 = common dso_local global i32 0, align 4
@ALI1535_STS_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Resetting entire SMB Bus to clear busy condition (%02x)\0A\00", align 1
@ALI1535_T_OUT = common dso_local global i32 0, align 4
@ALI1535_STS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"SMBus reset failed! (0x%02x) - controller or device on bus is probably hung\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ALI1535_STS_DONE = common dso_local global i32 0, align 4
@SMBHSTPORT = common dso_local global i32 0, align 4
@ALI1535_STS_IDLE = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"SMBus Timeout!\0A\00", align 1
@ALI1535_STS_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Error: Failed bus transaction\0A\00", align 1
@ALI1535_STS_BUSERR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Error: no response or bus collision ADD=%02x\0A\00", align 1
@ALI1535_STS_DEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Error: device error\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Error: command never completed\0A\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"Transaction (post): STS=%02x, TYP=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@ALI1535_KILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @ali1535_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali1535_transaction(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* @SMBHSTSTS, align 4
  %10 = call i32 @inb_p(i32 %9)
  %11 = load i32, i32* @SMBHSTTYP, align 4
  %12 = call i32 @inb_p(i32 %11)
  %13 = load i32, i32* @SMBHSTCMD, align 4
  %14 = call i32 @inb_p(i32 %13)
  %15 = load i32, i32* @SMBHSTADD, align 4
  %16 = call i32 @inb_p(i32 %15)
  %17 = load i32, i32* @SMBHSTDAT0, align 4
  %18 = call i32 @inb_p(i32 %17)
  %19 = load i32, i32* @SMBHSTDAT1, align 4
  %20 = call i32 @inb_p(i32 %19)
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %8, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i32 %14, i32 %16, i32 %18, i32 %20)
  %22 = load i32, i32* @SMBHSTSTS, align 4
  %23 = call i32 @inb_p(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ALI1535_STS_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ALI1535_T_OUT, align 4
  %34 = load i32, i32* @SMBHSTTYP, align 4
  %35 = call i32 @outb_p(i32 %33, i32 %34)
  %36 = load i32, i32* @SMBHSTSTS, align 4
  %37 = call i32 @inb_p(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %1
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ALI1535_STS_ERR, align 4
  %41 = load i32, i32* @ALI1535_STS_BUSY, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load i32, i32* @SMBHSTSTS, align 4
  %47 = call i32 @outb_p(i32 255, i32 %46)
  %48 = load i32, i32* @SMBHSTSTS, align 4
  %49 = call i32 @inb_p(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @ALI1535_STS_ERR, align 4
  %52 = load i32, i32* @ALI1535_STS_BUSY, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %194

63:                                               ; preds = %45
  br label %74

64:                                               ; preds = %38
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @ALI1535_STS_DONE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @SMBHSTSTS, align 4
  %72 = call i32 @outb_p(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i32, i32* @SMBHSTPORT, align 4
  %76 = call i32 @outb_p(i32 255, i32 %75)
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %96, %74
  %78 = call i32 @usleep_range(i32 1000, i32 2000)
  %79 = load i32, i32* @SMBHSTSTS, align 4
  %80 = call i32 @inb_p(i32 %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @ALI1535_STS_BUSY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @ALI1535_STS_IDLE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @MAX_TIMEOUT, align 4
  %95 = icmp slt i32 %92, %94
  br label %96

96:                                               ; preds = %91, %86, %81
  %97 = phi i1 [ false, %86 ], [ false, %81 ], [ %95, %91 ]
  br i1 %97, label %77, label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @MAX_TIMEOUT, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* @ETIMEDOUT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  %105 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %105, i32 0, i32 0
  %107 = call i32 (i32*, i8*, ...) @dev_err(i32* %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %102, %98
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @ALI1535_STS_FAIL, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  %116 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %116, i32 0, i32 0
  %118 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %119

119:                                              ; preds = %113, %108
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @ALI1535_STS_BUSERR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load i32, i32* @ENXIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  %127 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %127, i32 0, i32 0
  %129 = load i32, i32* @SMBHSTADD, align 4
  %130 = call i32 @inb_p(i32 %129)
  %131 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %128, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %124, %119
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @ALI1535_STS_DEV, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %140, i32 0, i32 0
  %142 = call i32 (i32*, i8*, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %143

143:                                              ; preds = %137, %132
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @ALI1535_STS_DONE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* @ETIMEDOUT, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  %151 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %152 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %151, i32 0, i32 0
  %153 = call i32 (i32*, i8*, ...) @dev_err(i32* %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %154

154:                                              ; preds = %148, %143
  %155 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %155, i32 0, i32 0
  %157 = load i32, i32* @SMBHSTSTS, align 4
  %158 = call i32 @inb_p(i32 %157)
  %159 = load i32, i32* @SMBHSTTYP, align 4
  %160 = call i32 @inb_p(i32 %159)
  %161 = load i32, i32* @SMBHSTCMD, align 4
  %162 = call i32 @inb_p(i32 %161)
  %163 = load i32, i32* @SMBHSTADD, align 4
  %164 = call i32 @inb_p(i32 %163)
  %165 = load i32, i32* @SMBHSTDAT0, align 4
  %166 = call i32 @inb_p(i32 %165)
  %167 = load i32, i32* @SMBHSTDAT1, align 4
  %168 = call i32 @inb_p(i32 %167)
  %169 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %156, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0), i32 %158, i32 %160, i32 %162, i32 %164, i32 %166, i32 %168)
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @ALI1535_STS_DONE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %154
  %175 = load i32, i32* @ALI1535_KILL, align 4
  %176 = load i32, i32* @SMBHSTTYP, align 4
  %177 = call i32 @outb_p(i32 %175, i32 %176)
  %178 = load i32, i32* @SMBHSTSTS, align 4
  %179 = call i32 @outb_p(i32 255, i32 %178)
  br label %192

180:                                              ; preds = %154
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @ALI1535_STS_ERR, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load i32, i32* @ALI1535_T_OUT, align 4
  %187 = load i32, i32* @SMBHSTTYP, align 4
  %188 = call i32 @outb_p(i32 %186, i32 %187)
  %189 = load i32, i32* @SMBHSTSTS, align 4
  %190 = call i32 @outb_p(i32 255, i32 %189)
  br label %191

191:                                              ; preds = %185, %180
  br label %192

192:                                              ; preds = %191, %174
  %193 = load i32, i32* %5, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %192, %56
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
