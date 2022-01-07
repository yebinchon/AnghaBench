; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_rockchip-mailbox.c_rockchip_mbox_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_rockchip-mailbox.c_rockchip_mbox_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rockchip_mbox = type { i64, i64, %struct.rockchip_mbox_chan*, %struct.TYPE_4__ }
%struct.rockchip_mbox_chan = type { i64, %struct.rockchip_mbox_msg* }
%struct.rockchip_mbox_msg = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Transmit size over buf size(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Chan[%d]: A2B message, cmd 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*, i8*)* @rockchip_mbox_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_mbox_send_data(%struct.mbox_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rockchip_mbox*, align 8
  %7 = alloca %struct.rockchip_mbox_msg*, align 8
  %8 = alloca %struct.rockchip_mbox_chan*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %10 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.rockchip_mbox* @dev_get_drvdata(i32 %13)
  store %struct.rockchip_mbox* %14, %struct.rockchip_mbox** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.rockchip_mbox_msg*
  store %struct.rockchip_mbox_msg* %16, %struct.rockchip_mbox_msg** %7, align 8
  %17 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %6, align 8
  %18 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %17, i32 0, i32 2
  %19 = load %struct.rockchip_mbox_chan*, %struct.rockchip_mbox_chan** %18, align 8
  store %struct.rockchip_mbox_chan* %19, %struct.rockchip_mbox_chan** %8, align 8
  %20 = load %struct.rockchip_mbox_msg*, %struct.rockchip_mbox_msg** %7, align 8
  %21 = icmp ne %struct.rockchip_mbox_msg* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %89

25:                                               ; preds = %2
  %26 = load %struct.rockchip_mbox_msg*, %struct.rockchip_mbox_msg** %7, align 8
  %27 = getelementptr inbounds %struct.rockchip_mbox_msg, %struct.rockchip_mbox_msg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %6, align 8
  %30 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %6, align 8
  %35 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %6, align 8
  %39 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %89

44:                                               ; preds = %25
  %45 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %6, align 8
  %46 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.rockchip_mbox_chan*, %struct.rockchip_mbox_chan** %8, align 8
  %50 = getelementptr inbounds %struct.rockchip_mbox_chan, %struct.rockchip_mbox_chan* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.rockchip_mbox_msg*, %struct.rockchip_mbox_msg** %7, align 8
  %53 = getelementptr inbounds %struct.rockchip_mbox_msg, %struct.rockchip_mbox_msg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %54)
  %56 = load %struct.rockchip_mbox_msg*, %struct.rockchip_mbox_msg** %7, align 8
  %57 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %6, align 8
  %58 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %57, i32 0, i32 2
  %59 = load %struct.rockchip_mbox_chan*, %struct.rockchip_mbox_chan** %58, align 8
  %60 = load %struct.rockchip_mbox_chan*, %struct.rockchip_mbox_chan** %8, align 8
  %61 = getelementptr inbounds %struct.rockchip_mbox_chan, %struct.rockchip_mbox_chan* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.rockchip_mbox_chan, %struct.rockchip_mbox_chan* %59, i64 %62
  %64 = getelementptr inbounds %struct.rockchip_mbox_chan, %struct.rockchip_mbox_chan* %63, i32 0, i32 1
  store %struct.rockchip_mbox_msg* %56, %struct.rockchip_mbox_msg** %64, align 8
  %65 = load %struct.rockchip_mbox_msg*, %struct.rockchip_mbox_msg** %7, align 8
  %66 = getelementptr inbounds %struct.rockchip_mbox_msg, %struct.rockchip_mbox_msg* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %6, align 8
  %69 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.rockchip_mbox_chan*, %struct.rockchip_mbox_chan** %8, align 8
  %72 = getelementptr inbounds %struct.rockchip_mbox_chan, %struct.rockchip_mbox_chan* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @MAILBOX_A2B_CMD(i64 %73)
  %75 = add nsw i64 %70, %74
  %76 = call i32 @writel_relaxed(i64 %67, i64 %75)
  %77 = load %struct.rockchip_mbox_msg*, %struct.rockchip_mbox_msg** %7, align 8
  %78 = getelementptr inbounds %struct.rockchip_mbox_msg, %struct.rockchip_mbox_msg* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.rockchip_mbox*, %struct.rockchip_mbox** %6, align 8
  %81 = getelementptr inbounds %struct.rockchip_mbox, %struct.rockchip_mbox* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.rockchip_mbox_chan*, %struct.rockchip_mbox_chan** %8, align 8
  %84 = getelementptr inbounds %struct.rockchip_mbox_chan, %struct.rockchip_mbox_chan* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @MAILBOX_A2B_DAT(i64 %85)
  %87 = add nsw i64 %82, %86
  %88 = call i32 @writel_relaxed(i64 %79, i64 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %44, %33, %22
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.rockchip_mbox* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i64 @MAILBOX_A2B_CMD(i64) #1

declare dso_local i64 @MAILBOX_A2B_DAT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
