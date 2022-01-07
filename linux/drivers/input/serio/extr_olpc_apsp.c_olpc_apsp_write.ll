; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_olpc_apsp.c_olpc_apsp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_olpc_apsp.c_olpc_apsp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.olpc_apsp* }
%struct.olpc_apsp = type { i64, i32, %struct.serio* }

@TOUCHPAD_PORT = common dso_local global i8 0, align 1
@PORT_SHIFT = common dso_local global i8 0, align 1
@KEYBOARD_PORT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [33 x i8] c"olpc_apsp_write which=%x val=%x\0A\00", align 1
@COMMAND_FIFO_STATUS = common dso_local global i64 0, align 8
@CMD_CNTR_MASK = common dso_local global i8 0, align 1
@MAX_PENDING_CMDS = common dso_local global i8 0, align 1
@SECURE_PROCESSOR_COMMAND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"olpc_apsp_write timeout, status=%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @olpc_apsp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_apsp_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.olpc_apsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load %struct.serio*, %struct.serio** %4, align 8
  %11 = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 0
  %12 = load %struct.olpc_apsp*, %struct.olpc_apsp** %11, align 8
  store %struct.olpc_apsp* %12, %struct.olpc_apsp** %6, align 8
  store i8 0, i8* %8, align 1
  %13 = load %struct.serio*, %struct.serio** %4, align 8
  %14 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %15 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %14, i32 0, i32 2
  %16 = load %struct.serio*, %struct.serio** %15, align 8
  %17 = icmp eq %struct.serio* %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i8, i8* @TOUCHPAD_PORT, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @PORT_SHIFT, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 %20, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %8, align 1
  br label %32

25:                                               ; preds = %2
  %26 = load i8, i8* @KEYBOARD_PORT, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @PORT_SHIFT, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %27, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %8, align 1
  br label %32

32:                                               ; preds = %25, %18
  %33 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %34 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i8, i8* %8, align 1
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = call i32 (i32, i8*, i8, ...) @dev_dbg(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 zeroext %36, i32 %38)
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %73, %32
  %41 = load i32, i32* %7, align 4
  %42 = icmp ult i32 %41, 50
  br i1 %42, label %43, label %76

43:                                               ; preds = %40
  %44 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %45 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @COMMAND_FIFO_STATUS, align 8
  %48 = add nsw i64 %46, %47
  %49 = call zeroext i8 @readl(i64 %48)
  store i8 %49, i8* %9, align 1
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @CMD_CNTR_MASK, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = load i8, i8* @MAX_PENDING_CMDS, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %43
  %59 = load i8, i8* %8, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %5, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %60, %62
  %64 = trunc i32 %63 to i8
  %65 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %66 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SECURE_PROCESSOR_COMMAND, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i8 zeroext %64, i64 %69)
  store i32 0, i32* %3, align 4
  br label %89

71:                                               ; preds = %43
  %72 = call i32 @mdelay(i32 1)
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %7, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %40

76:                                               ; preds = %40
  %77 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %78 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %81 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @COMMAND_FIFO_STATUS, align 8
  %84 = add nsw i64 %82, %83
  %85 = call zeroext i8 @readl(i64 %84)
  %86 = call i32 (i32, i8*, i8, ...) @dev_dbg(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %85)
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %76, %58
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, ...) #1

declare dso_local zeroext i8 @readl(i64) #1

declare dso_local i32 @writel(i8 zeroext, i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
