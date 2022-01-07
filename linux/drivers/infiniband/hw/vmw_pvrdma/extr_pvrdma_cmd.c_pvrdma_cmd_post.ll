; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cmd.c_pvrdma_cmd_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cmd.c_pvrdma_cmd_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_dev = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%union.pvrdma_cmd_req = type { i32 }
%union.pvrdma_cmd_resp = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"post request to device\0A\00", align 1
@PVRDMA_REG_REQUEST = common dso_local global i32 0, align 4
@PVRDMA_REG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to write request error reg: %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %0, %union.pvrdma_cmd_req* %1, %union.pvrdma_cmd_resp* %2, i32 %3) #0 {
  %5 = alloca %struct.pvrdma_dev*, align 8
  %6 = alloca %union.pvrdma_cmd_req*, align 8
  %7 = alloca %union.pvrdma_cmd_resp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pvrdma_dev* %0, %struct.pvrdma_dev** %5, align 8
  store %union.pvrdma_cmd_req* %1, %union.pvrdma_cmd_req** %6, align 8
  store %union.pvrdma_cmd_resp* %2, %union.pvrdma_cmd_resp** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %11 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_dbg(i32* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %16 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %15, i32 0, i32 0
  %17 = call i32 @down(i32* %16)
  %18 = call i32 @BUILD_BUG_ON(i32 0)
  %19 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %19, i32 0, i32 3
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %union.pvrdma_cmd_req*, %union.pvrdma_cmd_req** %6, align 8
  %26 = call i32 @memcpy(i32 %24, %union.pvrdma_cmd_req* %25, i32 4)
  %27 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %28 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %27, i32 0, i32 3
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %31 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %30, i32 0, i32 2
  %32 = call i32 @init_completion(i32* %31)
  %33 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %34 = load i32, i32* @PVRDMA_REG_REQUEST, align 4
  %35 = call i32 @pvrdma_write_reg(%struct.pvrdma_dev* %33, i32 %34, i32 0)
  %36 = call i32 (...) @mb()
  %37 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %38 = load i32, i32* @PVRDMA_REG_ERR, align 4
  %39 = call i32 @pvrdma_read_reg(%struct.pvrdma_dev* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %4
  %43 = load %union.pvrdma_cmd_resp*, %union.pvrdma_cmd_resp** %7, align 8
  %44 = icmp ne %union.pvrdma_cmd_resp* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %47 = load %union.pvrdma_cmd_resp*, %union.pvrdma_cmd_resp** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @pvrdma_cmd_recv(%struct.pvrdma_dev* %46, %union.pvrdma_cmd_resp* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45, %42
  br label %60

51:                                               ; preds = %4
  %52 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %53 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @dev_warn(i32* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %51, %50
  %61 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %62 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %61, i32 0, i32 0
  %63 = call i32 @up(i32* %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32, %union.pvrdma_cmd_req*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pvrdma_write_reg(%struct.pvrdma_dev*, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @pvrdma_read_reg(%struct.pvrdma_dev*, i32) #1

declare dso_local i32 @pvrdma_cmd_recv(%struct.pvrdma_dev*, %union.pvrdma_cmd_resp*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
