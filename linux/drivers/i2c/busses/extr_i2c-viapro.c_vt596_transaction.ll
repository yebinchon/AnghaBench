; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viapro.c_vt596_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viapro.c_vt596_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Transaction (pre)\00", align 1
@SMBHSTSTS = common dso_local global i32 0, align 4
@vt596_adapter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"SMBus busy (0x%02x). Resetting...\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SMBus reset failed! (0x%02x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SMBHSTCNT = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"SMBus timeout!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Transaction failed (0x%02x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SMBus collision!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"No response\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Transaction (post)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vt596_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt596_transaction(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @vt596_dump_regs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @SMBHSTSTS, align 4
  %10 = call i32 @inb_p(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = and i32 %10, 31
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SMBHSTSTS, align 4
  %18 = call i32 @outb_p(i32 %16, i32 %17)
  %19 = load i32, i32* @SMBHSTSTS, align 4
  %20 = call i32 @inb_p(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = and i32 %20, 31
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* %3, align 4
  %31 = or i32 64, %30
  %32 = load i32, i32* @SMBHSTCNT, align 4
  %33 = call i32 @outb_p(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %47, %29
  %35 = call i32 @msleep(i32 1)
  %36 = load i32, i32* @SMBHSTSTS, align 4
  %37 = call i32 @inb_p(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @MAX_TIMEOUT, align 4
  %46 = icmp slt i32 %44, %45
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i1 [ false, %38 ], [ %46, %42 ]
  br i1 %48, label %34, label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @MAX_TIMEOUT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 16
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %4, align 4
  %76 = and i32 %75, 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @ENXIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  %81 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, 31
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @SMBHSTSTS, align 4
  %89 = call i32 @outb_p(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @vt596_dump_regs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %23
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @vt596_dump_regs(i8*, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
