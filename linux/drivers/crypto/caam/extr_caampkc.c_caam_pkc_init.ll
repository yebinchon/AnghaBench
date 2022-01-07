; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_pkc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_pkc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.device = type { i32 }
%struct.caam_drv_private = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@init_done = common dso_local global i32 0, align 4
@CHA_ID_LS_PK_MASK = common dso_local global i32 0, align 4
@CHA_ID_LS_PK_SHIFT = common dso_local global i32 0, align 4
@CHA_VER_NUM_MASK = common dso_local global i32 0, align 4
@CAAM_RSA_MAX_INPUT_SIZE = common dso_local global i64 0, align 8
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@zero_buffer = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@caam_rsa = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s alg registration failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"caam pkc algorithms registered in /proc/crypto\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caam_pkc_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.caam_drv_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.caam_drv_private* @dev_get_drvdata(%struct.device* %7)
  store %struct.caam_drv_private* %8, %struct.caam_drv_private** %4, align 8
  store i32 0, i32* @init_done, align 4
  %9 = load %struct.caam_drv_private*, %struct.caam_drv_private** %4, align 8
  %10 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.caam_drv_private*, %struct.caam_drv_private** %4, align 8
  %15 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = call i32 @rd_reg32(i32* %18)
  %20 = load i32, i32* @CHA_ID_LS_PK_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @CHA_ID_LS_PK_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %5, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.caam_drv_private*, %struct.caam_drv_private** %4, align 8
  %26 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = call i32 @rd_reg32(i32* %29)
  %31 = load i32, i32* @CHA_VER_NUM_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %24, %13
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %64

37:                                               ; preds = %33
  %38 = load i64, i64* @CAAM_RSA_MAX_INPUT_SIZE, align 8
  %39 = sub nsw i64 %38, 1
  %40 = load i32, i32* @GFP_DMA, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @kzalloc(i64 %39, i32 %42)
  store i32 %43, i32* @zero_buffer, align 4
  %44 = load i32, i32* @zero_buffer, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %64

49:                                               ; preds = %37
  %50 = call i32 @crypto_register_akcipher(%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @caam_rsa, i32 0, i32 1))
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @zero_buffer, align 4
  %55 = call i32 @kfree(i32 %54)
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @caam_rsa, i32 0, i32 1, i32 0, i32 0), align 4
  %58 = call i32 @dev_warn(%struct.device* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %62

59:                                               ; preds = %49
  store i32 1, i32* @init_done, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @caam_rsa, i32 0, i32 0), align 4
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = call i32 @dev_info(%struct.device* %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %46, %36
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.caam_drv_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rd_reg32(i32*) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @crypto_register_akcipher(%struct.TYPE_11__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
