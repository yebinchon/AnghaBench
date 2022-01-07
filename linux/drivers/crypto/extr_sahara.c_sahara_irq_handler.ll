; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i32, i32 }

@SAHARA_REG_STATUS = common dso_local global i32 0, align 4
@SAHARA_REG_ERRSTATUS = common dso_local global i32 0, align 4
@SAHARA_CMD_CLEAR_INT = common dso_local global i32 0, align 4
@SAHARA_CMD_CLEAR_ERR = common dso_local global i32 0, align 4
@SAHARA_REG_CMD = common dso_local global i32 0, align 4
@SAHARA_STATE_BUSY = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@SAHARA_STATE_COMPLETE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sahara_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sahara_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sahara_dev*
  store %struct.sahara_dev* %10, %struct.sahara_dev** %6, align 8
  %11 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %12 = load i32, i32* @SAHARA_REG_STATUS, align 4
  %13 = call i32 @sahara_read(%struct.sahara_dev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %15 = load i32, i32* @SAHARA_REG_ERRSTATUS, align 4
  %16 = call i32 @sahara_read(%struct.sahara_dev* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %18 = load i32, i32* @SAHARA_CMD_CLEAR_INT, align 4
  %19 = load i32, i32* @SAHARA_CMD_CLEAR_ERR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SAHARA_REG_CMD, align 4
  %22 = call i32 @sahara_write(%struct.sahara_dev* %17, i32 %20, i32 %21)
  %23 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @sahara_decode_status(%struct.sahara_dev* %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @SAHARA_STATUS_GET_STATE(i32 %26)
  %28 = load i64, i64* @SAHARA_STATE_BUSY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %54

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @SAHARA_STATUS_GET_STATE(i32 %33)
  %35 = load i64, i64* @SAHARA_STATE_COMPLETE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %39 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %48

40:                                               ; preds = %32
  %41 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @sahara_decode_error(%struct.sahara_dev* %41, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %47 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %40, %37
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %51 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %50, i32 0, i32 0
  %52 = call i32 @complete(i32* %51)
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %30
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @sahara_read(%struct.sahara_dev*, i32) #1

declare dso_local i32 @sahara_write(%struct.sahara_dev*, i32, i32) #1

declare dso_local i32 @sahara_decode_status(%struct.sahara_dev*, i32) #1

declare dso_local i64 @SAHARA_STATUS_GET_STATE(i32) #1

declare dso_local i32 @sahara_decode_error(%struct.sahara_dev*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
