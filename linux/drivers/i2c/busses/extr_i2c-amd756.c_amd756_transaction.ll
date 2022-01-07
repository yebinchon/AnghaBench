; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd756.c_amd756_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd756.c_amd756_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Transaction (pre): GS=%04x, GE=%04x, ADD=%04x, DAT=%04x\0A\00", align 1
@SMB_GLOBAL_STATUS = common dso_local global i32 0, align 4
@SMB_GLOBAL_ENABLE = common dso_local global i32 0, align 4
@SMB_HOST_ADDRESS = common dso_local global i32 0, align 4
@SMB_HOST_DATA = common dso_local global i32 0, align 4
@GS_HST_STS = common dso_local global i32 0, align 4
@GS_SMB_STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"SMBus busy (%04x). Waiting...\0A\00", align 1
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Busy wait timeout (%04x)\0A\00", align 1
@GE_HOST_STC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Completion timeout!\0A\00", align 1
@GS_PRERR_STS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"SMBus Protocol error (no response)!\0A\00", align 1
@GS_COL_STS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"SMBus collision!\0A\00", align 1
@GS_TO_STS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"SMBus protocol timeout!\0A\00", align 1
@GS_HCYC_STS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"SMBus protocol success!\0A\00", align 1
@GS_CLEAR_STS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"Transaction (post): GS=%04x, GE=%04x, ADD=%04x, DAT=%04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Sending abort\0A\00", align 1
@GE_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @amd756_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd756_transaction(%struct.i2c_adapter* %0) #0 {
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
  %9 = load i32, i32* @SMB_GLOBAL_STATUS, align 4
  %10 = call i32 @inw_p(i32 %9)
  %11 = load i32, i32* @SMB_GLOBAL_ENABLE, align 4
  %12 = call i32 @inw_p(i32 %11)
  %13 = load i32, i32* @SMB_HOST_ADDRESS, align 4
  %14 = call i32 @inw_p(i32 %13)
  %15 = load i32, i32* @SMB_HOST_DATA, align 4
  %16 = call i32 @inb_p(i32 %15)
  %17 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %8, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i32 %14, i32 %16)
  %18 = load i32, i32* @SMB_GLOBAL_STATUS, align 4
  %19 = call i32 @inw_p(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @GS_HST_STS, align 4
  %21 = load i32, i32* @GS_SMB_STS, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %1
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %46, %25
  %31 = call i32 @msleep(i32 1)
  %32 = load i32, i32* @SMB_GLOBAL_STATUS, align 4
  %33 = call i32 @inw_p(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @GS_HST_STS, align 4
  %37 = load i32, i32* @GS_SMB_STS, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @MAX_TIMEOUT, align 4
  %45 = icmp slt i32 %42, %44
  br label %46

46:                                               ; preds = %41, %34
  %47 = phi i1 [ false, %34 ], [ %45, %41 ]
  br i1 %47, label %30, label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @MAX_TIMEOUT, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %147

57:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %1
  %59 = load i32, i32* @SMB_GLOBAL_ENABLE, align 4
  %60 = call i32 @inw(i32 %59)
  %61 = load i32, i32* @GE_HOST_STC, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SMB_GLOBAL_ENABLE, align 4
  %64 = call i32 @outw_p(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %79, %58
  %66 = call i32 @msleep(i32 1)
  %67 = load i32, i32* @SMB_GLOBAL_STATUS, align 4
  %68 = call i32 @inw_p(i32 %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @GS_HST_STS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @MAX_TIMEOUT, align 4
  %78 = icmp slt i32 %75, %77
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ false, %69 ], [ %78, %74 ]
  br i1 %80, label %65, label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @MAX_TIMEOUT, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %86, i32 0, i32 0
  %88 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %147

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @GS_PRERR_STS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @ENXIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  %97 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %97, i32 0, i32 0
  %99 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %94, %89
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @GS_COL_STS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  %108 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %108, i32 0, i32 0
  %110 = call i32 @dev_warn(i32* %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %111

111:                                              ; preds = %105, %100
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @GS_TO_STS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load i32, i32* @ETIMEDOUT, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  %119 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %119, i32 0, i32 0
  %121 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %122

122:                                              ; preds = %116, %111
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @GS_HCYC_STS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %128, i32 0, i32 0
  %130 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127, %122
  %132 = load i32, i32* @GS_CLEAR_STS, align 4
  %133 = load i32, i32* @SMB_GLOBAL_STATUS, align 4
  %134 = call i32 @outw_p(i32 %132, i32 %133)
  %135 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %135, i32 0, i32 0
  %137 = load i32, i32* @SMB_GLOBAL_STATUS, align 4
  %138 = call i32 @inw_p(i32 %137)
  %139 = load i32, i32* @SMB_GLOBAL_ENABLE, align 4
  %140 = call i32 @inw_p(i32 %139)
  %141 = load i32, i32* @SMB_HOST_ADDRESS, align 4
  %142 = call i32 @inw_p(i32 %141)
  %143 = load i32, i32* @SMB_HOST_DATA, align 4
  %144 = call i32 @inb_p(i32 %143)
  %145 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %136, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %138, i32 %140, i32 %142, i32 %144)
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %163

147:                                              ; preds = %85, %52
  %148 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %149 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %148, i32 0, i32 0
  %150 = call i32 @dev_warn(i32* %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %151 = load i32, i32* @SMB_GLOBAL_ENABLE, align 4
  %152 = call i32 @inw(i32 %151)
  %153 = load i32, i32* @GE_ABORT, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @SMB_GLOBAL_ENABLE, align 4
  %156 = call i32 @outw_p(i32 %154, i32 %155)
  %157 = call i32 @msleep(i32 100)
  %158 = load i32, i32* @GS_CLEAR_STS, align 4
  %159 = load i32, i32* @SMB_GLOBAL_STATUS, align 4
  %160 = call i32 @outw_p(i32 %158, i32 %159)
  %161 = load i32, i32* @EIO, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %147, %131
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @inw_p(i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @outw_p(i32, i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
