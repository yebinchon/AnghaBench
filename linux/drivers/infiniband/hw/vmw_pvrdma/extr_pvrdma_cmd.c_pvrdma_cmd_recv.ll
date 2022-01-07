; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cmd.c_pvrdma_cmd_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cmd.c_pvrdma_cmd_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_dev = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%union.pvrdma_cmd_resp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"receive response from device\0A\00", align 1
@PVRDMA_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"completion timeout or interrupted\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unknown response %#x expected %#x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvrdma_dev*, %union.pvrdma_cmd_resp*, i32)* @pvrdma_cmd_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvrdma_cmd_recv(%struct.pvrdma_dev* %0, %union.pvrdma_cmd_resp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvrdma_dev*, align 8
  %6 = alloca %union.pvrdma_cmd_resp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pvrdma_dev* %0, %struct.pvrdma_dev** %5, align 8
  store %union.pvrdma_cmd_resp* %1, %union.pvrdma_cmd_resp** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %10 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %14, i32 0, i32 3
  %16 = load i32, i32* @PVRDMA_CMD_TIMEOUT, align 4
  %17 = call i32 @msecs_to_jiffies(i32 %16)
  %18 = call i32 @wait_for_completion_interruptible_timeout(i32* %15, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @ERESTARTSYS, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21, %3
  %27 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %28 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 (i32*, i8*, ...) @dev_warn(i32* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %66

34:                                               ; preds = %21
  %35 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %36 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %union.pvrdma_cmd_resp*, %union.pvrdma_cmd_resp** %6, align 8
  %39 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %40 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(%union.pvrdma_cmd_resp* %38, i32 %41, i32 4)
  %43 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %44 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %union.pvrdma_cmd_resp*, %union.pvrdma_cmd_resp** %6, align 8
  %47 = bitcast %union.pvrdma_cmd_resp* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %34
  %53 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %54 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %union.pvrdma_cmd_resp*, %union.pvrdma_cmd_resp** %6, align 8
  %58 = bitcast %union.pvrdma_cmd_resp* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32*, i8*, ...) @dev_warn(i32* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* @EFAULT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %52, %26
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(%union.pvrdma_cmd_resp*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
