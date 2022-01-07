; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_run_rsa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_run_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@MISC_CFG_RSA_SIGNATURE = common dso_local global i32 0, align 4
@KEY_SIZE = common dso_local global i32 0, align 4
@MISC_CFG_RSA_CMD = common dso_local global i32 0, align 4
@RSA_CMD_INIT = common dso_local global i32 0, align 4
@MISC_CFG_FW_CTRL = common dso_local global i32 0, align 4
@MISC_CFG_FW_CTRL_RSA_STATUS_SMASK = common dso_local global i32 0, align 4
@MISC_CFG_FW_CTRL_RSA_STATUS_SHIFT = common dso_local global i32 0, align 4
@RSA_STATUS_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s security engine not idle - giving up\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@RSA_CMD_START = common dso_local global i32 0, align 4
@RSA_ENGINE_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"%s firmware security bad idle state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RSA_STATUS_DONE = common dso_local global i32 0, align 4
@RSA_STATUS_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s firmware security time out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MISC_ERR_CLEAR = common dso_local global i32 0, align 4
@MISC_ERR_STATUS_MISC_FW_AUTH_FAILED_ERR_SMASK = common dso_local global i32 0, align 4
@MISC_ERR_STATUS_MISC_KEY_MISMATCH_ERR_SMASK = common dso_local global i32 0, align 4
@MISC_ERR_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"%s firmware authorization failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s firmware key mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i8*, i32*)* @run_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_rsa(%struct.hfi1_devdata* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %13 = load i32, i32* @MISC_CFG_RSA_SIGNATURE, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @KEY_SIZE, align 4
  %16 = call i32 @write_rsa_data(%struct.hfi1_devdata* %12, i32 %13, i32* %14, i32 %15)
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %18 = load i32, i32* @MISC_CFG_RSA_CMD, align 4
  %19 = load i32, i32* @RSA_CMD_INIT, align 4
  %20 = call i32 @write_csr(%struct.hfi1_devdata* %17, i32 %18, i32 %19)
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %22 = load i32, i32* @MISC_CFG_FW_CTRL, align 4
  %23 = call i32 @read_csr(%struct.hfi1_devdata* %21, i32 %22)
  %24 = load i32, i32* @MISC_CFG_FW_CTRL_RSA_STATUS_SMASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @MISC_CFG_FW_CTRL_RSA_STATUS_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @RSA_STATUS_IDLE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @dd_dev_err(%struct.hfi1_devdata* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %123

37:                                               ; preds = %3
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %39 = load i32, i32* @MISC_CFG_RSA_CMD, align 4
  %40 = load i32, i32* @RSA_CMD_START, align 4
  %41 = call i32 @write_csr(%struct.hfi1_devdata* %38, i32 %39, i32 %40)
  %42 = load i32, i32* @RSA_ENGINE_TIMEOUT, align 4
  %43 = call i64 @msecs_to_jiffies(i32 %42)
  %44 = load i64, i64* @jiffies, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %37, %88
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %48 = load i32, i32* @MISC_CFG_FW_CTRL, align 4
  %49 = call i32 @read_csr(%struct.hfi1_devdata* %47, i32 %48)
  %50 = load i32, i32* @MISC_CFG_FW_CTRL_RSA_STATUS_SMASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @MISC_CFG_FW_CTRL_RSA_STATUS_SHIFT, align 4
  %53 = ashr i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @RSA_STATUS_IDLE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @dd_dev_err(%struct.hfi1_devdata* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %90

63:                                               ; preds = %46
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @RSA_STATUS_DONE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %90

68:                                               ; preds = %63
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @RSA_STATUS_FAILED, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %90

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* @jiffies, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @time_after(i64 %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @dd_dev_err(%struct.hfi1_devdata* %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* @ETIMEDOUT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  br label %90

88:                                               ; preds = %77
  %89 = call i32 @msleep(i32 20)
  br label %46

90:                                               ; preds = %82, %72, %67, %57
  %91 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %92 = load i32, i32* @MISC_ERR_CLEAR, align 4
  %93 = load i32, i32* @MISC_ERR_STATUS_MISC_FW_AUTH_FAILED_ERR_SMASK, align 4
  %94 = load i32, i32* @MISC_ERR_STATUS_MISC_KEY_MISMATCH_ERR_SMASK, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @write_csr(%struct.hfi1_devdata* %91, i32 %92, i32 %95)
  %97 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %98 = load i32, i32* @MISC_ERR_STATUS, align 4
  %99 = call i32 @read_csr(%struct.hfi1_devdata* %97, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %90
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @MISC_ERR_STATUS_MISC_FW_AUTH_FAILED_ERR_SMASK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @dd_dev_warn(%struct.hfi1_devdata* %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @MISC_ERR_STATUS_MISC_KEY_MISMATCH_ERR_SMASK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @dd_dev_warn(%struct.hfi1_devdata* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %116, %111
  br label %121

121:                                              ; preds = %120, %90
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %31
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @write_rsa_data(%struct.hfi1_devdata*, i32, i32*, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i8*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dd_dev_warn(%struct.hfi1_devdata*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
