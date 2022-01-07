; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_mailbox_send_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_mailbox_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.brcm_message = type { i32 }

@iproc_priv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SPU_MB_RETRY_MAX = common dso_local global i32 0, align 4
@MBOX_SLEEP_MIN = common dso_local global i32 0, align 4
@MBOX_SLEEP_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"message error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcm_message*, i32, i64)* @mailbox_send_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mailbox_send_message(%struct.brcm_message* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcm_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  store %struct.brcm_message* %0, %struct.brcm_message** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 3), align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %10, align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %18 = call i32 @mbox_send_message(i32 %16, %struct.brcm_message* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %35, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ENOBUFS, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SPU_MB_RETRY_MAX, align 4
  %32 = icmp slt i32 %30, %31
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ false, %24 ], [ %32, %29 ]
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @MBOX_SLEEP_MIN, align 4
  %39 = load i32, i32* @MBOX_SLEEP_MAX, align 4
  %40 = call i32 @usleep_range(i32 %38, i32 %39)
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %46 = call i32 @mbox_send_message(i32 %44, %struct.brcm_message* %45)
  store i32 %46, i32* %8, align 4
  %47 = call i32 @atomic_inc(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 2))
  br label %24

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call i32 @atomic_inc(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 1))
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %76

55:                                               ; preds = %49
  %56 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %57 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load %struct.device*, %struct.device** %10, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %55
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @mbox_client_txdone(i32 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %68, %52
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @mbox_send_message(i32, %struct.brcm_message*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mbox_client_txdone(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
