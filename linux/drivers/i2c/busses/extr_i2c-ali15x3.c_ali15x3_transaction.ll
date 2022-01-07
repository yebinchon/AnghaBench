; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali15x3.c_ali15x3_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali15x3.c_ali15x3_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [81 x i8] c"Transaction (pre): STS=%02x, CNT=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@SMBHSTSTS = common dso_local global i32 0, align 4
@SMBHSTCNT = common dso_local global i32 0, align 4
@SMBHSTCMD = common dso_local global i32 0, align 4
@SMBHSTADD = common dso_local global i32 0, align 4
@SMBHSTDAT0 = common dso_local global i32 0, align 4
@SMBHSTDAT1 = common dso_local global i32 0, align 4
@ALI15X3_STS_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Resetting entire SMB Bus to clear busy condition (%02x)\0A\00", align 1
@ALI15X3_T_OUT = common dso_local global i32 0, align 4
@ALI15X3_STS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"SMBus reset failed! (0x%02x) - controller or device on bus is probably hung\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ALI15X3_STS_DONE = common dso_local global i32 0, align 4
@SMBHSTSTART = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"SMBus Timeout!\0A\00", align 1
@ALI15X3_STS_TERM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Error: Failed bus transaction\0A\00", align 1
@ALI15X3_STS_COLL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Error: no response or bus collision ADD=%02x\0A\00", align 1
@ALI15X3_STS_DEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Error: device error\0A\00", align 1
@.str.7 = private unnamed_addr constant [82 x i8] c"Transaction (post): STS=%02x, CNT=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @ali15x3_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali15x3_transaction(%struct.i2c_adapter* %0) #0 {
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
  %11 = load i32, i32* @SMBHSTCNT, align 4
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
  %25 = load i32, i32* @ALI15X3_STS_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ALI15X3_T_OUT, align 4
  %34 = load i32, i32* @SMBHSTCNT, align 4
  %35 = call i32 @outb_p(i32 %33, i32 %34)
  %36 = load i32, i32* @SMBHSTSTS, align 4
  %37 = call i32 @inb_p(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %1
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ALI15X3_STS_ERR, align 4
  %41 = load i32, i32* @ALI15X3_STS_BUSY, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load i32, i32* @SMBHSTSTS, align 4
  %47 = call i32 @outb_p(i32 255, i32 %46)
  %48 = load i32, i32* @SMBHSTSTS, align 4
  %49 = call i32 @inb_p(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @ALI15X3_STS_ERR, align 4
  %51 = load i32, i32* @ALI15X3_STS_BUSY, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %156

62:                                               ; preds = %45
  br label %73

63:                                               ; preds = %38
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @ALI15X3_STS_DONE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @SMBHSTSTS, align 4
  %71 = call i32 @outb_p(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i32, i32* @SMBHSTSTART, align 4
  %75 = call i32 @outb_p(i32 255, i32 %74)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %92, %73
  %77 = call i32 @msleep(i32 1)
  %78 = load i32, i32* @SMBHSTSTS, align 4
  %79 = call i32 @inb_p(i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @ALI15X3_STS_ERR, align 4
  %83 = load i32, i32* @ALI15X3_STS_DONE, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* @MAX_TIMEOUT, align 4
  %91 = icmp slt i32 %88, %90
  br label %92

92:                                               ; preds = %87, %80
  %93 = phi i1 [ false, %80 ], [ %91, %87 ]
  br i1 %93, label %76, label %94

94:                                               ; preds = %92
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @MAX_TIMEOUT, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* @ETIMEDOUT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  %101 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %101, i32 0, i32 0
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %98, %94
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @ALI15X3_STS_TERM, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  %112 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %112, i32 0, i32 0
  %114 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %109, %104
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @ALI15X3_STS_COLL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load i32, i32* @ENXIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  %123 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %123, i32 0, i32 0
  %125 = load i32, i32* @SMBHSTADD, align 4
  %126 = call i32 @inb_p(i32 %125)
  %127 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %124, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %120, %115
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @ALI15X3_STS_DEV, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  %136 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %136, i32 0, i32 0
  %138 = call i32 (i32*, i8*, ...) @dev_err(i32* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %139

139:                                              ; preds = %133, %128
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %140, i32 0, i32 0
  %142 = load i32, i32* @SMBHSTSTS, align 4
  %143 = call i32 @inb_p(i32 %142)
  %144 = load i32, i32* @SMBHSTCNT, align 4
  %145 = call i32 @inb_p(i32 %144)
  %146 = load i32, i32* @SMBHSTCMD, align 4
  %147 = call i32 @inb_p(i32 %146)
  %148 = load i32, i32* @SMBHSTADD, align 4
  %149 = call i32 @inb_p(i32 %148)
  %150 = load i32, i32* @SMBHSTDAT0, align 4
  %151 = call i32 @inb_p(i32 %150)
  %152 = load i32, i32* @SMBHSTDAT1, align 4
  %153 = call i32 @inb_p(i32 %152)
  %154 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %141, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i64 0, i64 0), i32 %143, i32 %145, i32 %147, i32 %149, i32 %151, i32 %153)
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %139, %55
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
