; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali1563.c_ali1563_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali1563.c_ali1563_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"Transaction (pre): STS=%02x, CNTL1=%02x, CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@SMB_HST_STS = common dso_local global i32 0, align 4
@SMB_HST_CNTL1 = common dso_local global i32 0, align 4
@SMB_HST_CNTL2 = common dso_local global i32 0, align 4
@SMB_HST_CMD = common dso_local global i32 0, align 4
@SMB_HST_ADD = common dso_local global i32 0, align 4
@SMB_HST_DAT0 = common dso_local global i32 0, align 4
@SMB_HST_DAT1 = common dso_local global i32 0, align 4
@HST_STS_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ali1563: Trying to reset busy device\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@HST_CNTL2_START = common dso_local global i32 0, align 4
@ALI1563_MAX_TIMEOUT = common dso_local global i32 0, align 4
@HST_STS_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [96 x i8] c"Transaction (post): STS=%02x, CNTL1=%02x, CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Timeout - Trying to KILL transaction!\0A\00", align 1
@HST_CNTL2_KILL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@HST_STS_DEVERR = common dso_local global i32 0, align 4
@HST_CNTL2_QUICK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Device error!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@HST_STS_BUSERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Bus collision!\0A\00", align 1
@HST_CNTL1_TIMEOUT = common dso_local global i32 0, align 4
@HST_STS_FAIL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Cleaning fail after KILL!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32)* @ali1563_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali1563_transaction(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* @SMB_HST_STS, align 4
  %14 = call i32 @inb_p(i32 %13)
  %15 = load i32, i32* @SMB_HST_CNTL1, align 4
  %16 = call i32 @inb_p(i32 %15)
  %17 = load i32, i32* @SMB_HST_CNTL2, align 4
  %18 = call i32 @inb_p(i32 %17)
  %19 = load i32, i32* @SMB_HST_CMD, align 4
  %20 = call i32 @inb_p(i32 %19)
  %21 = load i32, i32* @SMB_HST_ADD, align 4
  %22 = call i32 @inb_p(i32 %21)
  %23 = load i32, i32* @SMB_HST_DAT0, align 4
  %24 = call i32 @inb_p(i32 %23)
  %25 = load i32, i32* @SMB_HST_DAT1, align 4
  %26 = call i32 @inb_p(i32 %25)
  %27 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18, i32 %20, i32 %22, i32 %24, i32 %26)
  %28 = load i32, i32* @SMB_HST_STS, align 4
  %29 = call i32 @inb_p(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @HST_STS_BAD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %2
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @HST_STS_BAD, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SMB_HST_STS, align 4
  %42 = call i32 @outb_p(i32 %40, i32 %41)
  %43 = load i32, i32* @SMB_HST_STS, align 4
  %44 = call i32 @inb_p(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @HST_STS_BAD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %156

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i32, i32* @SMB_HST_CNTL2, align 4
  %55 = call i32 @inb_p(i32 %54)
  %56 = load i32, i32* @HST_CNTL2_START, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SMB_HST_CNTL2, align 4
  %59 = call i32 @outb_p(i32 %57, i32 %58)
  %60 = load i32, i32* @ALI1563_MAX_TIMEOUT, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %73, %53
  %62 = call i32 @msleep(i32 1)
  br label %63

63:                                               ; preds = %61
  %64 = load i32, i32* @SMB_HST_STS, align 4
  %65 = call i32 @inb_p(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @HST_STS_BUSY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %69, %63
  %74 = phi i1 [ false, %63 ], [ %72, %69 ]
  br i1 %74, label %61, label %75

75:                                               ; preds = %73
  %76 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* @SMB_HST_STS, align 4
  %79 = call i32 @inb_p(i32 %78)
  %80 = load i32, i32* @SMB_HST_CNTL1, align 4
  %81 = call i32 @inb_p(i32 %80)
  %82 = load i32, i32* @SMB_HST_CNTL2, align 4
  %83 = call i32 @inb_p(i32 %82)
  %84 = load i32, i32* @SMB_HST_CMD, align 4
  %85 = call i32 @inb_p(i32 %84)
  %86 = load i32, i32* @SMB_HST_ADD, align 4
  %87 = call i32 @inb_p(i32 %86)
  %88 = load i32, i32* @SMB_HST_DAT0, align 4
  %89 = call i32 @inb_p(i32 %88)
  %90 = load i32, i32* @SMB_HST_DAT1, align 4
  %91 = call i32 @inb_p(i32 %90)
  %92 = call i32 @dev_dbg(i32* %77, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %81, i32 %83, i32 %85, i32 %87, i32 %89, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %75
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @HST_STS_BAD, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %156

101:                                              ; preds = %95, %75
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %101
  %105 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @HST_CNTL2_KILL, align 4
  %109 = load i32, i32* @SMB_HST_CNTL2, align 4
  %110 = call i32 @outb_p(i32 %108, i32 %109)
  %111 = load i32, i32* @SMB_HST_STS, align 4
  %112 = call i32 @inb_p(i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* @ETIMEDOUT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %104, %101
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @HST_STS_DEVERR, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @HST_CNTL2_QUICK, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %125, i32 0, i32 0
  %127 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i32, i32* @ENXIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %128, %115
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @HST_STS_BUSERR, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %138 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %137, i32 0, i32 0
  %139 = call i32 @dev_err(i32* %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i32, i32* @HST_CNTL1_TIMEOUT, align 4
  %141 = load i32, i32* @SMB_HST_CNTL1, align 4
  %142 = call i32 @outb_p(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %136, %131
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @HST_STS_FAIL, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %149, i32 0, i32 0
  %151 = call i32 @dev_err(i32* %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %152 = load i32, i32* @SMB_HST_CNTL2, align 4
  %153 = call i32 @outb_p(i32 0, i32 %152)
  br label %154

154:                                              ; preds = %148, %143
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %100, %49
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
