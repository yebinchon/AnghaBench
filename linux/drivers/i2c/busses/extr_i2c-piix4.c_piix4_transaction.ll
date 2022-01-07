; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_piix4_adapdata = type { i16 }

@.str = private unnamed_addr constant [71 x i8] c"Transaction (pre): CNT=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@SMBHSTCNT = common dso_local global i32 0, align 4
@SMBHSTCMD = common dso_local global i32 0, align 4
@SMBHSTADD = common dso_local global i32 0, align 4
@SMBHSTDAT0 = common dso_local global i32 0, align 4
@SMBHSTDAT1 = common dso_local global i32 0, align 4
@SMBHSTSTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SMBus busy (%02x). Resetting...\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Failed! (%02x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Successful!\0A\00", align 1
@srvrworks_csb5_delay = common dso_local global i64 0, align 8
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"SMBus Timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Error: Failed bus transaction\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Bus collision! SMBus may be locked until next hard reset. (sorry!)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Error: no response!\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Failed reset at end of transaction (%02x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [72 x i8] c"Transaction (post): CNT=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @piix4_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix4_transaction(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.i2c_piix4_adapdata*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %10 = call %struct.i2c_piix4_adapdata* @i2c_get_adapdata(%struct.i2c_adapter* %9)
  store %struct.i2c_piix4_adapdata* %10, %struct.i2c_piix4_adapdata** %4, align 8
  %11 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 2
  store i16 %13, i16* %5, align 2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* @SMBHSTCNT, align 4
  %17 = call i32 @inb_p(i32 %16)
  %18 = load i32, i32* @SMBHSTCMD, align 4
  %19 = call i32 @inb_p(i32 %18)
  %20 = load i32, i32* @SMBHSTADD, align 4
  %21 = call i32 @inb_p(i32 %20)
  %22 = load i32, i32* @SMBHSTDAT0, align 4
  %23 = call i32 @inb_p(i32 %22)
  %24 = load i32, i32* @SMBHSTDAT1, align 4
  %25 = call i32 @inb_p(i32 %24)
  %26 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %15, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19, i32 %21, i32 %23, i32 %25)
  %27 = load i32, i32* @SMBHSTSTS, align 4
  %28 = call i32 @inb_p(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %1
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SMBHSTSTS, align 4
  %37 = call i32 @outb_p(i32 %35, i32 %36)
  %38 = load i32, i32* @SMBHSTSTS, align 4
  %39 = call i32 @inb_p(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %153

48:                                               ; preds = %30
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52, %1
  %54 = load i32, i32* @SMBHSTCNT, align 4
  %55 = call i32 @inb(i32 %54)
  %56 = or i32 %55, 64
  %57 = load i32, i32* @SMBHSTCNT, align 4
  %58 = call i32 @outb_p(i32 %56, i32 %57)
  %59 = load i64, i64* @srvrworks_csb5_delay, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = call i32 @usleep_range(i32 2000, i32 2100)
  br label %65

63:                                               ; preds = %53
  %64 = call i32 @usleep_range(i32 250, i32 500)
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %78, %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @MAX_TIMEOUT, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* @SMBHSTSTS, align 4
  %73 = call i32 @inb_p(i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %71, %66
  %77 = phi i1 [ false, %66 ], [ %75, %71 ]
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = call i32 @usleep_range(i32 250, i32 500)
  br label %66

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @MAX_TIMEOUT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %85, i32 0, i32 0
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32, i32* @ETIMEDOUT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %84, %80
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, 16
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  %97 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %97, i32 0, i32 0
  %99 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %100

100:                                              ; preds = %94, %90
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  %107 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %107, i32 0, i32 0
  %109 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %108, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  br label %110

110:                                              ; preds = %104, %100
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i32, i32* @ENXIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %7, align 4
  %117 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %117, i32 0, i32 0
  %119 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %120

120:                                              ; preds = %114, %110
  %121 = load i32, i32* @SMBHSTSTS, align 4
  %122 = call i32 @inb_p(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32, i32* @SMBHSTSTS, align 4
  %126 = call i32 @inb(i32 %125)
  %127 = load i32, i32* @SMBHSTSTS, align 4
  %128 = call i32 @outb_p(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %120
  %130 = load i32, i32* @SMBHSTSTS, align 4
  %131 = call i32 @inb_p(i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %134, i32 0, i32 0
  %136 = load i32, i32* %6, align 4
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %133, %129
  %139 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %139, i32 0, i32 0
  %141 = load i32, i32* @SMBHSTCNT, align 4
  %142 = call i32 @inb_p(i32 %141)
  %143 = load i32, i32* @SMBHSTCMD, align 4
  %144 = call i32 @inb_p(i32 %143)
  %145 = load i32, i32* @SMBHSTADD, align 4
  %146 = call i32 @inb_p(i32 %145)
  %147 = load i32, i32* @SMBHSTDAT0, align 4
  %148 = call i32 @inb_p(i32 %147)
  %149 = load i32, i32* @SMBHSTDAT1, align 4
  %150 = call i32 @inb_p(i32 %149)
  %151 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %140, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.9, i64 0, i64 0), i32 %142, i32 %144, i32 %146, i32 %148, i32 %150)
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %138, %41
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.i2c_piix4_adapdata* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
