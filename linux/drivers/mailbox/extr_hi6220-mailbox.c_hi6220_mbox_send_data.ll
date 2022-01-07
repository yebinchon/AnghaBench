; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi6220-mailbox.c_hi6220_mbox_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi6220-mailbox.c_hi6220_mbox_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.hi6220_mbox_chan* }
%struct.hi6220_mbox_chan = type { i32, i32, i32, %struct.hi6220_mbox* }
%struct.hi6220_mbox = type { i32, i64, i64 }

@MBOX_TX = common dso_local global i32 0, align 4
@MBOX_STATE_TX = common dso_local global i32 0, align 4
@MBOX_ACK_IRQ = common dso_local global i32 0, align 4
@MBOX_ACK_AUTOMATIC = common dso_local global i32 0, align 4
@MBOX_MSG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*, i8*)* @hi6220_mbox_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6220_mbox_send_data(%struct.mbox_chan* %0, i8* %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hi6220_mbox_chan*, align 8
  %6 = alloca %struct.hi6220_mbox*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %11 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %10, i32 0, i32 0
  %12 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %11, align 8
  store %struct.hi6220_mbox_chan* %12, %struct.hi6220_mbox_chan** %5, align 8
  %13 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %5, align 8
  %14 = getelementptr inbounds %struct.hi6220_mbox_chan, %struct.hi6220_mbox_chan* %13, i32 0, i32 3
  %15 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %14, align 8
  store %struct.hi6220_mbox* %15, %struct.hi6220_mbox** %6, align 8
  %16 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %5, align 8
  %17 = getelementptr inbounds %struct.hi6220_mbox_chan, %struct.hi6220_mbox_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %8, align 8
  %21 = load i32, i32* @MBOX_TX, align 4
  %22 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %5, align 8
  %23 = getelementptr inbounds %struct.hi6220_mbox_chan, %struct.hi6220_mbox_chan* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MBOX_STATE_TX, align 4
  %27 = call i32 @mbox_set_state(%struct.hi6220_mbox* %24, i32 %25, i32 %26)
  %28 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %29 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MBOX_ACK_IRQ, align 4
  %36 = call i32 @mbox_set_mode(%struct.hi6220_mbox* %33, i32 %34, i32 %35)
  br label %42

37:                                               ; preds = %2
  %38 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MBOX_ACK_AUTOMATIC, align 4
  %41 = call i32 @mbox_set_mode(%struct.hi6220_mbox* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %64, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MBOX_MSG_LEN, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %54 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @MBOX_DATA_REG(i32 %56)
  %58 = add nsw i64 %55, %57
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = call i32 @writel(i32 %52, i64 %62)
  br label %64

64:                                               ; preds = %47
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %43

67:                                               ; preds = %43
  %68 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %5, align 8
  %69 = getelementptr inbounds %struct.hi6220_mbox_chan, %struct.hi6220_mbox_chan* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %73 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @DST_INT_RAW_REG(i32 %74)
  %76 = call i32 @writel(i32 %71, i64 %75)
  ret i32 0
}

declare dso_local i32 @mbox_set_state(%struct.hi6220_mbox*, i32, i32) #1

declare dso_local i32 @mbox_set_mode(%struct.hi6220_mbox*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MBOX_DATA_REG(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @DST_INT_RAW_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
