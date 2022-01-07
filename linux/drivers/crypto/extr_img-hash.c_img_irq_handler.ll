; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_hash_dev = type { i32, i32, i32 }

@CR_INTSTAT = common dso_local global i32 0, align 4
@CR_INTCLEAR = common dso_local global i32 0, align 4
@CR_INT_NEW_RESULTS_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"IRQ CR_INT_NEW_RESULTS_SET\0A\00", align 1
@DRIVER_FLAGS_BUSY = common dso_local global i32 0, align 4
@DRIVER_FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@DRIVER_FLAGS_CPU = common dso_local global i32 0, align 4
@DRIVER_FLAGS_DMA_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"HASH interrupt when no active requests.\0A\00", align 1
@CR_INT_RESULTS_AVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"IRQ triggered before the hash had completed\0A\00", align 1
@CR_INT_RESULT_READ_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Attempt to read from an empty result queue\0A\00", align 1
@CR_INT_MESSAGE_WRITE_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Data written before the hardware was configured\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @img_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.img_hash_dev*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.img_hash_dev*
  store %struct.img_hash_dev* %8, %struct.img_hash_dev** %5, align 8
  %9 = load %struct.img_hash_dev*, %struct.img_hash_dev** %5, align 8
  %10 = load i32, i32* @CR_INTSTAT, align 4
  %11 = call i32 @img_hash_read(%struct.img_hash_dev* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.img_hash_dev*, %struct.img_hash_dev** %5, align 8
  %13 = load i32, i32* @CR_INTCLEAR, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @img_hash_write(%struct.img_hash_dev* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @CR_INT_NEW_RESULTS_SET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %2
  %21 = load %struct.img_hash_dev*, %struct.img_hash_dev** %5, align 8
  %22 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @DRIVER_FLAGS_BUSY, align 4
  %26 = load %struct.img_hash_dev*, %struct.img_hash_dev** %5, align 8
  %27 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %20
  %32 = load i32, i32* @DRIVER_FLAGS_OUTPUT_READY, align 4
  %33 = load %struct.img_hash_dev*, %struct.img_hash_dev** %5, align 8
  %34 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @DRIVER_FLAGS_CPU, align 4
  %38 = load %struct.img_hash_dev*, %struct.img_hash_dev** %5, align 8
  %39 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @DRIVER_FLAGS_DMA_READY, align 4
  %45 = load %struct.img_hash_dev*, %struct.img_hash_dev** %5, align 8
  %46 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %31
  %50 = load %struct.img_hash_dev*, %struct.img_hash_dev** %5, align 8
  %51 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %50, i32 0, i32 2
  %52 = call i32 @tasklet_schedule(i32* %51)
  br label %58

53:                                               ; preds = %20
  %54 = load %struct.img_hash_dev*, %struct.img_hash_dev** %5, align 8
  %55 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_warn(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %49
  br label %92

59:                                               ; preds = %2
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @CR_INT_RESULTS_AVAILABLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.img_hash_dev*, %struct.img_hash_dev** %5, align 8
  %66 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_warn(i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %91

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @CR_INT_RESULT_READ_ERR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.img_hash_dev*, %struct.img_hash_dev** %5, align 8
  %76 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_warn(i32 %77, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %90

79:                                               ; preds = %69
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @CR_INT_MESSAGE_WRITE_ERROR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.img_hash_dev*, %struct.img_hash_dev** %5, align 8
  %86 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_warn(i32 %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %79
  br label %90

90:                                               ; preds = %89, %74
  br label %91

91:                                               ; preds = %90, %64
  br label %92

92:                                               ; preds = %91, %58
  %93 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %93
}

declare dso_local i32 @img_hash_read(%struct.img_hash_dev*, i32) #1

declare dso_local i32 @img_hash_write(%struct.img_hash_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
