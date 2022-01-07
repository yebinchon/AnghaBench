; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_mb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_mb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, %struct.TYPE_3__, %struct.mbox_client }
%struct.TYPE_3__ = type { i32 }
%struct.mbox_client = type { i32, i32, i32*, i32, i64, %struct.device* }
%struct.device = type { i32 }

@iproc_priv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@spu_rx_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Mbox channel %d request failed with err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @spu_mb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_mb_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mbox_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.mbox_client* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 2), %struct.mbox_client** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 1, i32 0), align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32** @devm_kcalloc(%struct.device* %7, i32 %8, i32 8, i32 %9)
  store i32** %10, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), align 8
  %11 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %96

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load %struct.mbox_client*, %struct.mbox_client** %4, align 8
  %19 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %18, i32 0, i32 5
  store %struct.device* %17, %struct.device** %19, align 8
  %20 = load %struct.mbox_client*, %struct.mbox_client** %4, align 8
  %21 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.mbox_client*, %struct.mbox_client** %4, align 8
  %23 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.mbox_client*, %struct.mbox_client** %4, align 8
  %25 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @spu_rx_callback, align 4
  %27 = load %struct.mbox_client*, %struct.mbox_client** %4, align 8
  %28 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mbox_client*, %struct.mbox_client** %4, align 8
  %30 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %67, %16
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 1, i32 0), align 8
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %31
  %36 = load %struct.mbox_client*, %struct.mbox_client** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32* @mbox_request_channel(%struct.mbox_client* %36, i32 %37)
  %39 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  store i32* %38, i32** %42, align 8
  %43 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @IS_ERR(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %35
  %51 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @PTR_ERR(i32* %55)
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  store i32* null, i32** %65, align 8
  br label %71

66:                                               ; preds = %35
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %31

70:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %96

71:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %91, %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 1, i32 0), align 8
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @mbox_free_channel(i32* %88)
  br label %90

90:                                               ; preds = %83, %76
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %72

94:                                               ; preds = %72
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %70, %13
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32** @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32* @mbox_request_channel(%struct.mbox_client*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i64 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @mbox_free_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
